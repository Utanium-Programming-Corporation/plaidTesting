import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start plaid Group Code

class PlaidGroup {
  static String getBaseUrl() => 'https://';
  static Map<String, String> headers = {};
  static GetLinkTokenCall getLinkTokenCall = GetLinkTokenCall();
  static GetAccessTokenAndSaveItCall getAccessTokenAndSaveItCall =
      GetAccessTokenAndSaveItCall();
  static GetItemInfoCall getItemInfoCall = GetItemInfoCall();
  static GetItemTransactionsCall getItemTransactionsCall =
      GetItemTransactionsCall();
  static GetUserTransactionsCall getUserTransactionsCall =
      GetUserTransactionsCall();
  static GetItemBalanceCall getItemBalanceCall = GetItemBalanceCall();
}

class GetLinkTokenCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final baseUrl = PlaidGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "userId": "${userId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getLinkToken',
      apiUrl: '${baseUrl}createlinktoken-houkjyjpuq-nw.a.run.app',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.linkToken''',
      ));
}

class GetAccessTokenAndSaveItCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? publicToken = '',
  }) async {
    final baseUrl = PlaidGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "publicToken": "${publicToken}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getAccessTokenAndSaveIt',
      apiUrl: '${baseUrl}getaccesstokenandsaveit-houkjyjpuq-nw.a.run.app',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? itemId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.itemId''',
      ));
  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accessToken''',
      ));
}

class GetItemInfoCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = PlaidGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "accessToken": "${accessToken}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getItemInfo',
      apiUrl: '${baseUrl}getiteminfo-houkjyjpuq-nw.a.run.app',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? bankName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.institution.name''',
      ));
}

class GetItemTransactionsCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = PlaidGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "accessToken": "${accessToken}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getItemTransactions',
      apiUrl: '${baseUrl}getitemtransactions-houkjyjpuq-nw.a.run.app',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<TransactionStruct>? transactions(dynamic response) => (getJsonField(
        response,
        r'''$.transactions''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => TransactionStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class GetUserTransactionsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final baseUrl = PlaidGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "userId": "${userId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getUserTransactions',
      apiUrl: '${baseUrl}getusertransactions-houkjyjpuq-nw.a.run.app',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<TransactionStruct>? transactions(dynamic response) => (getJsonField(
        response,
        r'''$.transactions''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => TransactionStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class GetItemBalanceCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = PlaidGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "accessToken": "${accessToken}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getItemBalance',
      apiUrl: '${baseUrl}getitembalances-houkjyjpuq-nw.a.run.app',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<AccountStruct>? accounts(dynamic response) => (getJsonField(
        response,
        r'''$.accounts''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => AccountStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

/// End plaid Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
