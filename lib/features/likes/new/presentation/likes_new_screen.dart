// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_keys.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_animated_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/tl_card.dart';
import 'package:terralinkapp/core/ui/widgets/tl_textfield.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/core/utils/snacbar.dart';
import 'package:terralinkapp/core/utils/validators.dart';
import 'package:terralinkapp/features/likes/common/presentation/widgets/user_tile.dart';
import 'package:terralinkapp/features/likes/new/presentation/cubits/likes_new_cubit.dart';
import 'package:terralinkapp/features/likes/new/presentation/cubits/likes_new_state.dart';
import 'package:terralinkapp/features/users/domain/entities/api_user.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'widgets/user_selection.dart';

class LikesNewScreen extends StatefulWidget {
  const LikesNewScreen({super.key});

  @override
  State<LikesNewScreen> createState() => _LikesNewScreenState();
}

class _LikesNewScreenState extends State<LikesNewScreen> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return BlocProvider(
      create: (_) => getIt<LikesNewCubit>(),
      child: BlocConsumer<LikesNewCubit, LikesNewState>(
        listener: (context, state) {
          state.whenOrNull(ready: (data) {
            if (_controller.text != data.content) {
              _controller.text = data.content;
            }

            if (data.toast != null) {
              ScaffoldMessenger.of(context).showSnackBar(buildSnackBar(
                theme: theme,
                data: data.toast,
              ));

              context.bloc<LikesNewCubit>().resetToastMessage();
            }
          });
        },
        builder: (context, state) => GestureDetector(
          onTap: context.unfocus,
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Scaffold(
              appBar: TlAppBar(title: S.current.likesNew),
              body: Scaffold(
                body: ListView(
                  padding: TlSpaces.p24,
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: [
                    Text(
                      S.current.likesNewMessage,
                      style: theme?.text.w700s20cMain,
                    ),
                    Padding(
                      padding: TlSpaces.pt24,
                      child: Text(
                        S.current.likesNewDescription,
                        style: theme?.text.w400s14cSignatures,
                      ),
                    ),
                  ],
                ),
                bottomNavigationBar: Container(
                  padding: TlSpaces.p24,
                  decoration: BoxDecoration(
                    color: theme?.colors.bgPopups,
                    boxShadow: theme?.shadows.bottomForm,
                    borderRadius: TlDecoration.brBottomForm,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _UserSelection(
                        user: state.whenOrNull(ready: (data) => data.user),
                        onSelect: context.bloc<LikesNewCubit>().selectUser,
                        borderColor: state.whenOrNull(
                          ready: (data) => data.user != null ? null : theme?.colors.danger,
                        ),
                      ),
                      TlTextField(
                        controller: _controller,
                        padding: TlSpaces.pt24,
                        label: S.current.likesNewComment,
                        onChanged: context.bloc<LikesNewCubit>().changeContent,
                        text: state.whenOrNull(ready: (data) => data.content) ?? '',
                        maxLines: 5,
                        validator: validateRequiredTextField,
                      ),
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: Container(
                padding: TlSpaces.ph24b24,
                color: theme?.colors.bgPopups,
                child: SafeArea(
                  child: TlAnimatedButton(
                    isEnabled: _formKey.currentState?.validate() == true &&
                        state.whenOrNull(ready: (data) => data.user) != null,
                    title: S.current.btnSend,
                    type: AppBtnType.primary,
                    width: context.width,
                    onPressed: () => _handleSend(context),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleSend(BuildContext context) {
    context.bloc<LikesNewCubit>().send();
    _formKey.currentState?.reset();
  }
}
