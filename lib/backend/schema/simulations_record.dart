import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SimulationsRecord extends FirestoreRecord {
  SimulationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "archetypeId" field.
  DocumentReference? _archetypeId;
  DocumentReference? get archetypeId => _archetypeId;
  bool hasArchetypeId() => _archetypeId != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as DocumentReference?;
    _archetypeId = snapshotData['archetypeId'] as DocumentReference?;
    _startTime = snapshotData['startTime'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('simulations');

  static Stream<SimulationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SimulationsRecord.fromSnapshot(s));

  static Future<SimulationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SimulationsRecord.fromSnapshot(s));

  static SimulationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SimulationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SimulationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SimulationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SimulationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SimulationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSimulationsRecordData({
  DocumentReference? userId,
  DocumentReference? archetypeId,
  DateTime? startTime,
  String? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'archetypeId': archetypeId,
      'startTime': startTime,
      'status': status,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class SimulationsRecordDocumentEquality implements Equality<SimulationsRecord> {
  const SimulationsRecordDocumentEquality();

  @override
  bool equals(SimulationsRecord? e1, SimulationsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.archetypeId == e2?.archetypeId &&
        e1?.startTime == e2?.startTime &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(SimulationsRecord? e) => const ListEquality()
      .hash([e?.userId, e?.archetypeId, e?.startTime, e?.status, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is SimulationsRecord;
}
