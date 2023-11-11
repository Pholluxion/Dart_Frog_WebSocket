import 'package:dart_frog/dart_frog.dart';
import 'package:web_socket/image/middleware/image_provider.dart';
import 'package:web_socket/state/state.dart';

Handler middleware(Handler handler) {
  return handler.use(stateProvider).use(imegeProvider);
}
