import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnalysisRecord extends FirestoreRecord {
  AnalysisRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "simulationId" field.
  DocumentReference? _simulationId;
  DocumentReference? get simulationId => _simulationId;
  bool hasSimulationId() => _simulationId != null;

  // "veredicto" field.
  double? _veredicto;
  double get veredicto => _veredicto ?? 0.0;
  bool hasVeredicto() => _veredicto != null;

  // "toxicifyScore" field.
  int? _toxicifyScore;
  int get toxicifyScore => _toxicifyScore ?? 0;
  bool hasToxicifyScore() => _toxicifyScore != null;

  void _initializeFields() {
    _simulationId = snapshotData['simulationId'] as DocumentReference?;
    _veredicto = castToType<double>(snapshotData['veredicto']);
    _toxicifyScore = castToType<int>(snapshotData['toxicifyScore']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('analysis');

  static Stream<AnalysisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnalysisRecord.fromSnapshot(s));

  static Future<AnalysisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnalysisRecord.fromSnapshot(s));

  static AnalysisRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnalysisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnalysisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnalysisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnalysisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnalysisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnalysisRecordData({
  DocumentReference? simulationId,
  double? veredicto,
  int? toxicifyScore,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'simulationId': simulationId,
      'veredicto': veredicto,
      'toxicifyScore': toxicifyScore,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnalysisRecordDocumentEquality implements Equality<AnalysisRecord> {
  const AnalysisRecordDocumentEquality();

  @override
  bool equals(AnalysisRecord? e1, AnalysisRecord? e2) {
    return e1?.simulationId == e2?.simulationId &&
        e1?.veredicto == e2?.veredicto &&
        e1?.toxicifyScore == e2?.toxicifyScore;
  }

  @override
  int hash(AnalysisRecord? e) => const ListEquality()
      .hash([e?.simulationId, e?.veredicto, e?.toxicifyScore]);

  @override
  bool isValidKey(Object? o) => o is AnalysisRecord;
}
