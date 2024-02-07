// Project imports:
import 'package:terralinkapp/features/likes/common/data/dao/api_likes_stats_dao.dart';
import 'package:terralinkapp/features/likes/common/domain/entities/api_likes_stat.dart';

extension ApiLikesStatDaoMapper on ApiLikesStatDao {
  ApiLikesStat toDomain() => ApiLikesStat(
        receiveLikes: receiveLikes,
        sendLikes: sendLikes,
      );
}
