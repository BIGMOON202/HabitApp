import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'save_income_button_model.dart';
export 'save_income_button_model.dart';

class SaveIncomeButtonWidget extends StatefulWidget {
  const SaveIncomeButtonWidget({
    super.key,
    required this.isSelected,
    required this.condition,
    String? text,
    required this.setIncome,
  }) : text = text ?? 'SAVE INCOME';

  final bool? isSelected;
  final bool? condition;
  final String text;
  final String? setIncome;

  @override
  State<SaveIncomeButtonWidget> createState() => _SaveIncomeButtonWidgetState();
}

class _SaveIncomeButtonWidgetState extends State<SaveIncomeButtonWidget> {
  late SaveIncomeButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaveIncomeButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 150.0,
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (widget.condition! && (widget.setIncome != ' ')) {
                  _model.isSetIncome = await actions.setUserIncome(
                    FFAppState().UserID,
                    widget.setIncome!,
                  );
                  FFAppState().update(() {
                    FFAppState().isIncomeSet = _model.isSetIncome!;
                  });

                  context.pushNamed('HomePage');
                }

                setState(() {});
              },
              child: Container(
                width: 327.0,
                height: 48.0,
                decoration: BoxDecoration(
                  color: widget.condition!
                      ? FlutterFlowTheme.of(context).secondary
                      : FlutterFlowTheme.of(context).alternate,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.text,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'DM Serif Text',
                            color: widget.condition!
                                ? FlutterFlowTheme.of(context).info
                                : FlutterFlowTheme.of(context).primaryText,
                          ),
                    ),
                    Icon(
                      Icons.east,
                      color: widget.condition!
                          ? FlutterFlowTheme.of(context).info
                          : FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                  ].divide(const SizedBox(width: 5.0)),
                ),
              ),
            ),
            Builder(
              builder: (context) {
                if (widget.isSelected ?? false) {
                  return Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
                    child: Container(
                      width: 327.0,
                      height: 66.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).tertiary,
                          width: 1.5,
                        ),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'The App Will Add This Amount\nAutomatically On The 1st Of Every Month.',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'DM Serif Text',
                                color: FlutterFlowTheme.of(context).tertiary,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    ),
                  );
                } else {
                  return Container(
                    width: 327.0,
                    height: 50.0,
                    decoration: const BoxDecoration(),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
