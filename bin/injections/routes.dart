import 'package:dart_pokemon_server/route/main_route.dart';
import 'package:dart_pokemon_server/route/pokemon_route.dart';

import 'services.dart';

final mainRoute = MainRoute(mainService);
final pokemonRoute = PokemonRoute(pokemonService);
