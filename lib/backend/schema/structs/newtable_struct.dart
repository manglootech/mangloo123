// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewtableStruct extends FFFirebaseStruct {
  NewtableStruct({
    String? imagtumbail,
    NewtableStruct? iiiii,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _imagtumbail = imagtumbail,
        _iiiii = iiiii,
        super(firestoreUtilData);

  // "imagtumbail" field.
  String? _imagtumbail;
  String get imagtumbail => _imagtumbail ?? '';
  set imagtumbail(String? val) => _imagtumbail = val;
  bool hasImagtumbail() => _imagtumbail != null;

  // "iiiii" field.
  NewtableStruct? _iiiii;
  NewtableStruct get iiiii => _iiiii ?? NewtableStruct();
  set iiiii(NewtableStruct? val) => _iiiii = val;
  void updateIiiii(Function(NewtableStruct) updateFn) =>
      updateFn(_iiiii ??= NewtableStruct());
  bool hasIiiii() => _iiiii != null;

  static NewtableStruct fromMap(Map<String, dynamic> data) => NewtableStruct(
        imagtumbail: data['imagtumbail'] as String?,
        iiiii: NewtableStruct.maybeFromMap(data['iiiii']),
      );

  static NewtableStruct? maybeFromMap(dynamic data) =>
      data is Map ? NewtableStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'imagtumbail': _imagtumbail,
        'iiiii': _iiiii?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'imagtumbail': serializeParam(
          _imagtumbail,
          ParamType.String,
        ),
        'iiiii': serializeParam(
          _iiiii,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static NewtableStruct fromSerializableMap(Map<String, dynamic> data) =>
      NewtableStruct(
        imagtumbail: deserializeParam(
          data['imagtumbail'],
          ParamType.String,
          false,
        ),
        iiiii: deserializeStructParam(
          data['iiiii'],
          ParamType.DataStruct,
          false,
          structBuilder: NewtableStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'NewtableStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NewtableStruct &&
        imagtumbail == other.imagtumbail &&
        iiiii == other.iiiii;
  }

  @override
  int get hashCode => const ListEquality().hash([imagtumbail, iiiii]);
}

NewtableStruct createNewtableStruct({
  String? imagtumbail,
  NewtableStruct? iiiii,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NewtableStruct(
      imagtumbail: imagtumbail,
      iiiii: iiiii ?? (clearUnsetFields ? NewtableStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NewtableStruct? updateNewtableStruct(
  NewtableStruct? newtable, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    newtable
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNewtableStructData(
  Map<String, dynamic> firestoreData,
  NewtableStruct? newtable,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (newtable == null) {
    return;
  }
  if (newtable.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && newtable.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final newtableData = getNewtableFirestoreData(newtable, forFieldValue);
  final nestedData = newtableData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = newtable.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNewtableFirestoreData(
  NewtableStruct? newtable, [
  bool forFieldValue = false,
]) {
  if (newtable == null) {
    return {};
  }
  final firestoreData = mapToFirestore(newtable.toMap());

  // Handle nested data for "iiiii" field.
  addNewtableStructData(
    firestoreData,
    newtable.hasIiiii() ? newtable.iiiii : null,
    'iiiii',
    forFieldValue,
  );

  // Add any Firestore field values
  newtable.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNewtableListFirestoreData(
  List<NewtableStruct>? newtables,
) =>
    newtables?.map((e) => getNewtableFirestoreData(e, true)).toList() ?? [];
