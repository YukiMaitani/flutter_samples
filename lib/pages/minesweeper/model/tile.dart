import 'package:freezed_annotation/freezed_annotation.dart';

part 'tile.freezed.dart';

@freezed
class Tile with _$Tile {
  const factory Tile({
    required bool isMine,
    required bool isFlagged,
    required bool isRevealed,
    required int adjacentBombs,
  }) = _Tile;

  const Tile._();

  const factory Tile.startBefore({
    @Default(false) bool isMine,
    @Default(false) bool isFlagged,
    @Default(false) bool isRevealed,
    @Default(-1) int adjacentBombs,
  }) = StartBeforeTile;

  Tile nullCopyWith(
          {bool? isMine,
          bool? isFlagged,
          bool? isRevealed,
          int? adjacentBombs}) =>
      copyWith(
          isMine: isMine ?? this.isMine,
          isFlagged: isFlagged ?? this.isFlagged,
          isRevealed: isRevealed ?? this.isRevealed,
          adjacentBombs: adjacentBombs ?? this.adjacentBombs);
}
