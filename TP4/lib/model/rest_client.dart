import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:formation_flutter/model/product_api.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://api.formation-flutter.fr/v2/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/getProduct")
  Future<ProductResponse> getProduct(@Query("barcode") String barcode);
}