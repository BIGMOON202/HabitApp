import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'allot_budget_model.dart';
export 'allot_budget_model.dart';

class AllotBudgetWidget extends StatefulWidget {
  const AllotBudgetWidget({
    super.key,
    required this.allotImg,
    required this.allotName,
    required this.index,
  });

  final String? allotImg;
  final String? allotName;
  final int? index;

  @override
  State<AllotBudgetWidget> createState() => _AllotBudgetWidgetState();
}

class _AllotBudgetWidgetState extends State<AllotBudgetWidget> {
  late AllotBudgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllotBudgetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.sliderValue = FFAppState().cards[widget.index!].setPricing;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
        child: Container(
          width: 327.0,
          height: 122.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: const [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(0.0, 2.0),
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: FFAppState().warning
                  ? FlutterFlowTheme.of(context).error
                  : FlutterFlowTheme.of(context).tertiary,
              width: 1.5,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            widget.allotImg!,
                            width: 56.0,
                            height: 56.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.allotName,
                            'Bill',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).tertiary,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ].divide(const SizedBox(width: 10.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 14.0,
                        ),
                        Text(
                          formatNumber(
                            _model.sliderValue,
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.periodDecimal,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).tertiary,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
                Slider(
                  activeColor: FFAppState().warning
                      ? FlutterFlowTheme.of(context).error
                      : FlutterFlowTheme.of(context).warning,
                  inactiveColor: FlutterFlowTheme.of(context).alternate,
                  min: 0.0,
                  max: valueOrDefault<double>(
                    FFAppState().totalIncome.toDouble(),
                    0.0,
                  ),
                  value: _model.sliderValue ??= 0.0,
                  onChanged: (newValue) async {
                    newValue = double.parse(newValue.toStringAsFixed(2));
                    setState(() => _model.sliderValue = newValue);
                    setState(() {
                      FFAppState().updateCardsAtIndex(
                        widget.index!,
                        (e) => e..setPricing = _model.sliderValue,
                      );
                    });
                    _model.warn = await actions.setWarning(
                      FFAppState().cards.map((e) => e.setPricing).toList(),
                      FFAppState().totalIncome.toDouble() -
                          FFAppState().SaveAmount,
                    );
                    _model.updatePage(() {
                      FFAppState().warning = _model.warn!;
                    });

                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
