part of 'currency_calculator_bloc.dart';

@freezed
class CurrencyCalculatorState with _$CurrencyCalculatorState {
  const factory CurrencyCalculatorState({
    required String convertFromCurrency,
    required String convertToCurrency,
    required double convertToValue,
    required bool isLoading,
    required String errorWarning,
    required List<CurrencyRates>? historicalData,
    required List<String> currencies,
  }) = _CurrencyCalculatorState;

  factory CurrencyCalculatorState.initial() => const CurrencyCalculatorState(
      convertFromCurrency: "EUR",
      convertToCurrency: "EUR",
      convertToValue: 0,
      isLoading: true,
      errorWarning: "",
      historicalData: null,
      currencies: ["EUR"]);
}

// enum Currency {
//   eur,
//   usd,
//   ng,
// }
