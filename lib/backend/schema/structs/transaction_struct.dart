// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionStruct extends FFFirebaseStruct {
  TransactionStruct({
    String? type,
    double? amount,
    List<String>? category,
    List<CounterpartiesStruct>? counterparties,
    String? isoCurrencyCode,
    LocationStruct? location,
    String? date,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _type = type,
        _amount = amount,
        _category = category,
        _counterparties = counterparties,
        _isoCurrencyCode = isoCurrencyCode,
        _location = location,
        _date = date,
        super(firestoreUtilData);

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "category" field.
  List<String>? _category;
  List<String> get category => _category ?? const [];
  set category(List<String>? val) => _category = val;

  void updateCategory(Function(List<String>) updateFn) {
    updateFn(_category ??= []);
  }

  bool hasCategory() => _category != null;

  // "counterparties" field.
  List<CounterpartiesStruct>? _counterparties;
  List<CounterpartiesStruct> get counterparties => _counterparties ?? const [];
  set counterparties(List<CounterpartiesStruct>? val) => _counterparties = val;

  void updateCounterparties(Function(List<CounterpartiesStruct>) updateFn) {
    updateFn(_counterparties ??= []);
  }

  bool hasCounterparties() => _counterparties != null;

  // "iso_currency_code" field.
  String? _isoCurrencyCode;
  String get isoCurrencyCode => _isoCurrencyCode ?? '';
  set isoCurrencyCode(String? val) => _isoCurrencyCode = val;

  bool hasIsoCurrencyCode() => _isoCurrencyCode != null;

  // "location" field.
  LocationStruct? _location;
  LocationStruct get location => _location ?? LocationStruct();
  set location(LocationStruct? val) => _location = val;

  void updateLocation(Function(LocationStruct) updateFn) {
    updateFn(_location ??= LocationStruct());
  }

  bool hasLocation() => _location != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  static TransactionStruct fromMap(Map<String, dynamic> data) =>
      TransactionStruct(
        type: data['type'] as String?,
        amount: castToType<double>(data['amount']),
        category: getDataList(data['category']),
        counterparties: getStructList(
          data['counterparties'],
          CounterpartiesStruct.fromMap,
        ),
        isoCurrencyCode: data['iso_currency_code'] as String?,
        location: LocationStruct.maybeFromMap(data['location']),
        date: data['date'] as String?,
      );

  static TransactionStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'amount': _amount,
        'category': _category,
        'counterparties': _counterparties?.map((e) => e.toMap()).toList(),
        'iso_currency_code': _isoCurrencyCode,
        'location': _location?.toMap(),
        'date': _date,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
          isList: true,
        ),
        'counterparties': serializeParam(
          _counterparties,
          ParamType.DataStruct,
          isList: true,
        ),
        'iso_currency_code': serializeParam(
          _isoCurrencyCode,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.DataStruct,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransactionStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransactionStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        category: deserializeParam<String>(
          data['category'],
          ParamType.String,
          true,
        ),
        counterparties: deserializeStructParam<CounterpartiesStruct>(
          data['counterparties'],
          ParamType.DataStruct,
          true,
          structBuilder: CounterpartiesStruct.fromSerializableMap,
        ),
        isoCurrencyCode: deserializeParam(
          data['iso_currency_code'],
          ParamType.String,
          false,
        ),
        location: deserializeStructParam(
          data['location'],
          ParamType.DataStruct,
          false,
          structBuilder: LocationStruct.fromSerializableMap,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransactionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TransactionStruct &&
        type == other.type &&
        amount == other.amount &&
        listEquality.equals(category, other.category) &&
        listEquality.equals(counterparties, other.counterparties) &&
        isoCurrencyCode == other.isoCurrencyCode &&
        location == other.location &&
        date == other.date;
  }

  @override
  int get hashCode => const ListEquality().hash([
        type,
        amount,
        category,
        counterparties,
        isoCurrencyCode,
        location,
        date
      ]);
}

TransactionStruct createTransactionStruct({
  String? type,
  double? amount,
  String? isoCurrencyCode,
  LocationStruct? location,
  String? date,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TransactionStruct(
      type: type,
      amount: amount,
      isoCurrencyCode: isoCurrencyCode,
      location: location ?? (clearUnsetFields ? LocationStruct() : null),
      date: date,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TransactionStruct? updateTransactionStruct(
  TransactionStruct? transaction, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    transaction
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTransactionStructData(
  Map<String, dynamic> firestoreData,
  TransactionStruct? transaction,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (transaction == null) {
    return;
  }
  if (transaction.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && transaction.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final transactionData =
      getTransactionFirestoreData(transaction, forFieldValue);
  final nestedData =
      transactionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = transaction.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTransactionFirestoreData(
  TransactionStruct? transaction, [
  bool forFieldValue = false,
]) {
  if (transaction == null) {
    return {};
  }
  final firestoreData = mapToFirestore(transaction.toMap());

  // Handle nested data for "location" field.
  addLocationStructData(
    firestoreData,
    transaction.hasLocation() ? transaction.location : null,
    'location',
    forFieldValue,
  );

  // Add any Firestore field values
  transaction.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTransactionListFirestoreData(
  List<TransactionStruct>? transactions,
) =>
    transactions?.map((e) => getTransactionFirestoreData(e, true)).toList() ??
    [];
