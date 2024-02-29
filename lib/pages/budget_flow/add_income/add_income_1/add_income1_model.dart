import '/components/my_radio_1/my_radio1_widget.dart';
import '/components/save_income_button/save_income_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_income1_widget.dart' show AddIncome1Widget;
import 'package:flutter/material.dart';

class AddIncome1Model extends FlutterFlowModel<AddIncome1Widget> {
  ///  Local state fields for this page.

  bool isFilled1 = false;

  bool isFilled2 = false;

  bool isFilled3 = false;

  String? dateTime;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for my_radio_1 component.
  late MyRadio1Model myRadio1Model;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for save_income_button component.
  late SaveIncomeButtonModel saveIncomeButtonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    myRadio1Model = createModel(context, () => MyRadio1Model());
    saveIncomeButtonModel = createModel(context, () => SaveIncomeButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    myRadio1Model.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    saveIncomeButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
