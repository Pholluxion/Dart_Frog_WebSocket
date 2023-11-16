import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  final String url = String.fromEnvironment(
    'URL',
    defaultValue: "viaduct.proxy.rlwy.net:44691",
  );

  final String val = String.fromEnvironment(
    'VAL',
    defaultValue: "0",
  );

  final uri = Uri.parse('ws://${url}/ws');
  final channel = WebSocketChannel.connect(uri);

  channel.stream.listen((message) {
    print(message);
  });

  channel.sink.add('ON_BOARD_VIDEO_1=$val');
}
