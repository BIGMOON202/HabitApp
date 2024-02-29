import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetCountriesCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
<?xml version="1.0" encoding="utf-8"?>
<soap12:Envelope xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">
  <soap12:Body>
    <ListOfCountryNamesByName xmlns="http://www.oorsprong.org/websamples.countryinfo">
    </ListOfCountryNamesByName>
  </soap12:Body>
</soap12:Envelope>''';
    return ApiManager.instance.makeApiCall(
      callName: 'getCountries',
      apiUrl:
          'http://webservices.oorsprong.org/websamples.countryinfo/CountryInfoService.wso',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'text/xml; charset=utf-8',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddUserCall {
  static Future<ApiCallResponse> call({
    String? userName = '',
    String? userEmail = '',
    String? oauthProvider = '',
    String? dob = '',
    String? gender = '',
    String? currency = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_name": "$userName",
  "user_email": "$userEmail",
  "oauth_provider": "$oauthProvider",
  "dob": "$dob",
  "gender": "$gender",
  "currency": "$currency"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddUser',
      apiUrl:
          'https://694zymdk56.execute-api.ap-south-1.amazonaws.com/prod/app/user/add',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
