import '/components/allot_budget/allot_budget_widget.dart';
import '/components/commute_card/commute_card_widget.dart';
import '/components/mybutton/mybutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'budget_custom_widget.dart' show BudgetCustomWidget;
import 'package:flutter/material.dart';

class BudgetCustomModel extends FlutterFlowModel<BudgetCustomWidget> {
  ///  Local state fields for this page.

  int? savemode;

  double? savingAmount;

  double? allotedBudget;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for commuteCard dynamic component.
  late FlutterFlowDynamicModels<CommuteCardModel> commuteCardModels;
  // Stores action output result for [Custom Action - setWarning] action in commuteCard widget.
  bool? warn;
  // Models for allotBudget dynamic component.
  late FlutterFlowDynamicModels<AllotBudgetModel> allotBudgetModels;
  // Model for mybutton component.
  late MybuttonModel mybuttonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    commuteCardModels = FlutterFlowDynamicModels(() => CommuteCardModel());
    allotBudgetModels = FlutterFlowDynamicModels(() => AllotBudgetModel());
    mybuttonModel = createModel(context, () => MybuttonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commuteCardModels.dispose();
    allotBudgetModels.dispose();
    mybuttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
