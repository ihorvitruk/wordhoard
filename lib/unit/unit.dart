import 'dart:async';
import 'package:flutter/foundation.dart';

abstract class Unit<S> {
  Unit(S initialState) {
    _state = initialState;
    _statesSubscription = states.distinct().listen((state) => _state = state);
  }

  late S _state;
  S get state => _state;

  StreamSubscription? _statesSubscription;

  Stream<S> get states => Stream.value(_state);

  @mustCallSuper
  Future<void> close() async {
    await _statesSubscription?.cancel();
    _statesSubscription = null;
  }
}
