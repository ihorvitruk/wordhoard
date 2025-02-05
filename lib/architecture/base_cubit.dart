import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseCubit<State> extends Cubit<State> {
  BaseCubit(super.initialState) {
    _subscription = stream.distinct().listen(super.emit);
  }

  StreamSubscription? _subscription;

  @override
  void emit(State state) {
    throw Exception('Use stream instead.');
  }

  @mustCallSuper
  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
