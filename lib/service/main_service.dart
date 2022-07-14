import 'package:shelf/shelf.dart';

import '../data/dummy_data.dart';
import 'i_main_service.dart';

class MainService implements IMainService {
  @override
  Future<Response> welcome(Request request) async {
    return Response.ok(
      DummyData.welcomeJson,
    );
  }
}
