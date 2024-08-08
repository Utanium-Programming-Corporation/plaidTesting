// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TokenStruct extends FFFirebaseStruct {
  TokenStruct({
    String? accessToken,
    String? tokenId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _accessToken = accessToken,
        _tokenId = tokenId,
        super(firestoreUtilData);

  // "accessToken" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "tokenId" field.
  String? _tokenId;
  String get tokenId => _tokenId ?? '';
  set tokenId(String? val) => _tokenId = val;

  bool hasTokenId() => _tokenId != null;

  static TokenStruct fromMap(Map<String, dynamic> data) => TokenStruct(
        accessToken: data['accessToken'] as String?,
        tokenId: data['tokenId'] as String?,
      );

  static TokenStruct? maybeFromMap(dynamic data) =>
      data is Map ? TokenStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'accessToken': _accessToken,
        'tokenId': _tokenId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accessToken': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'tokenId': serializeParam(
          _tokenId,
          ParamType.String,
        ),
      }.withoutNulls;

  static TokenStruct fromSerializableMap(Map<String, dynamic> data) =>
      TokenStruct(
        accessToken: deserializeParam(
          data['accessToken'],
          ParamType.String,
          false,
        ),
        tokenId: deserializeParam(
          data['tokenId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TokenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TokenStruct &&
        accessToken == other.accessToken &&
        tokenId == other.tokenId;
  }

  @override
  int get hashCode => const ListEquality().hash([accessToken, tokenId]);
}

TokenStruct createTokenStruct({
  String? accessToken,
  String? tokenId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TokenStruct(
      accessToken: accessToken,
      tokenId: tokenId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TokenStruct? updateTokenStruct(
  TokenStruct? token, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    token
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTokenStructData(
  Map<String, dynamic> firestoreData,
  TokenStruct? token,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (token == null) {
    return;
  }
  if (token.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && token.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tokenData = getTokenFirestoreData(token, forFieldValue);
  final nestedData = tokenData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = token.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTokenFirestoreData(
  TokenStruct? token, [
  bool forFieldValue = false,
]) {
  if (token == null) {
    return {};
  }
  final firestoreData = mapToFirestore(token.toMap());

  // Add any Firestore field values
  token.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTokenListFirestoreData(
  List<TokenStruct>? tokens,
) =>
    tokens?.map((e) => getTokenFirestoreData(e, true)).toList() ?? [];
