import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AnalyzeConversationCall {
  static Future<ApiCallResponse> call({
    String? conversationTranscript = '',
  }) async {
    final ffApiRequestBody = '''
{
  "text": "\$text",
  "imageBase64": "\$imageBase64",
  "userId": "\$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AnalyzeConversation',
      apiUrl:
          'https://us-central1-toximetro-5d49a.cloudfunctions.net/analyzeConversation',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer YOUR_OPENAI_API_KEY',
        'Content-Type': 'application/json',
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

  static dynamic overallScore(dynamic response) => getJsonField(
        response,
        r'''$.overallScore''',
      );
  static dynamic toxicityLevel(dynamic response) => getJsonField(
        response,
        r'''$.toxicityLevel''',
      );
}

class GenerateVoiceCall {
  static Future<ApiCallResponse> call({
    String? voiceId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "text": "{ai_response}",
  "model_id": "eleven_multilingual_v2",
  "voice_settings": {
    "stability": 0.55,
    "similarity_boost": 0.75,
    "style": 0.55,
    "use_speaker_boost": true
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GenerateVoice',
      apiUrl: 'https://api.elevenlabs.io/v1/text-to-speech/${voiceId}',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'xi-api-key': '{ENV-elevenlabs_api_key}',
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
