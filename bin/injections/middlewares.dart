import 'package:dart_pokemon_server/middleware/log_request_middleware.dart';
import 'package:dart_pokemon_server/middleware/status_code_middleware.dart';

final logRequestMiddleware = LogRequestMiddleware();
final statusCodeMiddleware = StatusCodeMiddleware();
