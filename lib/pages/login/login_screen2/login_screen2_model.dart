import '/backend/api_requests/api_calls.dart';
import '/components/mybutton/mybutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_screen2_widget.dart' show LoginScreen2Widget;
import 'package:flutter/material.dart';

class LoginScreen2Model extends FlutterFlowModel<LoginScreen2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getCountries)] action in login_screen2 widget.
  ApiCallResponse? apiResultkjg;
  // Stores action output result for [Custom Action - getCountries] action in login_screen2 widget.
  List<String>? listOfCountries;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for mybutton component.
  late MybuttonModel mybuttonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mybuttonModel = createModel(context, () => MybuttonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    mybuttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
