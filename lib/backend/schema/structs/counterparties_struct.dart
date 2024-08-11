// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CounterpartiesStruct extends FFFirebaseStruct {
  CounterpartiesStruct({
    String? confidenceLevel,
    String? entityId,
    String? name,
    String? phoneNumber,
    String? type,
    String? website,
    String? logoUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _confidenceLevel = confidenceLevel,
        _entityId = entityId,
        _name = name,
        _phoneNumber = phoneNumber,
        _type = type,
        _website = website,
        _logoUrl = logoUrl,
        super(firestoreUtilData);

  // "confidence_level" field.
  String? _confidenceLevel;
  String get confidenceLevel => _confidenceLevel ?? '';
  set confidenceLevel(String? val) => _confidenceLevel = val;

  bool hasConfidenceLevel() => _confidenceLevel != null;

  // "entity_id" field.
  String? _entityId;
  String get entityId => _entityId ?? '';
  set entityId(String? val) => _entityId = val;

  bool hasEntityId() => _entityId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  set website(String? val) => _website = val;

  bool hasWebsite() => _website != null;

  // "logo_url" field.
  String? _logoUrl;
  String get logoUrl => _logoUrl ?? '';
  set logoUrl(String? val) => _logoUrl = val;

  bool hasLogoUrl() => _logoUrl != null;

  static CounterpartiesStruct fromMap(Map<String, dynamic> data) =>
      CounterpartiesStruct(
        confidenceLevel: data['confidence_level'] as String?,
        entityId: data['entity_id'] as String?,
        name: data['name'] as String?,
        phoneNumber: data['phone_number'] as String?,
        type: data['type'] as String?,
        website: data['website'] as String?,
        logoUrl: data['logo_url'] as String?,
      );

  static CounterpartiesStruct? maybeFromMap(dynamic data) => data is Map
      ? CounterpartiesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'confidence_level': _confidenceLevel,
        'entity_id': _entityId,
        'name': _name,
        'phone_number': _phoneNumber,
        'type': _type,
        'website': _website,
        'logo_url': _logoUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'confidence_level': serializeParam(
          _confidenceLevel,
          ParamType.String,
        ),
        'entity_id': serializeParam(
          _entityId,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'phone_number': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'website': serializeParam(
          _website,
          ParamType.String,
        ),
        'logo_url': serializeParam(
          _logoUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static CounterpartiesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CounterpartiesStruct(
        confidenceLevel: deserializeParam(
          data['confidence_level'],
          ParamType.String,
          false,
        ),
        entityId: deserializeParam(
          data['entity_id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phone_number'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        website: deserializeParam(
          data['website'],
          ParamType.String,
          false,
        ),
        logoUrl: deserializeParam(
          data['logo_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CounterpartiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CounterpartiesStruct &&
        confidenceLevel == other.confidenceLevel &&
        entityId == other.entityId &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        type == other.type &&
        website == other.website &&
        logoUrl == other.logoUrl;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [confidenceLevel, entityId, name, phoneNumber, type, website, logoUrl]);
}

CounterpartiesStruct createCounterpartiesStruct({
  String? confidenceLevel,
  String? entityId,
  String? name,
  String? phoneNumber,
  String? type,
  String? website,
  String? logoUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CounterpartiesStruct(
      confidenceLevel: confidenceLevel,
      entityId: entityId,
      name: name,
      phoneNumber: phoneNumber,
      type: type,
      website: website,
      logoUrl: logoUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CounterpartiesStruct? updateCounterpartiesStruct(
  CounterpartiesStruct? counterparties, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    counterparties
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCounterpartiesStructData(
  Map<String, dynamic> firestoreData,
  CounterpartiesStruct? counterparties,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (counterparties == null) {
    return;
  }
  if (counterparties.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && counterparties.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final counterpartiesData =
      getCounterpartiesFirestoreData(counterparties, forFieldValue);
  final nestedData =
      counterpartiesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = counterparties.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCounterpartiesFirestoreData(
  CounterpartiesStruct? counterparties, [
  bool forFieldValue = false,
]) {
  if (counterparties == null) {
    return {};
  }
  final firestoreData = mapToFirestore(counterparties.toMap());

  // Add any Firestore field values
  counterparties.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCounterpartiesListFirestoreData(
  List<CounterpartiesStruct>? counterpartiess,
) =>
    counterpartiess
        ?.map((e) => getCounterpartiesFirestoreData(e, true))
        .toList() ??
    [];
