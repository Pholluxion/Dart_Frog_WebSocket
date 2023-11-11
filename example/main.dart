import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  final String url = String.fromEnvironment(
    'URL',
    defaultValue: "viaduct.proxy.rlwy.net:44691",
  );

  final uri = Uri.parse('ws://${url}/image_ws');
  final channel = WebSocketChannel.connect(uri);

  channel.stream.listen((message) {
    print(message);
  });

  channel.sink.add([1, 2, 3, 4, 5]);
}
