import 'package:cloud_firestore/cloud_firestore.dart';

extension DocumentSnapshotX on DocumentSnapshot {
  T? toEntity<T>(T Function(Map<String, dynamic> json) converter) {
    final docData = data();
    if (docData == null) return null;

    final jsonData = docData as Map<String, dynamic>;
    jsonData['id'] = id;

    return converter(jsonData);
  }
}
