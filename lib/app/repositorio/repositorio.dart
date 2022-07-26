import 'package:dio/dio.dart';

import '../core/parametros.dart';

abstract class Repositorio<T> {
  Dio? dio;
  Future<T> get(Parametros p);
  Future<T> add(String id, Parametros p);
  Future<T> update(Parametros p);
  Future<T> delete();
}
