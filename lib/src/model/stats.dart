import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';
part 'stats.g.dart';

@freezed
class Stats with _$Stats {
  const factory Stats({
    required int base_stat,
    required int effort,
    
  }) = _Stats;

  factory Stats.fromJson(Map<String, Object?> json)
      => _$StatsFromJson(json);
}