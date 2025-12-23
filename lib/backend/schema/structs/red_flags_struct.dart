// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RedFlagsStruct extends FFFirebaseStruct {
  RedFlagsStruct({
    String? redFlagName,
    String? definition,
    String? realExample,
    List<String>? symptoms,
    String? riskLevel,
    String? colorHex,
    String? telefono,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _redFlagName = redFlagName,
        _definition = definition,
        _realExample = realExample,
        _symptoms = symptoms,
        _riskLevel = riskLevel,
        _colorHex = colorHex,
        _telefono = telefono,
        super(firestoreUtilData);

  // "redFlagName" field.
  String? _redFlagName;
  String get redFlagName => _redFlagName ?? '';
  set redFlagName(String? val) => _redFlagName = val;

  bool hasRedFlagName() => _redFlagName != null;

  // "definition" field.
  String? _definition;
  String get definition => _definition ?? '';
  set definition(String? val) => _definition = val;

  bool hasDefinition() => _definition != null;

  // "realExample" field.
  String? _realExample;
  String get realExample => _realExample ?? '';
  set realExample(String? val) => _realExample = val;

  bool hasRealExample() => _realExample != null;

  // "symptoms" field.
  List<String>? _symptoms;
  List<String> get symptoms => _symptoms ?? const [];
  set symptoms(List<String>? val) => _symptoms = val;

  void updateSymptoms(Function(List<String>) updateFn) {
    updateFn(_symptoms ??= []);
  }

  bool hasSymptoms() => _symptoms != null;

  // "riskLevel" field.
  String? _riskLevel;
  String get riskLevel => _riskLevel ?? '';
  set riskLevel(String? val) => _riskLevel = val;

  bool hasRiskLevel() => _riskLevel != null;

  // "colorHex" field.
  String? _colorHex;
  String get colorHex => _colorHex ?? '';
  set colorHex(String? val) => _colorHex = val;

  bool hasColorHex() => _colorHex != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  set telefono(String? val) => _telefono = val;

  bool hasTelefono() => _telefono != null;

  static RedFlagsStruct fromMap(Map<String, dynamic> data) => RedFlagsStruct(
        redFlagName: data['redFlagName'] as String?,
        definition: data['definition'] as String?,
        realExample: data['realExample'] as String?,
        symptoms: getDataList(data['symptoms']),
        riskLevel: data['riskLevel'] as String?,
        colorHex: data['colorHex'] as String?,
        telefono: data['telefono'] as String?,
      );

  static RedFlagsStruct? maybeFromMap(dynamic data) =>
      data is Map ? RedFlagsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'redFlagName': _redFlagName,
        'definition': _definition,
        'realExample': _realExample,
        'symptoms': _symptoms,
        'riskLevel': _riskLevel,
        'colorHex': _colorHex,
        'telefono': _telefono,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'redFlagName': serializeParam(
          _redFlagName,
          ParamType.String,
        ),
        'definition': serializeParam(
          _definition,
          ParamType.String,
        ),
        'realExample': serializeParam(
          _realExample,
          ParamType.String,
        ),
        'symptoms': serializeParam(
          _symptoms,
          ParamType.String,
          isList: true,
        ),
        'riskLevel': serializeParam(
          _riskLevel,
          ParamType.String,
        ),
        'colorHex': serializeParam(
          _colorHex,
          ParamType.String,
        ),
        'telefono': serializeParam(
          _telefono,
          ParamType.String,
        ),
      }.withoutNulls;

  static RedFlagsStruct fromSerializableMap(Map<String, dynamic> data) =>
      RedFlagsStruct(
        redFlagName: deserializeParam(
          data['redFlagName'],
          ParamType.String,
          false,
        ),
        definition: deserializeParam(
          data['definition'],
          ParamType.String,
          false,
        ),
        realExample: deserializeParam(
          data['realExample'],
          ParamType.String,
          false,
        ),
        symptoms: deserializeParam<String>(
          data['symptoms'],
          ParamType.String,
          true,
        ),
        riskLevel: deserializeParam(
          data['riskLevel'],
          ParamType.String,
          false,
        ),
        colorHex: deserializeParam(
          data['colorHex'],
          ParamType.String,
          false,
        ),
        telefono: deserializeParam(
          data['telefono'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RedFlagsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RedFlagsStruct &&
        redFlagName == other.redFlagName &&
        definition == other.definition &&
        realExample == other.realExample &&
        listEquality.equals(symptoms, other.symptoms) &&
        riskLevel == other.riskLevel &&
        colorHex == other.colorHex &&
        telefono == other.telefono;
  }

  @override
  int get hashCode => const ListEquality().hash([
        redFlagName,
        definition,
        realExample,
        symptoms,
        riskLevel,
        colorHex,
        telefono
      ]);
}

RedFlagsStruct createRedFlagsStruct({
  String? redFlagName,
  String? definition,
  String? realExample,
  String? riskLevel,
  String? colorHex,
  String? telefono,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RedFlagsStruct(
      redFlagName: redFlagName,
      definition: definition,
      realExample: realExample,
      riskLevel: riskLevel,
      colorHex: colorHex,
      telefono: telefono,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RedFlagsStruct? updateRedFlagsStruct(
  RedFlagsStruct? redFlags, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    redFlags
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRedFlagsStructData(
  Map<String, dynamic> firestoreData,
  RedFlagsStruct? redFlags,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (redFlags == null) {
    return;
  }
  if (redFlags.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && redFlags.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final redFlagsData = getRedFlagsFirestoreData(redFlags, forFieldValue);
  final nestedData = redFlagsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = redFlags.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRedFlagsFirestoreData(
  RedFlagsStruct? redFlags, [
  bool forFieldValue = false,
]) {
  if (redFlags == null) {
    return {};
  }
  final firestoreData = mapToFirestore(redFlags.toMap());

  // Add any Firestore field values
  redFlags.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRedFlagsListFirestoreData(
  List<RedFlagsStruct>? redFlagss,
) =>
    redFlagss?.map((e) => getRedFlagsFirestoreData(e, true)).toList() ?? [];
