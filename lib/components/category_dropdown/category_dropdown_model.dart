import '/components/category_template/category_template_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'category_dropdown_widget.dart' show CategoryDropdownWidget;
import 'package:flutter/material.dart';

class CategoryDropdownModel extends FlutterFlowModel<CategoryDropdownWidget> {
  ///  Local state fields for this component.

  bool isSelected = false;

  int week = 0;

  String selectedCategory = 'nothing';

  ///  State fields for stateful widgets in this component.

  // Models for CategoryTemplate dynamic component.
  late FlutterFlowDynamicModels<CategoryTemplateModel> categoryTemplateModels1;
  // Model for CategoryTemplate component.
  late CategoryTemplateModel categoryTemplateModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    categoryTemplateModels1 =
        FlutterFlowDynamicModels(() => CategoryTemplateModel());
    categoryTemplateModel2 =
        createModel(context, () => CategoryTemplateModel());
  }

  @override
  void dispose() {
    categoryTemplateModels1.dispose();
    categoryTemplateModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
