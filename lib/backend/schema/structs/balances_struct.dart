// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BalancesStruct extends FFFirebaseStruct {
  BalancesStruct({
    int? available,
    int? current,
    String? isoCurrencyCode,
    String? limit,
    String? unofficialCurrencyCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _available = available,
        _current = current,
        _isoCurrencyCode = isoCurrencyCode,
        _limit = limit,
        _unofficialCurrencyCode = unofficialCurrencyCode,
        super(firestoreUtilData);

  // "available" field.
  int? _available;
  int get available => _available ?? 0;
  set available(int? val) => _available = val;

  void incrementAvailable(int amount) => available = available + amount;

  bool hasAvailable() => _available != null;

  // "current" field.
  int? _current;
  int get current => _current ?? 0;
  set current(int? val) => _current = val;

  void incrementCurrent(int amount) => current = current + amount;

  bool hasCurrent() => _current != null;

  // "iso_currency_code" field.
  String? _isoCurrencyCode;
  String get isoCurrencyCode => _isoCurrencyCode ?? '';
  set isoCurrencyCode(String? val) => _isoCurrencyCode = val;

  bool hasIsoCurrencyCode() => _isoCurrencyCode != null;

  // "limit" field.
  String? _limit;
  String get limit => _limit ?? '';
  set limit(String? val) => _limit = val;

  bool hasLimit() => _limit != null;

  // "unofficial_currency_code" field.
  String? _unofficialCurrencyCode;
  String get unofficialCurrencyCode => _unofficialCurrencyCode ?? '';
  set unofficialCurrencyCode(String? val) => _unofficialCurrencyCode = val;

  bool hasUnofficialCurrencyCode() => _unofficialCurrencyCode != null;

  static BalancesStruct fromMap(Map<String, dynamic> data) => BalancesStruct(
        available: castToType<int>(data['available']),
        current: castToType<int>(data['current']),
        isoCurrencyCode: data['iso_currency_code'] as String?,
        limit: data['limit'] as String?,
        unofficialCurrencyCode: data['unofficial_currency_code'] as String?,
      );

  static BalancesStruct? maybeFromMap(dynamic data) =>
      data is Map ? BalancesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'available': _available,
        'current': _current,
        'iso_currency_code': _isoCurrencyCode,
        'limit': _limit,
        'unofficial_currency_code': _unofficialCurrencyCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'available': serializeParam(
          _available,
          ParamType.int,
        ),
        'current': serializeParam(
          _current,
          ParamType.int,
        ),
        'iso_currency_code': serializeParam(
          _isoCurrencyCode,
          ParamType.String,
        ),
        'limit': serializeParam(
          _limit,
          ParamType.String,
        ),
        'unofficial_currency_code': serializeParam(
          _unofficialCurrencyCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static BalancesStruct fromSerializableMap(Map<String, dynamic> data) =>
      BalancesStruct(
        available: deserializeParam(
          data['available'],
          ParamType.int,
          false,
        ),
        current: deserializeParam(
          data['current'],
          ParamType.int,
          false,
        ),
        isoCurrencyCode: deserializeParam(
          data['iso_currency_code'],
          ParamType.String,
          false,
        ),
        limit: deserializeParam(
          data['limit'],
          ParamType.String,
          false,
        ),
        unofficialCurrencyCode: deserializeParam(
          data['unofficial_currency_code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BalancesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BalancesStruct &&
        available == other.available &&
        current == other.current &&
        isoCurrencyCode == other.isoCurrencyCode &&
        limit == other.limit &&
        unofficialCurrencyCode == other.unofficialCurrencyCode;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [available, current, isoCurrencyCode, limit, unofficialCurrencyCode]);
}

BalancesStruct createBalancesStruct({
  int? available,
  int? current,
  String? isoCurrencyCode,
  String? limit,
  String? unofficialCurrencyCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BalancesStruct(
      available: available,
      current: current,
      isoCurrencyCode: isoCurrencyCode,
      limit: limit,
      unofficialCurrencyCode: unofficialCurrencyCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BalancesStruct? updateBalancesStruct(
  BalancesStruct? balances, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    balances
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBalancesStructData(
  Map<String, dynamic> firestoreData,
  BalancesStruct? balances,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (balances == null) {
    return;
  }
  if (balances.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && balances.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final balancesData = getBalancesFirestoreData(balances, forFieldValue);
  final nestedData = balancesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = balances.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBalancesFirestoreData(
  BalancesStruct? balances, [
  bool forFieldValue = false,
]) {
  if (balances == null) {
    return {};
  }
  final firestoreData = mapToFirestore(balances.toMap());

  // Add any Firestore field values
  balances.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBalancesListFirestoreData(
  List<BalancesStruct>? balancess,
) =>
    balancess?.map((e) => getBalancesFirestoreData(e, true)).toList() ?? [];
