import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RemoteDataSourceInjectableModules {
  @lazySingleton
  Dio get dio => Dio();
}
