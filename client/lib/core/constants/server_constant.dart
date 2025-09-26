import 'dart:io';

import 'package:flutter/foundation.dart';

class ServerConstant {
  static String get serverURL {
    if (kIsWeb) return 'http://127.0.0.1:8000'; // Flutter Web
    if (Platform.isAndroid) return 'http://10.0.2.2:8000'; // Android emulator
    // iOS Simulator / desktop
    return 'http://127.0.0.1:8000';
  }
}
