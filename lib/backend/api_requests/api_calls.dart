import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetAllCountriesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get all countries',
      apiUrl: 'https://countriesnow.space/api/v0.1/countries/iso',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? jpName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class InitializeTransactionCall {
  static Future<ApiCallResponse> call({
    double? amount,
    String? email = '',
    String? currency = '',
    String? apiKey = '',
  }) async {
    final ffApiRequestBody = '''
{
  "amount": "${amount}",
  "email": "${escapeStringForJson(email)}",
  "currency": "${escapeStringForJson(currency)}",
  "channels": [
    "card",
    "bank",
    "ussd",
    "bank_transfer"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Initialize Transaction',
      apiUrl: 'https://api.paystack.co/transaction/initialize',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'authorization': 'Bearer ${apiKey}',
      },
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

  static String? referenceId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.reference''',
      ));
  static String? paymentLink(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.authorization_url''',
      ));
  static bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? validation(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  static String? secretKey(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
}

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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
