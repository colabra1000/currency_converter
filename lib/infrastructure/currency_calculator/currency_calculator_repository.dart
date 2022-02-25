import 'dart:convert';

import 'package:currency_converter/domain/currency_calculator/currency_rates.dart';
import 'package:currency_converter/domain/currency_calculator/currency_calculator_failure.dart';
import 'package:currency_converter/domain/currency_calculator/i_currency_calculator_repository.dart';
import 'package:currency_converter/infrastructure/currency_calculator/currency_calculator_dto.dart';
import 'package:currency_converter/infrastructure/currency_calculator/currency_calculator_remote_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICurrencyCalculatorRepository)
class CurrencyCalculatorRepository implements ICurrencyCalculatorRepository {
  CurrencyCalculatorRemoteDatasource currencyCalculatorRemoteDatasource;

  CurrencyCalculatorRepository(this.currencyCalculatorRemoteDatasource);

  CurrencyCalculatorDto? cachedResponse;
  List<CurrencyCalculatorDto>? catchedHistoricalRates;
  @override
  Future<Either<CurrencyCalculatorFailure, CurrencyRates>>
      getLatestConversionRates() async {
    try {
      if (cachedResponse != null) {
        print("from Cache");
        return right(cachedResponse!.toDomain());
      }

      final response =
          await currencyCalculatorRemoteDatasource.getCurrencyRates();
      CurrencyCalculatorDto currencyCalculatorDto =
          CurrencyCalculatorDto.fromJson(jsonDecode(response.toString()));

      cachedResponse = currencyCalculatorDto;
      print("from Network");

      return right(currencyCalculatorDto.toDomain());
    } catch (e) {
      return left(const CurrencyCalculatorFailure.internetError());
    }
  }

  @override
  Future<Either<CurrencyCalculatorFailure, List<CurrencyRates>>>
      getHitoricalRates(List<String> boundDates) async {
    try {
      if (catchedHistoricalRates != null) {
        print("history from Cache");

        return right(catchedHistoricalRates!.map((e) {
          return e.toDomain();
        }).toList());
      }

      final response = await currencyCalculatorRemoteDatasource
          .getHistoricalRates(boundDates);

      final historicalCurrencyCalculatorDto = response.map((e) {
        return CurrencyCalculatorDto.fromJson(jsonDecode(e.toString()));
      }).toList();

      catchedHistoricalRates = historicalCurrencyCalculatorDto;

      print("history from Network");

      return right(historicalCurrencyCalculatorDto.map(
        (e) {
          return e.toDomain();
        },
      ).toList());
    } catch (e) {
      return left(const CurrencyCalculatorFailure.internetError());
    }
  }
}
