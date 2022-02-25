import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CurrencyCalculatorRemoteDatasource {
  final Dio dio;
  CurrencyCalculatorRemoteDatasource(this.dio);

  final baseAddress = "http://data.fixer.io/api/";
  final accessKey = "df162bb7e9b8ab52569770b4d42947a4";

//   var options = BaseOptions(
//   baseUrl: 'https://www.xx.com/api',
//   connectTimeout: 5000,
//   receiveTimeout: 3000,
// );

  Future<Response<String>> getCurrencyRates() async {
    return dio.get("$baseAddress/latest?access_key=$accessKey");
  }

  Future<List<Response<String>>> getHistoricalRates(
      List<String> boundDates) async {
    return Future.wait(boundDates
        .map((e) => dio.get("$baseAddress/$e?access_key=$accessKey")));
  }
}
