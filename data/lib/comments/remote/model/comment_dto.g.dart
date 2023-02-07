// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDTO _$$_CommentDTOFromJson(Map<String, dynamic> json) =>
    _$_CommentDTO(
      postId: json['postId'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$_CommentDTOToJson(_$_CommentDTO instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
