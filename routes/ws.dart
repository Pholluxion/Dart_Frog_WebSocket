import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';

import 'package:web_socket/state/state.dart';

Future<Response> onRequest(RequestContext context) async {
  final handler = webSocketHandler(
    (channel, protocol) {
      final cubit = context.read<StateCubit>()..subscribe(channel);

      channel.sink.add(cubit.state);

      channel.stream.listen(
        (event) {
          switch ('$event'.toMessage()) {
            case Message.ledHigh:
              cubit.ledHigh();
            case Message.ledLow:
              cubit.ledLow();
            case Message.enableStream:
              cubit.enableStream();
              cubit.ledHigh();
            case Message.disableStream:
              cubit.disableStream();
              cubit.ledLow();
            case null:
              break;
          }
        },
        onDone: () => cubit.unsubscribe(channel),
      );
    },
  );

  return handler(context);
}

extension on String {
  Message? toMessage() {
    for (final message in Message.values) {
      if (this == message.value) {
        return message;
      }
    }
    return null;
  }
}
