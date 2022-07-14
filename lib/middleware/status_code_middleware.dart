import 'package:shelf/shelf.dart';

import 'i_middleware.dart';

class StatusCodeMiddleware implements IMiddleware {
  Future<Response> _handleResponse(Response response) async {
    if (response.statusCode == 200) {
      return response.change(
        headers: {
          'content-type': 'application/json; charset=utf-8',
        },
      );
    }
    return response;
  }

  @override
  Middleware get handler {
    return createMiddleware(
      responseHandler: _handleResponse,
    );
  }
}
