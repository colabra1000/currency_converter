import 'package:currency_converter/domain/currency_calculator/currency_calculator_failure.dart';
import 'package:currency_converter/domain/currency_calculator/currency_rates.dart';
import 'package:dartz/dartz.dart';

abstract class ICurrencyCalculatorRepository {
  Future<Either<CurrencyCalculatorFailure, CurrencyRates>>
      getLatestConversionRates();

  Future<Either<CurrencyCalculatorFailure, List<CurrencyRates>>>
      getHitoricalRates(List<String> boundDates);
}
