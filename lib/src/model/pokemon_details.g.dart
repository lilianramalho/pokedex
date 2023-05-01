// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDetails _$$_PokemonDetailsFromJson(Map<String, dynamic> json) =>
    _$_PokemonDetails(
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => Abilities.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: json['height'] as int,
      weight: json['weight'] as int,
      stats: (json['stats'] as List<dynamic>)
          .map((e) => Stats.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonDetailsToJson(_$_PokemonDetails instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'height': instance.height,
      'weight': instance.weight,
      'stats': instance.stats,
    };
