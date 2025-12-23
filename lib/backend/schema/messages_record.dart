import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagesRecord extends FirestoreRecord {
  MessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "simulationId" field.
  String? _simulationId;
  String get simulationId => _simulationId ?? '';
  bool hasSimulationId() => _simulationId != null;

  void _initializeFields() {
    _text = snapshotData['text'] as String?;
    _userId = snapshotData['userId'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _simulationId = snapshotData['simulationId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('messages');

  static Stream<MessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessagesRecord.fromSnapshot(s));

  static Future<MessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessagesRecord.fromSnapshot(s));

  static MessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessagesRecordData({
  String? text,
  String? userId,
  DateTime? timestamp,
  String? role,
  String? simulationId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'text': text,
      'userId': userId,
      'timestamp': timestamp,
      'role': role,
      'simulationId': simulationId,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessagesRecordDocumentEquality implements Equality<MessagesRecord> {
  const MessagesRecordDocumentEquality();

  @override
  bool equals(MessagesRecord? e1, MessagesRecord? e2) {
    return e1?.text == e2?.text &&
        e1?.userId == e2?.userId &&
        e1?.timestamp == e2?.timestamp &&
        e1?.role == e2?.role &&
        e1?.simulationId == e2?.simulationId;
  }

  @override
  int hash(MessagesRecord? e) => const ListEquality()
      .hash([e?.text, e?.userId, e?.timestamp, e?.role, e?.simulationId]);

  @override
  bool isValidKey(Object? o) => o is MessagesRecord;
}
