import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_rates.freezed.dart';

@freezed
abstract class CurrencyRates with _$CurrencyRates {
  const factory CurrencyRates({
    required String base,
    required Map rates,
  }) = _CurrencyRates;
}
