import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'rate_result.freezed.dart';

@freezed
class RateResult with _$RateResult {
  const factory RateResult({
    required DateTime nextUpdateTime,
    required String baseCode,
    required Map<String, num> rates,
  }) = _RateResult;

}

// class RateResult{
//   final DateTime nextUpdateTime;
//   final String baseCode;
//   final Map<String, num> rates;
//
// //<editor-fold desc="Data Methods">
//   const RateResult({
//     required this.nextUpdateTime,
//     required this.baseCode,
//     required this.rates,
//   });
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       (other is RateResult &&
//           runtimeType == other.runtimeType &&
//           nextUpdateTime == other.nextUpdateTime &&
//           baseCode == other.baseCode &&
//           rates == other.rates);
//
//   @override
//   int get hashCode =>
//       nextUpdateTime.hashCode ^ baseCode.hashCode ^ rates.hashCode;
//
//   @override
//   String toString() {
//     return 'RateResult{' +
//         ' nextUpdateTime: $nextUpdateTime,' +
//         ' baseCode: $baseCode,' +
//         ' rates: $rates,' +
//         '}';
//   }
//
//   RateResult copyWith({
//     DateTime? nextUpdateTime,
//     String? baseCode,
//     Map<String, num>? rates,
//   }) {
//     return RateResult(
//       nextUpdateTime: nextUpdateTime ?? this.nextUpdateTime,
//       baseCode: baseCode ?? this.baseCode,
//       rates: rates ?? this.rates,
//     );
//   }
//
//   Map<String, dynamic> toMap() {
//     return {
//       'nextUpdateTime': this.nextUpdateTime,
//       'baseCode': this.baseCode,
//       'rates': this.rates,
//     };
//   }
//
//   factory RateResult.fromMap(Map<String, dynamic> map) {
//     return RateResult(
//       nextUpdateTime: map['nextUpdateTime'] as DateTime,
//       baseCode: map['baseCode'] as String,
//       rates: map['rates'] as Map<String, num>,
//     );
//   }
//
// //</editor-fold>
// }
