import 'package:shelf/shelf.dart';

abstract class IMainService {
  Future<Response> welcome(Request request);
}
