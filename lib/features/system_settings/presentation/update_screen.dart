// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/features/system_settings/presentation/cubits/update_cubit.dart';
import 'package:terralinkapp/features/system_settings/presentation/cubits/update_state.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'widgets/info_entity.dart';

class UpdateScreen extends StatelessWidget {
  final UpdateType updateType;

  const UpdateScreen({
    super.key,
    required this.updateType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UpdateCubit>(
      create: (_) => getIt<UpdateCubit>()..init(),
      child: BlocBuilder<UpdateCubit, UpdateState>(
        builder: (context, state) {
          final text = context.appTheme?.text;
          final colors = context.appTheme?.colors;

          final isInfo = state.versionInfo.isNotEmpty;

          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  if (updateType == UpdateType.optional)
                    Positioned(
                      child: BackButton(
                        color: colors?.brAndIcons,
                        onPressed: () => context.bloc<UpdateCubit>().redirect(context),
                      ),
                    ),
                  Padding(
                    padding: TlSpaces.ph64,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const TlSvg(
                            backgroundAligment: Alignment.center,
                            assetName: TlAssets.imageUpdate,
                          ),
                          Padding(
                            padding: TlSpaces.pt24,
                            child: Text(
                              S.current.updateTitle,
                              style: text?.w700s20cMain,
                            ),
                          ),
                          if (state.version != null)
                            Padding(
                              padding: TlSpaces.pt8,
                              child: Text(
                                state.version!,
                                style: text?.w900s36cMain.copyWith(color: colors?.primary),
                              ),
                            ),
                          if (isInfo) _buildDescription(state.versionInfo),
                          TlButton(
                            padding: TlSpaces.pt40,
                            title: S.current.btnUpdate,
                            onPressed: context.bloc<UpdateCubit>().openStore,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDescription(List<String> info) {
    return Padding(
      padding: TlSpaces.pt16,
      child: Column(
        children: List.generate(
          info.length,
          (index) => _InfoEntity(
            index: index + 1,
            entity: info[index],
          ),
        ).toList(),
      ),
    );
  }
}
