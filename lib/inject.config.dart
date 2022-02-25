// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/currency_calculator/currency_calculator_bloc.dart' as _i7;
import 'application/historical_data_graph/bloc/historical_data_graph_bloc.dart'
    as _i8;
import 'domain/currency_calculator/i_currency_calculator_repository.dart'
    as _i5;
import 'infrastructure/core/remote_datasource_injectable_modules.dart' as _i9;
import 'infrastructure/currency_calculator/currency_calculator_remote_datasource.dart'
    as _i4;
import 'infrastructure/currency_calculator/currency_calculator_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final remoteDataSourceInjectableModules =
      _$RemoteDataSourceInjectableModules();
  gh.lazySingleton<_i3.Dio>(() => remoteDataSourceInjectableModules.dio);
  gh.lazySingleton<_i4.CurrencyCalculatorRemoteDatasource>(
      () => _i4.CurrencyCalculatorRemoteDatasource(get<_i3.Dio>()));
  gh.lazySingleton<_i5.ICurrencyCalculatorRepository>(() =>
      _i6.CurrencyCalculatorRepository(
          get<_i4.CurrencyCalculatorRemoteDatasource>()));
  gh.factory<_i7.CurrencyCalculatorBloc>(() =>
      _i7.CurrencyCalculatorBloc(get<_i5.ICurrencyCalculatorRepository>()));
  gh.factory<_i8.HistoricalDataGraphBloc>(() =>
      _i8.HistoricalDataGraphBloc(get<_i5.ICurrencyCalculatorRepository>()));
  return get;
}

class _$RemoteDataSourceInjectableModules
    extends _i9.RemoteDataSourceInjectableModules {}
