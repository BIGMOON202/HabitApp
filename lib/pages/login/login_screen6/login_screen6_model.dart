import '/components/mybutton/mybutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_screen6_widget.dart' show LoginScreen6Widget;
import 'package:flutter/material.dart';

class LoginScreen6Model extends FlutterFlowModel<LoginScreen6Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    mybuttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
