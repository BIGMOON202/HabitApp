import '/components/category_dropdown/category_dropdown_widget.dart';
import '/components/mybutton/mybutton_widget.dart';
import '/components/switch_button/switch_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'transaction_add_widget.dart' show TransactionAddWidget;
import 'package:flutter/material.dart';

class TransactionAddModel extends FlutterFlowModel<TransactionAddWidget> {
  ///  Local state fields for this page.

  bool isTimePicker = false;

  String? dateTime;

  String? payMode = '';

  List<String> emotionList = [];
  void addToEmotionList(String item) => emotionList.add(item);
  void removeFromEmotionList(String item) => emotionList.remove(item);
  void removeAtIndexFromEmotionList(int index) => emotionList.removeAt(index);
  void insertAtIndexInEmotionList(int index, String item) =>
      emotionList.insert(index, item);
  void updateEmotionListAtIndex(int index, Function(String) updateFn) =>
      emotionList[index] = updateFn(emotionList[index]);

  double? paidAmount;

  String? payFor = '';

  String? category = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for switchButton component.
  late SwitchButtonModel switchButtonModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for CategoryDropdown component.
  late CategoryDropdownModel categoryDropdownModel;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue2;
  FormFieldController<List<String>>? dropDownValueController2;
  // Model for mybutton component.
  late MybuttonModel mybuttonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    switchButtonModel = createModel(context, () => SwitchButtonModel());
    categoryDropdownModel = createModel(context, () => CategoryDropdownModel());
    mybuttonModel = createModel(context, () => MybuttonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    switchButtonModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    categoryDropdownModel.dispose();
    mybuttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
