import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/domain/enum/enums.dart';

part 'character.freezed.dart';


@freezed
class Character with _$Character {
  const factory Character({
    required int id,
    required String name,
    required CharacterStatus status,
    required String species,
    required String type,
    required CharacterGender gender,
    required String originName,
    required String originUrl,
    required String locationName,
    required String locationUrl,
    required String image,
    required List<String> episode,
    required String url,
    required DateTime created,
  }) = _Character;
}