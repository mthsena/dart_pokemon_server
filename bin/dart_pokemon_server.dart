import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

import 'injections/middlewares.dart';
import 'injections/routes.dart';

void main() async {
  final cascade = Cascade() //
      .add(mainRoute.handler)
      .add(pokemonRoute.handler)
      .handler;

  final pipeline = Pipeline() //
      .addMiddleware(logRequestMiddleware.handler)
      .addMiddleware(statusCodeMiddleware.handler)
      .addHandler(cascade);

  final host = String.fromEnvironment('host', defaultValue: '0.0.0.0');
  final port = String.fromEnvironment('port', defaultValue: '3000');

  final server = await io.serve(pipeline, host, int.parse(port));

  print('Server is running on ${server.address.host}:${server.port}');
}
