import 'package:dart_frog/dart_frog.dart';

import 'package:web_socket/data/data.dart';
import 'package:web_socket/image/image.dart';
import 'package:web_socket/photo/photo.dart';
import 'package:web_socket/state/state.dart';

Handler middleware(Handler handler) => handler
    .use(stateProvider)
    .use(imageProvider)
    .use(dataProvider)
    .use(photoProvider);
