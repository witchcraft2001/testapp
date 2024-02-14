// Project imports:
import 'package:terralinkapp/features/likes/common/data/dao/api_like_dao.dart';
import 'package:terralinkapp/features/likes/common/domain/entities/api_like.dart';
import 'package:terralinkapp/features/users/data/mappers/api_user_dao_mapper.dart';

extension ApiLikeDaoMapper on ApiLikeDao {
  ApiLike toDomain([String? photoUrlPrefix]) => ApiLike(
        id: likeId,
        content: content,
        from: from.toDomain(photoUrlPrefix),
      );
}
