import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

bool isSavetime(
  List<double> priceList,
  double maxPrice,
) {
  double sum = 0.0;
  for (var i in priceList) {
    sum += i;
  }

  return sum > 0 && sum < maxPrice;
}

double getSum(List<double> priceList) {
  double sum = 0.0;
  for (var i in priceList) {
    sum += i;
  }
  return sum;
}

bool oneSelected(List<bool> selectedList) {
  int j = 0;
  for (var i in selectedList) {
    if (i == true) {
      j += 1;
    }
  }

  if (j > 0) {
    return true;
  } else {
    return false;
  }
}

String? cardImgFromName(
  List<CardStruct> cardsList,
  String name,
) {
  for (var card in cardsList) {
    if (card.cardName == name) {
      return card.cardImg;
    }
  }
}

List<BudgetCategoryStruct>? getUserCategory(
  List<CardStruct> cards,
  double alloted,
) {
  List<BudgetCategoryStruct>? userCategoryList;
  for (var i in cards) {
    if (i.setPricing > 0) {
      BudgetCategoryStruct? userCategory;
      userCategory?.name = i.cardName;
      userCategory?.color = i.color;
      userCategory?.rate = i.setPricing * 100 / alloted;
      userCategoryList!.add(userCategory!);
    }
  }

  return userCategoryList;
}

String getFlagURL(String countryName) {
  String baseUrl = "http://www.oorsprong.org/WebSamples.CountryInfo/Flags/";

  // Format the country name to match the file naming convention
  // Assuming the convention is that all file names are in PascalCase without spaces
  String formattedCountryName = countryName.replaceAll(' ', '').toLowerCase();

  // Return the full URL
  return "$baseUrl$formattedCountryName.jpg";
}
