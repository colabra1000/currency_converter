import 'package:currency_converter/domain/currency_calculator/currency_rates.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_calculator_dto.freezed.dart';
part 'currency_calculator_dto.g.dart';

@freezed
abstract class CurrencyCalculatorDto implements _$CurrencyCalculatorDto {
  const CurrencyCalculatorDto._();

  const factory CurrencyCalculatorDto({
    required Map rates,
    required String base,
    required bool success,
    required String date,
  }) = _CurrencyCalculatorDto;

  factory CurrencyCalculatorDto.fromJson(Map<String, dynamic> json) =>
      _$CurrencyCalculatorDtoFromJson(json);

  CurrencyRates toDomain() {
    return CurrencyRates(base: base, rates: rates);
  }
}
