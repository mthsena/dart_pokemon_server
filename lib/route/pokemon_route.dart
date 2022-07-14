import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../service/i_pokemon_service.dart';
import 'i_route.dart';

class PokemonRoute implements IRoute {
  const PokemonRoute(
    this._pokemonService,
  );

  final IPokemonService _pokemonService;

  @override
  Handler get handler {
    final router = Router();

    router.get('/pokemon/find/<pokemonName>', _pokemonService.find);

    return router;
  }
}
