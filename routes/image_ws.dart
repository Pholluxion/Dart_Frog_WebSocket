import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';
import 'package:web_socket/image/cubit/image_cubit.dart';
import 'package:web_socket/image/model/image.dart';

Future<Response> onRequest(RequestContext context) async {
  final handler = webSocketHandler(
    (channel, protocol) {
      final cubit = context.read<ImageCubit>()..subscribe(channel);

      channel.sink.add(cubit.state);

      channel.stream.listen(
        (event) => cubit.update(event as Image),
        onDone: () => cubit.unsubscribe(channel),
      );
    },
  );

  return handler(context);
}
