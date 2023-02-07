import 'package:data/comments/model/comment_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_dto.freezed.dart';

part 'comment_dto.g.dart';

@freezed
class CommentDTO with _$CommentDTO {
  const CommentDTO._();

  const factory CommentDTO({
    @JsonKey(name: 'postId') int? postId,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'body') String? body,
  }) = _CommentDTO;

  factory CommentDTO.fromJson(Map<String, dynamic> json) => _$CommentDTOFromJson(json);

  CommentEntity toCommentEntity() => CommentEntity(postId, id, name, email, body);
}
