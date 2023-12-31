import 'package:freezed_annotation/freezed_annotation.dart';

part 'tile.freezed.dart';

@freezed
class Tile with _$Tile {
  const factory Tile({
    required int x,
    required int y,
    required bool isMine,
    required bool isFlagged,
    required bool isRevealed,
    required int adjacentMinesNum,
    @Default(false) bool isExploded,
  }) = _Tile;

  const Tile._();

  const factory Tile.before({
    required int x,
    required int y,
    @Default(false) bool isMine,
    @Default(false) bool isFlagged,
    @Default(false) bool isRevealed,
    @Default(-1) int adjacentMinesNum,
    @Default(false) bool isExploded,
  }) = BeforeTile;

  Tile nullCopyWith(
          {bool? isMine,
          bool? isFlagged,
          bool? isRevealed,
          int? adjacentMinesNum,
          bool? isExploded}) =>
      copyWith(
          isMine: isMine ?? this.isMine,
          isFlagged: isFlagged ?? this.isFlagged,
          isRevealed: isRevealed ?? this.isRevealed,
          adjacentMinesNum: adjacentMinesNum ?? this.adjacentMinesNum,
          isExploded: isExploded ?? this.isExploded);
}
