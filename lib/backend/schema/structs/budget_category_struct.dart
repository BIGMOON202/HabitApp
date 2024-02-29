// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BudgetCategoryStruct extends BaseStruct {
  BudgetCategoryStruct({
    String? name,
    Color? color,
    double? rate,
  })  : _name = name,
        _color = color,
        _rate = rate;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;
  bool hasColor() => _color != null;

  // "rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  set rate(double? val) => _rate = val;
  void incrementRate(double amount) => _rate = rate + amount;
  bool hasRate() => _rate != null;

  static BudgetCategoryStruct fromMap(Map<String, dynamic> data) =>
      BudgetCategoryStruct(
        name: data['name'] as String?,
        color: getSchemaColor(data['color']),
        rate: castToType<double>(data['rate']),
      );

  static BudgetCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? BudgetCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'color': _color,
        'rate': _rate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
        'rate': serializeParam(
          _rate,
          ParamType.double,
        ),
      }.withoutNulls;

  static BudgetCategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      BudgetCategoryStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
        rate: deserializeParam(
          data['rate'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'BudgetCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BudgetCategoryStruct &&
        name == other.name &&
        color == other.color &&
        rate == other.rate;
  }

  @override
  int get hashCode => const ListEquality().hash([name, color, rate]);
}

BudgetCategoryStruct createBudgetCategoryStruct({
  String? name,
  Color? color,
  double? rate,
}) =>
    BudgetCategoryStruct(
      name: name,
      color: color,
      rate: rate,
    );
