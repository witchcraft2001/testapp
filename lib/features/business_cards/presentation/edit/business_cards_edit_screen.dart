// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_error_data.dart';
import 'package:terralinkapp/core/ui/widgets/tl_progress_indicator.dart';
import 'package:terralinkapp/core/ui/widgets/tl_select.dart';
import 'package:terralinkapp/core/ui/widgets/tl_textfield.dart';
import 'package:terralinkapp/core/utils/formatters.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card_locale.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_business_card_by_id_use_case.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/save_business_card_use_case.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import '../../domain/cubits/business_cards_edit_cubit.dart';
import '../../domain/states/business_cards_edit_state.dart';

class BusinessCardsEditScreen extends StatelessWidget {
  final int id;

  const BusinessCardsEditScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TlAppBar(
        title: id == 0 ? S.current.businessCardsCreate : S.current.businessCardsEdit,
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
      builder: (context, state) => _getWidgetByState(context, state),
    );
  }

  Widget _getWidgetByState(BuildContext context, BusinessCardsEditState state) {
    return switch (state) {
      InitState() => _getInitState(context),
      LoadingState() => const TlProgressIndicator(),
      SuccessState() => const TlProgressIndicator(),
      ErrorState(message: var message) => TlErrorData(
          message: message,
          buttonTitle: S.current.btnBack,
          onPressed: Navigator.of(context).pop,
        ),
      EditState() => _getEditScreen(context, state),
    };
  }

  Widget _getInitState(BuildContext context) {
    BlocProvider.of<BusinessCardsEditCubit>(context).init();

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
                    title: S.current.location,
                    items: BusinessCardLocale.values,
                    selected: state.locale,
                    onChanged: (value) {
                      if (value != null) {
                        bloc.changeLocale(value);
                      }
                    },
                  ),
                  TlTextField(
                    label: S.current.firstname,
                    text: state.firstname,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.validationRequired,
                    onChanged: (value) => bloc.changeFirstname(value),
                  ),
                  TlTextField(
                    label: S.current.lastname,
                    text: state.lastname,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.validationRequired,
                    onChanged: (value) => bloc.changeLastname(value),
                  ),
                  TlTextField(
                    label: S.current.company,
                    text: state.company,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) => bloc.changeCompany(value),
                  ),
                  TlTextField(
                    label: S.current.position,
                    text: state.position,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) => bloc.changePosition(value),
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
                    onChanged: (value) => bloc.changePhone(value),
                    inputFormatters: formatters,
                  ),
                  TlTextField(
                    label: S.current.email,
                    text: state.email,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.validationRequired,
                    onChanged: (value) => bloc.changeEmail(value),
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
          onPressed: bloc.save,
        ),
      ],
    );
  }
}
