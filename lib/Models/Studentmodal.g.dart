// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Studentmodal.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class studentModalAdapter extends TypeAdapter<studentModal> {
  @override
  final int typeId = 1;

  @override
  studentModal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return studentModal(
      Name: fields[1] as String,
      Age: fields[2] as String,
      id: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, studentModal obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.Name)
      ..writeByte(2)
      ..write(obj.Age);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is studentModalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
