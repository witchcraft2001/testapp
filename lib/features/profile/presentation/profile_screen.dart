// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/core/ui/widgets/images/tl_avatar.dart';
import 'package:terralinkapp/core/ui/widgets/text_cell.dart';
import 'package:terralinkapp/core/ui/widgets/tl_card.dart';
import 'package:terralinkapp/core/ui/widgets/tl_progress_indicator.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/features/likes/common/data/repositories/likes_repository.dart';
import 'package:terralinkapp/features/likes/common/domain/use_cases/get_likes_stat_use_case.dart';
import 'package:terralinkapp/features/profile/domain/use_cases/get_profile_avatar_use_case.dart';
import 'package:terralinkapp/features/profile/domain/use_cases/set_profile_avatar_use_case.dart';
import 'package:terralinkapp/features/profile/presentation/cubits/likes/likes_stat_cubit.dart';
import 'package:terralinkapp/features/profile/presentation/cubits/likes/likes_stat_state.dart';
import 'package:terralinkapp/features/profile/presentation/cubits/profile/profile_cubit.dart';
import 'package:terralinkapp/features/profile/presentation/cubits/profile/profile_cubit_state.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'widgets/likes_section_card.dart';
part 'widgets/likes_section.dart';
part 'widgets/profile_card.dart';
part 'widgets/profile_section.dart';
part 'widgets/profile_sections.dart';

part 'shimmers/likes_count_shimmer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileCubit(
        getIt<UserService>(),
        getIt<GetProfileAvatarUseCase>(),
        getIt<SetProfileAvatarUseCase>(),
      )..init(),
      child: BlocBuilder<ProfileCubit, ProfileCubitState>(
        builder: (_, state) => state.when(
          loading: () => const TlProgressIndicator(),
          ready: (data) => _ContentData(data: data),
        ),
      ),
    );
  }
}

class _ContentData extends StatelessWidget {
  final ProfileState data;

  const _ContentData({required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: TlSpaces.p24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ProfileCard(data: data),
          _ProfileSections(email: data.email),
        ],
      ),
    );
  }
}
