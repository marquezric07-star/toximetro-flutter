import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArchetypesRecord extends FirestoreRecord {
  ArchetypesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "personality_profile" field.
  String? _personalityProfile;
  String get personalityProfile => _personalityProfile ?? '';
  bool hasPersonalityProfile() => _personalityProfile != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "toxicityBaseline" field.
  int? _toxicityBaseline;
  int get toxicityBaseline => _toxicityBaseline ?? 0;
  bool hasToxicityBaseline() => _toxicityBaseline != null;

  // "voiceId" field.
  String? _voiceId;
  String get voiceId => _voiceId ?? '';
  bool hasVoiceId() => _voiceId != null;

  // "voiceStyle" field.
  String? _voiceStyle;
  String get voiceStyle => _voiceStyle ?? '';
  bool hasVoiceStyle() => _voiceStyle != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _personalityProfile = snapshotData['personality_profile'] as String?;
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
    _toxicityBaseline = castToType<int>(snapshotData['toxicityBaseline']);
    _voiceId = snapshotData['voiceId'] as String?;
    _voiceStyle = snapshotData['voiceStyle'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('archetypes');

  static Stream<ArchetypesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArchetypesRecord.fromSnapshot(s));

  static Future<ArchetypesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArchetypesRecord.fromSnapshot(s));

  static ArchetypesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArchetypesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArchetypesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArchetypesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArchetypesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArchetypesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArchetypesRecordData({
  String? name,
  String? personalityProfile,
  String? image,
  String? description,
  int? toxicityBaseline,
  String? voiceId,
  String? voiceStyle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'personality_profile': personalityProfile,
      'image': image,
      'description': description,
      'toxicityBaseline': toxicityBaseline,
      'voiceId': voiceId,
      'voiceStyle': voiceStyle,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArchetypesRecordDocumentEquality implements Equality<ArchetypesRecord> {
  const ArchetypesRecordDocumentEquality();

  @override
  bool equals(ArchetypesRecord? e1, ArchetypesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.personalityProfile == e2?.personalityProfile &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description &&
        e1?.toxicityBaseline == e2?.toxicityBaseline &&
        e1?.voiceId == e2?.voiceId &&
        e1?.voiceStyle == e2?.voiceStyle;
  }

  @override
  int hash(ArchetypesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.personalityProfile,
        e?.image,
        e?.description,
        e?.toxicityBaseline,
        e?.voiceId,
        e?.voiceStyle
      ]);

  @override
  bool isValidKey(Object? o) => o is ArchetypesRecord;
}
