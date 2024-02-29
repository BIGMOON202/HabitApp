import '/components/home_bar/home_bar_widget.dart';
import '/components/switch_button/switch_button_widget.dart';
import '/components/week_switch_tab/week_switch_tab_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'report_widget.dart' show ReportWidget;
import 'package:flutter/material.dart';

class ReportModel extends FlutterFlowModel<ReportWidget> {
  ///  Local state fields for this page.

  int? savemode;

  double? savingAmount;

  bool spendingDown = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for switchButton component.
  late SwitchButtonModel switchButtonModel;
  // Model for weekSwitchTab component.
  late WeekSwitchTabModel weekSwitchTabModel;
  // Model for homeBar component.
  late HomeBarModel homeBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    switchButtonModel = createModel(context, () => SwitchButtonModel());
    weekSwitchTabModel = createModel(context, () => WeekSwitchTabModel());
    homeBarModel = createModel(context, () => HomeBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    switchButtonModel.dispose();
    weekSwitchTabModel.dispose();
    homeBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
