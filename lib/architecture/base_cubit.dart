import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wordhoard/architecture/auto_closable.dart';

abstract class BaseCubit<State> extends Cubit<State> with AutoCloseable {
  BaseCubit(super.initialState) {
    autoClose(stream.distinct().listen(super.emit));
  }

  @override
  void emit(State state) {
    throw Exception('Use stream instead.');
  }

  @mustCallSuper
  @override
  Future<void> close() async {
    await closeAll();
    return super.close();
  }
}
