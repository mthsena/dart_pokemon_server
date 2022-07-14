import 'package:dart_pokemon_server/service/main_service.dart';
import 'package:dart_pokemon_server/service/pokemon_service.dart';

import 'usecases.dart';

final mainService = MainService();
final pokemonService = PokemonService(findPokemonUsecase);
