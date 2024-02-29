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

Future<List<dynamic>> getUserData(String userID) async {
  // Add your function code here!
  final apiUrl =
      'https://694zymdk56.execute-api.ap-south-1.amazonaws.com/prod/app/user/$userID';

  List<dynamic> recievedUserData = [];
  try {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      // Parse the JSON response
      final Map<String, dynamic> data = json.decode(response.body);

      // Check if the status is true
      if (data['status'] == true) {
        recievedUserData.add(true);
        recievedUserData.add(data['response']);
        recievedUserData.add(data['message']);
        return recievedUserData;
      } else {
        recievedUserData.add(false);
        recievedUserData.add(data['message']);
        return recievedUserData;
      }
    } else {
      recievedUserData.add(false);
      recievedUserData.add('Failed to load data from the API');
      return recievedUserData;
    }
  } catch (e) {
    recievedUserData.add(false);
    recievedUserData.add(e);
    return recievedUserData;
  }
}
