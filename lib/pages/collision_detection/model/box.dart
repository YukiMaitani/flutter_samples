import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'box.freezed.dart';

enum BoxType {
  polygon,
  point,
}

@freezed
class Box with _$Box {
  const factory Box({
    required int id,
    required Offset center,
    required BoxType type,
  }) = _Box;
}
