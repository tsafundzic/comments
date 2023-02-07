// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CommentEntityAdapter extends TypeAdapter<CommentEntity> {
  @override
  final int typeId = 1;

  @override
  CommentEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CommentEntity(
      fields[0] as int?,
      fields[1] as int?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CommentEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.postId)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.body);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommentEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
