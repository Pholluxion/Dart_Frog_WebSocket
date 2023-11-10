import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  // Connect to the remote WebSocket endpoint.
  final uri =
      Uri.parse('ws://dartfrogwebsocket-production.up.railway.app/5974/ws');
  final channel = WebSocketChannel.connect(uri);

  // Send a message to the server.
  channel.sink.add('hello');
}
