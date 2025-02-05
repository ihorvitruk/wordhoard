import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

mixin AutoCloseable {
  @visibleForTesting
  final List<StreamSubscription> subscriptions = [];

  @visibleForTesting
  final List<BehaviorSubject> behaviorSubjects = [];

  void autoClose(Object? closeable) {
    if (closeable is StreamSubscription) {
      subscriptions.add(closeable);
    } else if (closeable is BehaviorSubject) {
      behaviorSubjects.add(closeable);
    }
  }

  Future<void> _cancelSubscriptions() async {
    await Future.wait(subscriptions.map((s) => s.cancel()));
    subscriptions.clear();
  }

  Future<void> _closeBehaviorSubjects() async {
    await Future.wait(behaviorSubjects.map((bs) => bs.close()));
    behaviorSubjects.clear();
  }

  Future<void> closeAll() async {
    await Future.wait([_cancelSubscriptions(), _closeBehaviorSubjects()]);
  }
}
