part of 'currency_calculator_bloc.dart';

@freezed
class CurrencyCalculatorEvent with _$CurrencyCalculatorEvent {
  const factory CurrencyCalculatorEvent.started({required bool withError}) =
      _Started;
  const factory CurrencyCalculatorEvent.convertFromChanged(
      {required String value}) = _ConvertFromChanged;
  const factory CurrencyCalculatorEvent.convertToChanged(
      {required String value}) = _ConvertToChanged;
  const factory CurrencyCalculatorEvent.currencyConverted(
      {required int convertFromValue}) = _CurrencyConverted;
}
