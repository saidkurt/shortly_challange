import 'package:dio/dio.dart';
import 'package:shortly_challange/core/const/service_path.dart';
import 'package:shortly_challange/core/network/network_parser.dart';

class NetworkService {
  NetworkService._privateConstructor();
  static final NetworkService _instance = NetworkService._privateConstructor();
  static NetworkService get instance => _instance;

  final Dio _dio = Dio(
    BaseOptions(
      connectTimeout: 5000,
      baseUrl: ServicePath.BASE_URL,
    ),
  );

  Future<dynamic> getData<F extends ModelParser>(
      String path, F responseModel) async {
    try {
      final response = await _dio.get(path);
      return responseModel.fromJson(response.data);
    } on DioError catch (e) {
      print(e);
    }
  }
}
