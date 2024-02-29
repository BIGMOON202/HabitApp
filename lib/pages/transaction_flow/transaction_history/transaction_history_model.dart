import '/components/mybutton/mybutton_widget.dart';
import '/components/transaction_block/transaction_block_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transaction_history_widget.dart' show TransactionHistoryWidget;
import 'package:flutter/material.dart';

class TransactionHistoryModel
    extends FlutterFlowModel<TransactionHistoryWidget> {
  ///  Local state fields for this page.

  int? savemode;

  double? savingAmount;

  bool spendingDown = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for transaction_block component.
  late TransactionBlockModel transactionBlockModel1;
  // Model for transaction_block component.
  late TransactionBlockModel transactionBlockModel2;
  // Model for transaction_block component.
  late TransactionBlockModel transactionBlockModel3;
  // Model for mybutton component.
  late MybuttonModel mybuttonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    transactionBlockModel1 =
        createModel(context, () => TransactionBlockModel());
    transactionBlockModel2 =
        createModel(context, () => TransactionBlockModel());
    transactionBlockModel3 =
        createModel(context, () => TransactionBlockModel());
    mybuttonModel = createModel(context, () => MybuttonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    transactionBlockModel1.dispose();
    transactionBlockModel2.dispose();
    transactionBlockModel3.dispose();
    mybuttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
