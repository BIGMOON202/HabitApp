// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;

Future<dynamic> getUserBudget(String userID) async {
  // Add your function code here!
  var url = Uri.parse(
      'https://694zymdk56.execute-api.ap-south-1.amazonaws.com/prod/app/user/budget/${userID}');
  try {
    var response = await http.get(url);
    return response;
  } catch (e) {
    print('Error: $e');
  }
}
