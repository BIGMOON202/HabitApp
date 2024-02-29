import '/components/home_card/home_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'budget_widget.dart' show BudgetWidget;
import 'package:flutter/material.dart';

class BudgetModel extends FlutterFlowModel<BudgetWidget> {
  ///  Local state fields for this page.

  int? savemode;

  double? savingAmount;

  bool edit = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Slider widget.
  double? sliderValue;
  // Model for HomeCard component.
  late HomeCardModel homeCardModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    homeCardModel = createModel(context, () => HomeCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    homeCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
