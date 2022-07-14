import 'package:dart_pokemon_core/dart_pokemon_core.dart';
import 'package:shelf/shelf.dart';

import 'i_pokemon_service.dart';

class PokemonService implements IPokemonService {
  const PokemonService(
    this._pokemonFindUseCase,
  );

  final IFindPokemonUseCase _pokemonFindUseCase;

  @override
  Future<Response> find(Request request, String pokemonName) async {
    final output = await _pokemonFindUseCase.execute(
      FindPokemonInput(
        name: pokemonName,
      ),
    );
    return Response.ok(
      output.toJson(),
    );
  }
}
