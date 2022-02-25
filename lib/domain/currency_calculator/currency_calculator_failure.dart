import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_calculator_failure.freezed.dart';

@freezed
abstract class CurrencyCalculatorFailure with _$CurrencyCalculatorFailure {
  const factory CurrencyCalculatorFailure.internetError() = _InternetError;
}
