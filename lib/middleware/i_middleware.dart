import 'package:shelf/shelf.dart';

abstract class IMiddleware {
  Middleware get handler;
}
