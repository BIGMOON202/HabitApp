import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _SaveAmount = prefs.getDouble('ff_SaveAmount') ?? _SaveAmount;
    });
    _safeInit(() {
      _SaveMode = prefs.getInt('ff_SaveMode') ?? _SaveMode;
    });
    _safeInit(() {
      _UserID = prefs.getString('ff_UserID') ?? _UserID;
    });
    _safeInit(() {
      _IsFirstTime = prefs.getBool('ff_IsFirstTime') ?? _IsFirstTime;
    });
    _safeInit(() {
      _GetCurrency = prefs.getString('ff_GetCurrency') ?? _GetCurrency;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isIncomeSet = false;
  bool get isIncomeSet => _isIncomeSet;
  set isIncomeSet(bool value) {
    _isIncomeSet = value;
  }

  int _totalIncome = 24000;
  int get totalIncome => _totalIncome;
  set totalIncome(int value) {
    _totalIncome = value;
  }

  List<CardStruct> _cards = [
    CardStruct.fromSerializableMap(jsonDecode(
        '{"cardName":"Bill","cardImg":"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/coin-habit-hp4dg8/assets/9sqyf123ko6w/Bills.png","setPricing":"0","color":"#d6f9d1"}')),
    CardStruct.fromSerializableMap(jsonDecode(
        '{"cardName":"Commute","cardImg":"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/coin-habit-hp4dg8/assets/aidp3qcoyi4a/Commute.png","setPricing":"0","color":"#b8fff6"}')),
    CardStruct.fromSerializableMap(jsonDecode(
        '{"cardName":"EMI","cardImg":"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/coin-habit-hp4dg8/assets/knpgy8zn9ewx/EMI.png","color":"#85c6c8"}')),
    CardStruct.fromSerializableMap(jsonDecode(
        '{"cardName":"Entertainment","cardImg":"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/coin-habit-hp4dg8/assets/bpwapascge8d/Entertainment.png","color":"#f9d395"}')),
    CardStruct.fromSerializableMap(jsonDecode(
        '{"cardName":"Food","cardImg":"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/coin-habit-hp4dg8/assets/pwa83g286l6f/Food.png","color":"#c2bdfd"}')),
    CardStruct.fromSerializableMap(jsonDecode(
        '{"cardName":"Fuel","cardImg":"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/coin-habit-hp4dg8/assets/fcnblqgblame/Fuel.png","color":"#9bd9ff"}')),
    CardStruct.fromSerializableMap(jsonDecode(
        '{"cardName":"Groceries","cardImg":"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/coin-habit-hp4dg8/assets/pbetz2qbi84m/Groceries.png","color":"#f3c1f8"}')),
    CardStruct.fromSerializableMap(jsonDecode(
        '{"cardName":"Health","cardImg":"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/coin-habit-hp4dg8/assets/o60vdhp4u5k9/Health.png","color":"#bccfff"}')),
    CardStruct.fromSerializableMap(jsonDecode(
        '{"cardName":"Miscellaneous","cardImg":"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/coin-habit-hp4dg8/assets/a6kn7vfteasg/Miscellaneous.png","color":"#ffb5aa"}')),
    CardStruct.fromSerializableMap(jsonDecode(
        '{"cardName":"Rent","cardImg":"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/coin-habit-hp4dg8/assets/l872g1acp032/Rent.png","color":"#cbd7c3"}')),
    CardStruct.fromSerializableMap(jsonDecode(
        '{"cardName":"Shopping","cardImg":"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/coin-habit-hp4dg8/assets/mjqmq6pwdscf/Shopping.png","color":"#c49bbbe6"}'))
  ];
  List<CardStruct> get cards => _cards;
  set cards(List<CardStruct> value) {
    _cards = value;
  }

  void addToCards(CardStruct value) {
    _cards.add(value);
  }

  void removeFromCards(CardStruct value) {
    _cards.remove(value);
  }

  void removeAtIndexFromCards(int index) {
    _cards.removeAt(index);
  }

  void updateCardsAtIndex(
    int index,
    CardStruct Function(CardStruct) updateFn,
  ) {
    _cards[index] = updateFn(_cards[index]);
  }

  void insertAtIndexInCards(int index, CardStruct value) {
    _cards.insert(index, value);
  }

  bool _warning = false;
  bool get warning => _warning;
  set warning(bool value) {
    _warning = value;
  }

  List<Color> _CategoryColor = [
    const Color(0xffd6f9d1),
    const Color(0xffb8fff6),
    const Color(0xff85c6c8),
    const Color(0xfff9d395),
    const Color(0xffc2bdfd),
    const Color(0xff9bd9ff),
    const Color(0xfff3c1f8),
    const Color(0xffbccfff),
    const Color(0xffffb5aa),
    const Color(0xffcbd7c3),
    const Color(0xffc49bbb)
  ];
  List<Color> get CategoryColor => _CategoryColor;
  set CategoryColor(List<Color> value) {
    _CategoryColor = value;
  }

  void addToCategoryColor(Color value) {
    _CategoryColor.add(value);
  }

  void removeFromCategoryColor(Color value) {
    _CategoryColor.remove(value);
  }

  void removeAtIndexFromCategoryColor(int index) {
    _CategoryColor.removeAt(index);
  }

  void updateCategoryColorAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    _CategoryColor[index] = updateFn(_CategoryColor[index]);
  }

  void insertAtIndexInCategoryColor(int index, Color value) {
    _CategoryColor.insert(index, value);
  }

  List<BudgetCategoryStruct> _budgetTypes = [
    BudgetCategoryStruct.fromSerializableMap(
        jsonDecode('{"name":"Bills","color":"#d6f9d1"}')),
    BudgetCategoryStruct.fromSerializableMap(
        jsonDecode('{"name":"Commute","color":"#b8fff6"}')),
    BudgetCategoryStruct.fromSerializableMap(
        jsonDecode('{"name":"EMI","color":"#85c6c8"}')),
    BudgetCategoryStruct.fromSerializableMap(
        jsonDecode('{"name":"Entertainment","color":"#f9d395"}')),
    BudgetCategoryStruct.fromSerializableMap(
        jsonDecode('{"name":"Food","color":"#c2bdfd"}')),
    BudgetCategoryStruct.fromSerializableMap(
        jsonDecode('{"name":"Fuel","color":"#9bd9ff"}')),
    BudgetCategoryStruct.fromSerializableMap(
        jsonDecode('{"name":"Groceries","color":"#f3c1f8"}')),
    BudgetCategoryStruct.fromSerializableMap(
        jsonDecode('{"name":"Health","color":"#bccfff"}')),
    BudgetCategoryStruct.fromSerializableMap(
        jsonDecode('{"name":"Miscellaneous","color":"#ffb5aa"}')),
    BudgetCategoryStruct.fromSerializableMap(
        jsonDecode('{"name":"Rent","color":"#cbd7c3"}')),
    BudgetCategoryStruct.fromSerializableMap(
        jsonDecode('{"name":"Shopping","color":"#c49bbb"}'))
  ];
  List<BudgetCategoryStruct> get budgetTypes => _budgetTypes;
  set budgetTypes(List<BudgetCategoryStruct> value) {
    _budgetTypes = value;
  }

  void addToBudgetTypes(BudgetCategoryStruct value) {
    _budgetTypes.add(value);
  }

  void removeFromBudgetTypes(BudgetCategoryStruct value) {
    _budgetTypes.remove(value);
  }

  void removeAtIndexFromBudgetTypes(int index) {
    _budgetTypes.removeAt(index);
  }

  void updateBudgetTypesAtIndex(
    int index,
    BudgetCategoryStruct Function(BudgetCategoryStruct) updateFn,
  ) {
    _budgetTypes[index] = updateFn(_budgetTypes[index]);
  }

  void insertAtIndexInBudgetTypes(int index, BudgetCategoryStruct value) {
    _budgetTypes.insert(index, value);
  }

  List<BudgetCategoryStruct> _classicBudgetTemplate = [
    BudgetCategoryStruct.fromSerializableMap(jsonDecode(
        '{"name":"Food","color":"#c2bdfd","rate":"25"}')),
    BudgetCategoryStruct.fromSerializableMap(jsonDecode(
        '{"name":"Miscellaneous","color":"#ffb5aa","rate":"20"}')),
    BudgetCategoryStruct.fromSerializableMap(jsonDecode(
        '{"name":"Rent","color":"#cbd7c3","rate":"20"}')),
    BudgetCategoryStruct.fromSerializableMap(jsonDecode(
        '{"name":"Bills","color":"#d6f9d1","rate":"20"}')),
    BudgetCategoryStruct.fromSerializableMap(jsonDecode(
        '{"name":"Fuel","color":"#9bd9ff","rate":"10"}')),
    BudgetCategoryStruct.fromSerializableMap(jsonDecode(
        '{"name":"Entertainment","color":"#f9d395","rate":"5"}'))
  ];
  List<BudgetCategoryStruct> get classicBudgetTemplate =>
      _classicBudgetTemplate;
  set classicBudgetTemplate(List<BudgetCategoryStruct> value) {
    _classicBudgetTemplate = value;
  }

  void addToClassicBudgetTemplate(BudgetCategoryStruct value) {
    _classicBudgetTemplate.add(value);
  }

  void removeFromClassicBudgetTemplate(BudgetCategoryStruct value) {
    _classicBudgetTemplate.remove(value);
  }

  void removeAtIndexFromClassicBudgetTemplate(int index) {
    _classicBudgetTemplate.removeAt(index);
  }

  void updateClassicBudgetTemplateAtIndex(
    int index,
    BudgetCategoryStruct Function(BudgetCategoryStruct) updateFn,
  ) {
    _classicBudgetTemplate[index] = updateFn(_classicBudgetTemplate[index]);
  }

  void insertAtIndexInClassicBudgetTemplate(
      int index, BudgetCategoryStruct value) {
    _classicBudgetTemplate.insert(index, value);
  }

  List<BudgetCategoryStruct> _basicBudgetTemplate = [
    BudgetCategoryStruct.fromSerializableMap(jsonDecode(
        '{"name":"Food","color":"#c2bdfd","rate":"30"}')),
    BudgetCategoryStruct.fromSerializableMap(jsonDecode(
        '{"name":"Commute","color":"#b8fff6","rate":"30"}')),
    BudgetCategoryStruct.fromSerializableMap(jsonDecode(
        '{"name":"Bills","color":"#d6f9d1","rate":"20"}')),
    BudgetCategoryStruct.fromSerializableMap(
        jsonDecode('{"name":"Rent","color":"#cbd7c3","rate":"20"}'))
  ];
  List<BudgetCategoryStruct> get basicBudgetTemplate => _basicBudgetTemplate;
  set basicBudgetTemplate(List<BudgetCategoryStruct> value) {
    _basicBudgetTemplate = value;
  }

  void addToBasicBudgetTemplate(BudgetCategoryStruct value) {
    _basicBudgetTemplate.add(value);
  }

  void removeFromBasicBudgetTemplate(BudgetCategoryStruct value) {
    _basicBudgetTemplate.remove(value);
  }

  void removeAtIndexFromBasicBudgetTemplate(int index) {
    _basicBudgetTemplate.removeAt(index);
  }

  void updateBasicBudgetTemplateAtIndex(
    int index,
    BudgetCategoryStruct Function(BudgetCategoryStruct) updateFn,
  ) {
    _basicBudgetTemplate[index] = updateFn(_basicBudgetTemplate[index]);
  }

  void insertAtIndexInBasicBudgetTemplate(
      int index, BudgetCategoryStruct value) {
    _basicBudgetTemplate.insert(index, value);
  }

  String _selectedPage = 'home';
  String get selectedPage => _selectedPage;
  set selectedPage(String value) {
    _selectedPage = value;
  }

  double _SaveAmount = 0.0;
  double get SaveAmount => _SaveAmount;
  set SaveAmount(double value) {
    _SaveAmount = value;
    prefs.setDouble('ff_SaveAmount', value);
  }

  int _SaveMode = 0;
  int get SaveMode => _SaveMode;
  set SaveMode(int value) {
    _SaveMode = value;
    prefs.setInt('ff_SaveMode', value);
  }

  List<BudgetCategoryStruct> _UserBudgetCategory = [];
  List<BudgetCategoryStruct> get UserBudgetCategory => _UserBudgetCategory;
  set UserBudgetCategory(List<BudgetCategoryStruct> value) {
    _UserBudgetCategory = value;
  }

  void addToUserBudgetCategory(BudgetCategoryStruct value) {
    _UserBudgetCategory.add(value);
  }

  void removeFromUserBudgetCategory(BudgetCategoryStruct value) {
    _UserBudgetCategory.remove(value);
  }

  void removeAtIndexFromUserBudgetCategory(int index) {
    _UserBudgetCategory.removeAt(index);
  }

  void updateUserBudgetCategoryAtIndex(
    int index,
    BudgetCategoryStruct Function(BudgetCategoryStruct) updateFn,
  ) {
    _UserBudgetCategory[index] = updateFn(_UserBudgetCategory[index]);
  }

  void insertAtIndexInUserBudgetCategory(
      int index, BudgetCategoryStruct value) {
    _UserBudgetCategory.insert(index, value);
  }

  String _UserID = '268784616380';
  String get UserID => _UserID;
  set UserID(String value) {
    _UserID = value;
    prefs.setString('ff_UserID', value);
  }

  bool _IsFirstTime = true;
  bool get IsFirstTime => _IsFirstTime;
  set IsFirstTime(bool value) {
    _IsFirstTime = value;
    prefs.setBool('ff_IsFirstTime', value);
  }

  String _UserName = '';
  String get UserName => _UserName;
  set UserName(String value) {
    _UserName = value;
  }

  String _UserEmail = '';
  String get UserEmail => _UserEmail;
  set UserEmail(String value) {
    _UserEmail = value;
  }

  String _OauthProvider = '';
  String get OauthProvider => _OauthProvider;
  set OauthProvider(String value) {
    _OauthProvider = value;
  }

  String _Gender = '';
  String get Gender => _Gender;
  set Gender(String value) {
    _Gender = value;
  }

  String _Currency = '';
  String get Currency => _Currency;
  set Currency(String value) {
    _Currency = value;
  }

  String _Age = '';
  String get Age => _Age;
  set Age(String value) {
    _Age = value;
  }

  List<String> _Countries = [];
  List<String> get Countries => _Countries;
  set Countries(List<String> value) {
    _Countries = value;
  }

  void addToCountries(String value) {
    _Countries.add(value);
  }

  void removeFromCountries(String value) {
    _Countries.remove(value);
  }

  void removeAtIndexFromCountries(int index) {
    _Countries.removeAt(index);
  }

  void updateCountriesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _Countries[index] = updateFn(_Countries[index]);
  }

  void insertAtIndexInCountries(int index, String value) {
    _Countries.insert(index, value);
  }

  String _GetCurrency = ' ';
  String get GetCurrency => _GetCurrency;
  set GetCurrency(String value) {
    _GetCurrency = value;
    prefs.setString('ff_GetCurrency', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
