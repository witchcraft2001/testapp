// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/common/text_input_formatter/international_phone_formatter.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/services/user_service.dart';
import 'package:terralinkapp/data/use_cases/business_cards/get_business_card_by_id_use_case.dart';
import 'package:terralinkapp/data/use_cases/business_cards/save_business_card_use_case.dart';
import 'package:terralinkapp/domain/business_card_locale.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/error_message.dart';
import 'package:terralinkapp/presentation/widgets/tl_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/tl_select.dart';
import 'package:terralinkapp/presentation/widgets/tl_textfield.dart';
import 'business_cards_edit_cubit.dart';
import 'business_cards_edit_state.dart';

class BusinessCardsEditScreen extends StatelessWidget {
  final int id;

  const BusinessCardsEditScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TlAppBar(
        title: id == 0 ? S.current.titleCreateCard : S.current.titleEditCard,
      ),
      backgroundColor: context.appTheme?.appTheme.backgroundDashboardsForms,
      body: BlocProvider(
        create: (context) => BusinessCardsEditCubit(
          id,
          getIt<GetBusinessCardByIdUseCase>(),
          getIt<UserService>(),
          getIt<SaveBusinessCardUseCase>(),
          getIt<LogService>(),
        ),
        child: _getScreen(context),
      ),
    );
  }

  Widget _getScreen(BuildContext context) {
    return BlocConsumer<BusinessCardsEditCubit, BusinessCardsEditState>(
      listener: (context, state) {
        if (state is SuccessState) {
          Navigator.of(context).pop();
        }
      },
      builder: (context, state) {
        return _getWidgetByState(context, state);
      },
    );
  }

  Widget _getWidgetByState(BuildContext context, BusinessCardsEditState state) {
    return switch (state) {
      InitState() => _getInitState(context),
      LoadingState() => const TlProgressIndicator(),
      SuccessState() => const TlProgressIndicator(),
      ErrorState(message: var message) => ErrorMessage(
          message: message,
          button: TlButton(
            title: S.current.btnBack,
            type: AppBtnType.secondary,
            onPressed: Navigator.of(context).pop,
          ),
        ),
      EditState() => _getEditScreen(context, state),
    };
  }

  Widget _getInitState(BuildContext context) {
    BlocProvider.of<BusinessCardsEditCubit>(context).onInit();

    return const TlProgressIndicator();
  }

  Widget _getEditScreen(BuildContext context, EditState state) {
    final bloc = context.bloc<BusinessCardsEditCubit>();
    final formatters = List.of([InternationalPhoneFormatter()]);

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: TlSpaces.p24,
              child: Column(
                children: [
                  TlSelect<BusinessCardLocale>(
                    title: S.current.selectLocation,
                    items: BusinessCardLocale.values,
                    selected: state.locale,
                    onChanged: (value) {
                      if (value != null) {
                        bloc.onLocaleChanged(value);
                      }
                    },
                  ),
                  TlTextField(
                    label: S.current.firstname,
                    text: state.firstname,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.requiredToFill,
                    onChanged: (value) => bloc.onFirstnameChanged(value),
                  ),
                  TlTextField(
                    label: S.current.lastname,
                    text: state.lastname,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.requiredToFill,
                    onChanged: (value) => bloc.onLastnameChanged(value),
                  ),
                  TlTextField(
                    label: S.current.company,
                    text: state.company,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) => bloc.onCompanyChanged(value),
                  ),
                  TlTextField(
                    label: S.current.position,
                    text: state.position,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) => bloc.onPositionChanged(value),
                  ),
                  TlTextField(
                    label: S.current.mobilePhone,
                    text: state.phone,
                    padding: TlSpaces.pt8,
                    hint: '+7 (XXX) XXX-XX-XX',
                    keyboardType: const TextInputType.numberWithOptions(
                      signed: false,
                      decimal: false,
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: (value) => bloc.onPhoneChanged(value),
                    inputFormatters: formatters,
                  ),
                  TlTextField(
                    label: S.current.email,
                    text: state.email,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.requiredToFill,
                    onChanged: (value) => bloc.onEmailChanged(value),
                  ),
                ],
              ),
            ),
          ),
        ),
        TlButton(
          title: S.current.btnSave,
          isEnabled: state.isSaveEnabled,
          padding: const EdgeInsets.only(
            bottom: TlSpaces.sp24,
            left: TlSpaces.sp24,
            right: TlSpaces.sp24,
          ),
          onPressed: bloc.onSavePressed,
        ),
      ],
    );
  }
}
