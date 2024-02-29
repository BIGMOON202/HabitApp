import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_bar_model.dart';
export 'home_bar_model.dart';

class HomeBarWidget extends StatefulWidget {
  const HomeBarWidget({super.key});

  @override
  State<HomeBarWidget> createState() => _HomeBarWidgetState();
}

class _HomeBarWidgetState extends State<HomeBarWidget> {
  late HomeBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 10.0,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 80.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          border: Border.all(
            color: FlutterFlowTheme.of(context).accent4,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(17.0, 0.0, 17.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('HomePage');

                  setState(() {
                    FFAppState().selectedPage = 'home';
                  });
                },
                child: Container(
                  constraints: const BoxConstraints(
                    minWidth: 50.0,
                  ),
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Builder(
                        builder: (context) {
                          if (FFAppState().selectedPage == 'home') {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Group_11573.png',
                                width: 23.5,
                                height: 23.5,
                                fit: BoxFit.cover,
                              ),
                            );
                          } else {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Home.png',
                                width: 23.5,
                                height: 23.5,
                                fit: BoxFit.cover,
                              ),
                            );
                          }
                        },
                      ),
                      Text(
                        'Home',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Outfit',
                              color: FFAppState().selectedPage == 'home'
                                  ? FlutterFlowTheme.of(context).tertiary
                                  : const Color(0xFFB8BABE),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('report');

                  setState(() {
                    FFAppState().selectedPage = 'report';
                  });
                },
                child: Container(
                  constraints: const BoxConstraints(
                    minWidth: 50.0,
                  ),
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Builder(
                        builder: (context) {
                          if (FFAppState().selectedPage == 'report') {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Group_11573.png',
                                width: 23.5,
                                height: 23.5,
                                fit: BoxFit.cover,
                              ),
                            );
                          } else {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Report.png',
                                width: 23.5,
                                height: 23.5,
                                fit: BoxFit.cover,
                              ),
                            );
                          }
                        },
                      ),
                      Text(
                        'Report',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Outfit',
                              color: FFAppState().selectedPage == 'report'
                                  ? FlutterFlowTheme.of(context).tertiary
                                  : const Color(0xFFB8BABE),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('transaction_history');
                },
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.add,
                    color: FlutterFlowTheme.of(context).info,
                    size: 40.0,
                  ),
                ),
              ),
              Container(
                constraints: const BoxConstraints(
                  minWidth: 50.0,
                ),
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Builder(
                      builder: (context) {
                        if (FFAppState().selectedPage == 'reward') {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Reward.png',
                              width: 23.5,
                              height: 23.5,
                              fit: BoxFit.cover,
                            ),
                          );
                        } else {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Reward.png',
                              width: 23.5,
                              height: 23.5,
                              fit: BoxFit.cover,
                            ),
                          );
                        }
                      },
                    ),
                    Text(
                      'Reward',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            color: FFAppState().selectedPage == 'reward'
                                ? FlutterFlowTheme.of(context).tertiary
                                : const Color(0xFFB8BABE),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('savings');

                  setState(() {
                    FFAppState().selectedPage = 'savings';
                  });
                },
                child: Container(
                  width: 50.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Builder(
                        builder: (context) {
                          if (FFAppState().selectedPage == 'savings') {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Asset_1(2)_3.png',
                                width: 23.5,
                                height: 23.5,
                                fit: BoxFit.cover,
                              ),
                            );
                          } else {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Layer_1.png',
                                width: 23.5,
                                height: 23.5,
                                fit: BoxFit.cover,
                              ),
                            );
                          }
                        },
                      ),
                      Text(
                        'Savings',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Outfit',
                              color: FFAppState().selectedPage == 'savings'
                                  ? FlutterFlowTheme.of(context).tertiary
                                  : const Color(0xFFB8BABE),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
