import '/components/budget_card/budget_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'budget_template_widget.dart' show BudgetTemplateWidget;
import 'package:flutter/material.dart';

class BudgetTemplateModel extends FlutterFlowModel<BudgetTemplateWidget> {
  ///  Local state fields for this page.

  int? savemode;

  double? savingAmount;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for budgetCard component.
  late BudgetCardModel budgetCardModel1;
  // Model for budgetCard component.
  late BudgetCardModel budgetCardModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    budgetCardModel1 = createModel(context, () => BudgetCardModel());
    budgetCardModel2 = createModel(context, () => BudgetCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    budgetCardModel1.dispose();
    budgetCardModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
