import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../service/i_main_service.dart';
import 'i_route.dart';

class MainRoute implements IRoute {
  const MainRoute(
    this._mainService,
  );

  final IMainService _mainService;

  @override
  Handler get handler {
    final router = Router();

    router.get('/', _mainService.welcome);

    return router;
  }
}
