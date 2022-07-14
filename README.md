# dart_pokemon_server

A simple dart server using docker for serve pokémon data from https://github.com/mthsena/dart_pokemon_core.

## Getting Started

### Docker
```
docker-compose up -d --build
curl http://localhost:8080/pokemon/find/pikachu
```

### Localhost
```
dart run
curl http://localhost:8080/pokemon/find/pikachu
```
