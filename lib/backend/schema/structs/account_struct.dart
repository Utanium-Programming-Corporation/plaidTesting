// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountStruct extends FFFirebaseStruct {
  AccountStruct({
    String? accountId,
    BalancesStruct? balances,
    String? mask,
    String? name,
    String? officialName,
    String? persistentAccountId,
    String? subtype,
    String? type,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _accountId = accountId,
        _balances = balances,
        _mask = mask,
        _name = name,
        _officialName = officialName,
        _persistentAccountId = persistentAccountId,
        _subtype = subtype,
        _type = type,
        super(firestoreUtilData);

  // "account_id" field.
  String? _accountId;
  String get accountId => _accountId ?? '';
  set accountId(String? val) => _accountId = val;

  bool hasAccountId() => _accountId != null;

  // "balances" field.
  BalancesStruct? _balances;
  BalancesStruct get balances => _balances ?? BalancesStruct();
  set balances(BalancesStruct? val) => _balances = val;

  void updateBalances(Function(BalancesStruct) updateFn) {
    updateFn(_balances ??= BalancesStruct());
  }

  bool hasBalances() => _balances != null;

  // "mask" field.
  String? _mask;
  String get mask => _mask ?? '';
  set mask(String? val) => _mask = val;

  bool hasMask() => _mask != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "official_name" field.
  String? _officialName;
  String get officialName => _officialName ?? '';
  set officialName(String? val) => _officialName = val;

  bool hasOfficialName() => _officialName != null;

  // "persistent_account_id" field.
  String? _persistentAccountId;
  String get persistentAccountId => _persistentAccountId ?? '';
  set persistentAccountId(String? val) => _persistentAccountId = val;

  bool hasPersistentAccountId() => _persistentAccountId != null;

  // "subtype" field.
  String? _subtype;
  String get subtype => _subtype ?? '';
  set subtype(String? val) => _subtype = val;

  bool hasSubtype() => _subtype != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static AccountStruct fromMap(Map<String, dynamic> data) => AccountStruct(
        accountId: data['account_id'] as String?,
        balances: BalancesStruct.maybeFromMap(data['balances']),
        mask: data['mask'] as String?,
        name: data['name'] as String?,
        officialName: data['official_name'] as String?,
        persistentAccountId: data['persistent_account_id'] as String?,
        subtype: data['subtype'] as String?,
        type: data['type'] as String?,
      );

  static AccountStruct? maybeFromMap(dynamic data) =>
      data is Map ? AccountStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'account_id': _accountId,
        'balances': _balances?.toMap(),
        'mask': _mask,
        'name': _name,
        'official_name': _officialName,
        'persistent_account_id': _persistentAccountId,
        'subtype': _subtype,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'account_id': serializeParam(
          _accountId,
          ParamType.String,
        ),
        'balances': serializeParam(
          _balances,
          ParamType.DataStruct,
        ),
        'mask': serializeParam(
          _mask,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'official_name': serializeParam(
          _officialName,
          ParamType.String,
        ),
        'persistent_account_id': serializeParam(
          _persistentAccountId,
          ParamType.String,
        ),
        'subtype': serializeParam(
          _subtype,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static AccountStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccountStruct(
        accountId: deserializeParam(
          data['account_id'],
          ParamType.String,
          false,
        ),
        balances: deserializeStructParam(
          data['balances'],
          ParamType.DataStruct,
          false,
          structBuilder: BalancesStruct.fromSerializableMap,
        ),
        mask: deserializeParam(
          data['mask'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        officialName: deserializeParam(
          data['official_name'],
          ParamType.String,
          false,
        ),
        persistentAccountId: deserializeParam(
          data['persistent_account_id'],
          ParamType.String,
          false,
        ),
        subtype: deserializeParam(
          data['subtype'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AccountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountStruct &&
        accountId == other.accountId &&
        balances == other.balances &&
        mask == other.mask &&
        name == other.name &&
        officialName == other.officialName &&
        persistentAccountId == other.persistentAccountId &&
        subtype == other.subtype &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accountId,
        balances,
        mask,
        name,
        officialName,
        persistentAccountId,
        subtype,
        type
      ]);
}

AccountStruct createAccountStruct({
  String? accountId,
  BalancesStruct? balances,
  String? mask,
  String? name,
  String? officialName,
  String? persistentAccountId,
  String? subtype,
  String? type,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AccountStruct(
      accountId: accountId,
      balances: balances ?? (clearUnsetFields ? BalancesStruct() : null),
      mask: mask,
      name: name,
      officialName: officialName,
      persistentAccountId: persistentAccountId,
      subtype: subtype,
      type: type,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AccountStruct? updateAccountStruct(
  AccountStruct? account, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    account
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAccountStructData(
  Map<String, dynamic> firestoreData,
  AccountStruct? account,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (account == null) {
    return;
  }
  if (account.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && account.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final accountData = getAccountFirestoreData(account, forFieldValue);
  final nestedData = accountData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = account.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAccountFirestoreData(
  AccountStruct? account, [
  bool forFieldValue = false,
]) {
  if (account == null) {
    return {};
  }
  final firestoreData = mapToFirestore(account.toMap());

  // Handle nested data for "balances" field.
  addBalancesStructData(
    firestoreData,
    account.hasBalances() ? account.balances : null,
    'balances',
    forFieldValue,
  );

  // Add any Firestore field values
  account.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAccountListFirestoreData(
  List<AccountStruct>? accounts,
) =>
    accounts?.map((e) => getAccountFirestoreData(e, true)).toList() ?? [];
