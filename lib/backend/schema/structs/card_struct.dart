// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardStruct extends BaseStruct {
  CardStruct({
    String? cardName,
    String? cardImg,
    bool? isSelected,
    double? setPricing,
    Color? color,
  })  : _cardName = cardName,
        _cardImg = cardImg,
        _isSelected = isSelected,
        _setPricing = setPricing,
        _color = color;

  // "cardName" field.
  String? _cardName;
  String get cardName => _cardName ?? '';
  set cardName(String? val) => _cardName = val;
  bool hasCardName() => _cardName != null;

  // "cardImg" field.
  String? _cardImg;
  String get cardImg => _cardImg ?? '';
  set cardImg(String? val) => _cardImg = val;
  bool hasCardImg() => _cardImg != null;

  // "isSelected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;
  bool hasIsSelected() => _isSelected != null;

  // "setPricing" field.
  double? _setPricing;
  double get setPricing => _setPricing ?? 0.0;
  set setPricing(double? val) => _setPricing = val;
  void incrementSetPricing(double amount) => _setPricing = setPricing + amount;
  bool hasSetPricing() => _setPricing != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;
  bool hasColor() => _color != null;

  static CardStruct fromMap(Map<String, dynamic> data) => CardStruct(
        cardName: data['cardName'] as String?,
        cardImg: data['cardImg'] as String?,
        isSelected: data['isSelected'] as bool?,
        setPricing: castToType<double>(data['setPricing']),
        color: getSchemaColor(data['color']),
      );

  static CardStruct? maybeFromMap(dynamic data) =>
      data is Map ? CardStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cardName': _cardName,
        'cardImg': _cardImg,
        'isSelected': _isSelected,
        'setPricing': _setPricing,
        'color': _color,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cardName': serializeParam(
          _cardName,
          ParamType.String,
        ),
        'cardImg': serializeParam(
          _cardImg,
          ParamType.String,
        ),
        'isSelected': serializeParam(
          _isSelected,
          ParamType.bool,
        ),
        'setPricing': serializeParam(
          _setPricing,
          ParamType.double,
        ),
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
      }.withoutNulls;

  static CardStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardStruct(
        cardName: deserializeParam(
          data['cardName'],
          ParamType.String,
          false,
        ),
        cardImg: deserializeParam(
          data['cardImg'],
          ParamType.String,
          false,
        ),
        isSelected: deserializeParam(
          data['isSelected'],
          ParamType.bool,
          false,
        ),
        setPricing: deserializeParam(
          data['setPricing'],
          ParamType.double,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'CardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardStruct &&
        cardName == other.cardName &&
        cardImg == other.cardImg &&
        isSelected == other.isSelected &&
        setPricing == other.setPricing &&
        color == other.color;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([cardName, cardImg, isSelected, setPricing, color]);
}

CardStruct createCardStruct({
  String? cardName,
  String? cardImg,
  bool? isSelected,
  double? setPricing,
  Color? color,
}) =>
    CardStruct(
      cardName: cardName,
      cardImg: cardImg,
      isSelected: isSelected,
      setPricing: setPricing,
      color: color,
    );
