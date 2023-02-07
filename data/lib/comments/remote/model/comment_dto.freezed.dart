// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentDTO _$CommentDTOFromJson(Map<String, dynamic> json) {
  return _CommentDTO.fromJson(json);
}

/// @nodoc
class _$CommentDTOTearOff {
  const _$CommentDTOTearOff();

  _CommentDTO call(
      {@JsonKey(name: 'postId') int? postId,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'body') String? body}) {
    return _CommentDTO(
      postId: postId,
      id: id,
      name: name,
      email: email,
      body: body,
    );
  }

  CommentDTO fromJson(Map<String, Object?> json) {
    return CommentDTO.fromJson(json);
  }
}

/// @nodoc
const $CommentDTO = _$CommentDTOTearOff();

/// @nodoc
mixin _$CommentDTO {
  @JsonKey(name: 'postId')
  int? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentDTOCopyWith<CommentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDTOCopyWith<$Res> {
  factory $CommentDTOCopyWith(
          CommentDTO value, $Res Function(CommentDTO) then) =
      _$CommentDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'postId') int? postId,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'body') String? body});
}

/// @nodoc
class _$CommentDTOCopyWithImpl<$Res> implements $CommentDTOCopyWith<$Res> {
  _$CommentDTOCopyWithImpl(this._value, this._then);

  final CommentDTO _value;
  // ignore: unused_field
  final $Res Function(CommentDTO) _then;

  @override
  $Res call({
    Object? postId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommentDTOCopyWith<$Res> implements $CommentDTOCopyWith<$Res> {
  factory _$CommentDTOCopyWith(
          _CommentDTO value, $Res Function(_CommentDTO) then) =
      __$CommentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'postId') int? postId,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'body') String? body});
}

/// @nodoc
class __$CommentDTOCopyWithImpl<$Res> extends _$CommentDTOCopyWithImpl<$Res>
    implements _$CommentDTOCopyWith<$Res> {
  __$CommentDTOCopyWithImpl(
      _CommentDTO _value, $Res Function(_CommentDTO) _then)
      : super(_value, (v) => _then(v as _CommentDTO));

  @override
  _CommentDTO get _value => super._value as _CommentDTO;

  @override
  $Res call({
    Object? postId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? body = freezed,
  }) {
    return _then(_CommentDTO(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentDTO extends _CommentDTO {
  const _$_CommentDTO(
      {@JsonKey(name: 'postId') this.postId,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'body') this.body})
      : super._();

  factory _$_CommentDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CommentDTOFromJson(json);

  @override
  @JsonKey(name: 'postId')
  final int? postId;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'body')
  final String? body;

  @override
  String toString() {
    return 'CommentDTO(postId: $postId, id: $id, name: $name, email: $email, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentDTO &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$CommentDTOCopyWith<_CommentDTO> get copyWith =>
      __$CommentDTOCopyWithImpl<_CommentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentDTOToJson(this);
  }
}

abstract class _CommentDTO extends CommentDTO {
  const factory _CommentDTO(
      {@JsonKey(name: 'postId') int? postId,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'body') String? body}) = _$_CommentDTO;
  const _CommentDTO._() : super._();

  factory _CommentDTO.fromJson(Map<String, dynamic> json) =
      _$_CommentDTO.fromJson;

  @override
  @JsonKey(name: 'postId')
  int? get postId;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$CommentDTOCopyWith<_CommentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
