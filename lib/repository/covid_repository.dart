import 'package:dio/dio.dart';

class CovidRepository {
  //api 통신
  late var _dio;

  CovidRepository() {
    _dio =
        Dio(BaseOptions(baseUrl: 'some url', queryParameters: {'key': 'some'}));
  }


  fetchCovid() async{
    var response = await _dio.get('/any/any');
    print(response);

  }
}
