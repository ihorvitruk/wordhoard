import 'dart:async';
import 'package:flutter/foundation.dart';

abstract class Unit<S> {
  Unit(S initialState) {
    _state = initialState;
    _statesSubscription = states.listen(_updateState);
  }

  late S _state;
  S get state => _state;

  StreamSubscription? _statesSubscription;

  void _updateState(S newState) {
    _state = newState;
  }

  Stream<S> get states => Stream.value(_state);

  @mustCallSuper
  Future<void> close() async {
    _statesSubscription?.cancel();
    _statesSubscription = null;
  }
}
