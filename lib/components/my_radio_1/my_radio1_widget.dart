import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_radio1_model.dart';
export 'my_radio1_model.dart';

class MyRadio1Widget extends StatefulWidget {
  const MyRadio1Widget({super.key});

  @override
  State<MyRadio1Widget> createState() => _MyRadio1WidgetState();
}

class _MyRadio1WidgetState extends State<MyRadio1Widget> {
  late MyRadio1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyRadio1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 151.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                setState(() {
                  _model.isSalaryMan = 2;
                });
              },
              child: Container(
                width: 327.0,
                height: 64.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: _model.isSalaryMan == 2
                        ? FlutterFlowTheme.of(context).tertiary
                        : const Color(0xFFE8E9EA),
                    width: 1.5,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Yes',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DM Serif Text',
                              color: FlutterFlowTheme.of(context).tertiary,
                              fontSize: 20.0,
                            ),
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        if (_model.isSalaryMan == 2) {
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 28.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.asset(
                                'assets/images/Radio_Button.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.none,
                              ),
                            ),
                          );
                        } else {
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 28.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.asset(
                                'assets/images/Ellipse_99_(Stroke).png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.none,
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  setState(() {
                    _model.isSalaryMan = 3;
                  });
                },
                child: Container(
                  width: 327.0,
                  height: 64.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: _model.isSalaryMan == 3
                          ? FlutterFlowTheme.of(context).tertiary
                          : const Color(0xFFE8E9EA),
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'No',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'DM Serif Text',
                                color: FlutterFlowTheme.of(context).tertiary,
                                fontSize: 20.0,
                              ),
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          if (_model.isSalaryMan == 3) {
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 28.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.asset(
                                  'assets/images/Radio_Button.png',
                                  width: 24.0,
                                  height: 24.0,
                                  fit: BoxFit.none,
                                ),
                              ),
                            );
                          } else {
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 28.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.asset(
                                  'assets/images/Ellipse_99_(Stroke).png',
                                  width: 24.0,
                                  height: 24.0,
                                  fit: BoxFit.none,
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
