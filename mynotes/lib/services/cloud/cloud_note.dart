import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:mynotes/services/cloud/cloud_storage_constants.dart';

@immutable
class Cloudnote {
  final String documentId;
  final String ownerUserId;
  final String text;

  const Cloudnote({
    required this.documentId,
    required this.ownerUserId,
    required this.text,
  });

  Cloudnote.fromSnashot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : documentId = snapshot.id,
        ownerUserId = snapshot.data()[ownerUserIdFieldName],
        text = snapshot.data()[textFieldName] as String;
}
