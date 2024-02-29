import '/components/category_template/category_template_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'category_dropdown_model.dart';
export 'category_dropdown_model.dart';

class CategoryDropdownWidget extends StatefulWidget {
  const CategoryDropdownWidget({super.key});

  @override
  State<CategoryDropdownWidget> createState() => _CategoryDropdownWidgetState();
}

class _CategoryDropdownWidgetState extends State<CategoryDropdownWidget>
    with TickerProviderStateMixin {
  late CategoryDropdownModel _model;

  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 200.ms,
          begin: const Offset(0.0, -56.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryDropdownModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 327.0,
      constraints: const BoxConstraints(
        maxHeight: 300.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).alternate,
      ),
      child: Stack(
        children: [
          if (_model.isSelected)
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 56.0, 0.0, 0.0),
              child: Builder(
                builder: (context) {
                  final categories = FFAppState().cards.map((e) => e).toList();
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children:
                          List.generate(categories.length, (categoriesIndex) {
                        final categoriesItem = categories[categoriesIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            setState(() {
                              _model.isSelected = false;
                              _model.selectedCategory = categoriesItem.cardName;
                            });
                          },
                          child: wrapWithModel(
                            model: _model.categoryTemplateModels1.getModel(
                              categoriesIndex.toString(),
                              categoriesIndex,
                            ),
                            updateCallback: () => setState(() {}),
                            child: CategoryTemplateWidget(
                              key: Key(
                                'Keyp0r_${categoriesIndex.toString()}',
                              ),
                              imgPath:
                                  FFAppState().cards[categoriesIndex].cardImg,
                              name:
                                  FFAppState().cards[categoriesIndex].cardName,
                            ),
                          ),
                        );
                      })
                              .divide(const SizedBox(height: 10.0))
                              .around(const SizedBox(height: 10.0)),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation']!);
                },
              ),
            ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              setState(() {
                _model.isSelected = !_model.isSelected;
              });
            },
            child: Container(
              width: 327.0,
              height: 56.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).tertiary,
                ),
              ),
              child: Builder(
                builder: (context) {
                  if (_model.selectedCategory == 'nothing') {
                    return Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add Category',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'DM Serif Text',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
                                ),
                          ),
                          Builder(
                            builder: (context) {
                              if (_model.isSelected) {
                                return Icon(
                                  Icons.keyboard_arrow_up_rounded,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 24.0,
                                );
                              } else {
                                return Icon(
                                  Icons.keyboard_arrow_down,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 24.0,
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          wrapWithModel(
                            model: _model.categoryTemplateModel2,
                            updateCallback: () => setState(() {}),
                            child: CategoryTemplateWidget(
                              imgPath: functions.cardImgFromName(
                                  FFAppState().cards.toList(),
                                  _model.selectedCategory)!,
                              name: _model.selectedCategory,
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              if (_model.isSelected) {
                                return Icon(
                                  Icons.keyboard_arrow_up_rounded,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 24.0,
                                );
                              } else {
                                return Icon(
                                  Icons.keyboard_arrow_down,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 24.0,
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
