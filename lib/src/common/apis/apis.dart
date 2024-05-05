import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../infrastructure/statics/consts.dart';
part 'apis.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET('/todos')
  Future getTodos(@Queries() Map<String,dynamic> queries);

  @POST('/token/refresh')
  Future refreshToken(
      @Body() Map<String, dynamic> refresh);
}
