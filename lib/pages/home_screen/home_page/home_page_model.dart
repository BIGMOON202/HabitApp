import '/components/home_bar/home_bar_widget.dart';
import '/components/home_card/home_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String userName = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getUserData] action in HomePage widget.
  List<dynamic>? receivedUserData;
  // Stores action output result for [Custom Action - getUserBudget] action in HomePage widget.
  dynamic recievedUserBudget;
  // Model for HomeCard component.
  late HomeCardModel homeCardModel1;
  // Model for HomeCard component.
  late HomeCardModel homeCardModel2;
  // Model for HomeCard component.
  late HomeCardModel homeCardModel3;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for HomeCard component.
  late HomeCardModel homeCardModel4;
  // Model for HomeCard component.
  late HomeCardModel homeCardModel5;
  // Model for homeBar component.
  late HomeBarModel homeBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    homeCardModel1 = createModel(context, () => HomeCardModel());
    homeCardModel2 = createModel(context, () => HomeCardModel());
    homeCardModel3 = createModel(context, () => HomeCardModel());
    homeCardModel4 = createModel(context, () => HomeCardModel());
    homeCardModel5 = createModel(context, () => HomeCardModel());
    homeBarModel = createModel(context, () => HomeBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    homeCardModel1.dispose();
    homeCardModel2.dispose();
    homeCardModel3.dispose();
    homeCardModel4.dispose();
    homeCardModel5.dispose();
    homeBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
