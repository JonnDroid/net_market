import 'package:net_market/data/model/product_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'api_service.g.dart';

const String BASE_URL = 'https://fakestoreapi.com/';

@RestApi(baseUrl: BASE_URL)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('products')
  Future<List<ProductModel>> getProducts(@Query('limit') int limit);
}
