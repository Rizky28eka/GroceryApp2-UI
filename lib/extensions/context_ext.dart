import 'package:flutter/material.dart';

extension context on BuildContext {
  MediaQueryData get media {
    return MediaQuery.of(this);
  }

  bool get isTabletSize {
    return media.size.shortestSide >= 768;
  }
}
