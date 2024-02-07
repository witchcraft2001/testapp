part of '../profile_screen.dart';

class _LikesSection extends StatelessWidget {
  const _LikesSection();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LikesStatCubit(
        getIt<GetLikesStatUseCase>(),
        getIt<LikesRepository>(),
        getIt<LogService>(),
      )..init(),
      child: BlocBuilder<LikesStatCubit, LikesStatState>(
        builder: (_, state) => Padding(
          padding: TlSpaces.pt24,
          child: Row(
            children: [
              Flexible(
                child: _LikesSectionCard(
                  title: S.current.likesNew,
                  asset: TlAssets.iconHeartGiven,
                  count: 0,
                  route: AppRoutes.profileLikesNew.name,
                ),
              ),
              const SizedBox(width: TlSpaces.sp24),
              Flexible(
                child: _LikesSectionCard(
                  title: S.current.likesMy,
                  asset: TlAssets.iconHeart,
                  count: state.whenOrNull(ready: (data) => data.receiveLikes),
                  route: AppRoutes.profileLikesMy.name,
                  isMy: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
