import 'package:api_key_project/core/config/dio_catch_error_config.dart';
import 'package:api_key_project/core/config/dio_config.dart';
import 'package:api_key_project/data/models/technology/technology_model.dart';
import 'package:dio/dio.dart';

class TechnologyService {
  Future<dynamic> getTechnology({required String url}) async {
    try {
      Response response = await DioConfig.createRequest().get(url);
      if (response.statusCode == 200) {
        return TechnologyModel.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return DioCatchErrorConfig.catchError(e);
    }
  }
}
