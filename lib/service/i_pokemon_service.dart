import 'package:shelf/shelf.dart';

abstract class IPokemonService {
  Future<Response> find(Request request, String pokemonName);
}
