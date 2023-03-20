library algorand_msgpack;

import 'dart:convert';
import 'dart:typed_data';

import 'package:algorand_msgpack/src/bigint_encoder.dart';

part 'src/common.dart';
part 'src/data_writer.dart';
part 'src/deserializer.dart';
part 'src/serializer.dart';

Uint8List serialize(
  dynamic value, {
  ExtEncoder? extEncoder,
}) {
  final s = Serializer(extEncoder: extEncoder);
  s.encode(value);
  return s.takeBytes();
}

dynamic deserialize(
  Uint8List list, {
  Encoding? codec,
  ExtDecoder? extDecoder,
  bool copyBinaryData = false,
}) {
  final d = Deserializer(
    list,
    codec: codec,
    extDecoder: extDecoder,
    copyBinaryData: copyBinaryData,
  );
  return d.decode();
}
