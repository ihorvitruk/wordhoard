import 'package:flutter/foundation.dart';
import 'package:wordhoard/architecture/auto_closable.dart';
import 'package:wordhoard/base/closeable.dart';

class BaseRepository with Closeable, AutoCloseable {
  @mustCallSuper
  @override
  Future<void> close() async {
    await closeAll();
  }
}
