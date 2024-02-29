// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<bool> setUserIncome(
  String userID,
  String setIncome,
) async {
  // Add your function code here!
  final apiUrl =
      'https://694zymdk56.execute-api.ap-south-1.amazonaws.com/prod/app/user/income/$userID';
  final Map<String, dynamic> requestBody = {
    "monthly_income": setIncome,
  };

  try {
    final response = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode(requestBody),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    // Handle any exceptions that occurred during the request
    return false;
  }
}
