FROM dart:latest

WORKDIR /dart_pokemon_server

COPY . .

RUN dart pub get

EXPOSE 3000

CMD [ "dart", "run", "bin/dart_pokemon_server.dart" ]
