import '/components/home_bar/home_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'savings_widget.dart' show SavingsWidget;
import 'package:flutter/material.dart';

class SavingsModel extends FlutterFlowModel<SavingsWidget> {
  ///  Local state fields for this page.

  int? savemode;

  double? savingAmount;

  bool spendingDown = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for homeBar component.
  late HomeBarModel homeBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    homeBarModel = createModel(context, () => HomeBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    homeBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
