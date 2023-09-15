// Project imports:
import 'block_data_response.dart';

class BlockResponse {
  final String id;
  final bool blockOpenDefault;
  final String blockType;
  final List<BlockDataResponse> data;

  BlockResponse(this.id, this.blockOpenDefault, this.blockType, this.data);

  BlockResponse.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        blockOpenDefault = json['blockOpenDefault'],
        blockType = json['blockType'],
        data = BlockDataResponseList.fromMappedJson(json['data']).list;
}

class BlockResponseList {
  List<BlockResponse> list = List.empty();

  BlockResponseList(this.list);

  BlockResponseList.fromMappedJson(List<dynamic>? json) {
    list = json == null ? List.empty() : json.map((e) => BlockResponse.fromMappedJson(e)).toList();
  }
}
