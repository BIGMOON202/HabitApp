import '/components/mybutton/mybutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'on_boarding1_widget.dart' show OnBoarding1Widget;
import 'package:flutter/material.dart';

class OnBoarding1Model extends FlutterFlowModel<OnBoarding1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
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
    mybuttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
