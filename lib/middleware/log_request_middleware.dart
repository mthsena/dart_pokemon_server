import 'package:shelf/shelf.dart';

import 'i_middleware.dart';

class LogRequestMiddleware implements IMiddleware {
  @override
  Middleware get handler {
    return logRequests();
  }
}
