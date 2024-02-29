import '/components/category_template/category_template_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'country_dropdown_model.dart';
export 'country_dropdown_model.dart';

class CountryDropdownWidget extends StatefulWidget {
  const CountryDropdownWidget({super.key});

  @override
  State<CountryDropdownWidget> createState() => _CountryDropdownWidgetState();
}

class _CountryDropdownWidgetState extends State<CountryDropdownWidget>
    with TickerProviderStateMixin {
  late CountryDropdownModel _model;

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
    _model = createModel(context, () => CountryDropdownModel());
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
                  final countryList =
                      FFAppState().Countries.map((e) => e).toList();
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children:
                          List.generate(countryList.length, (countryListIndex) {
                        final countryListItem = countryList[countryListIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            setState(() {
                              _model.isSelected = false;
                              _model.selectedCategory = (String var1) {
                                return var1.split("-")[1].trim();
                              }(countryListItem);
                            });
                          },
                          child: wrapWithModel(
                            model: _model.categoryTemplateModels1.getModel(
                              countryListIndex.toString(),
                              countryListIndex,
                            ),
                            updateCallback: () => setState(() {}),
                            child: CategoryTemplateWidget(
                              key: Key(
                                'Keyvyj_${countryListIndex.toString()}',
                              ),
                              imgPath: functions.getFlagURL((String var1) {
                                return var1.split("-")[1].trim();
                              }(countryListItem)),
                              name: (String var1) {
                                return var1.split("-")[1].trim();
                              }(countryListItem),
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
                            'Choose Your Country',
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
                              imgPath:
                                  'http://www.oorsprong.org/WebSamples.CountryInfo/Flags/${_model.selectedCategory}.jpg',
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
