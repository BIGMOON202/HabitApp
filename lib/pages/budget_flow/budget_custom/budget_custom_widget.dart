import '/backend/schema/structs/index.dart';
import '/components/allot_budget/allot_budget_widget.dart';
import '/components/commute_card/commute_card_widget.dart';
import '/components/mybutton/mybutton_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'budget_custom_model.dart';
export 'budget_custom_model.dart';

class BudgetCustomWidget extends StatefulWidget {
  const BudgetCustomWidget({super.key});

  @override
  State<BudgetCustomWidget> createState() => _BudgetCustomWidgetState();
}

class _BudgetCustomWidgetState extends State<BudgetCustomWidget> {
  late BudgetCustomModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BudgetCustomModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.allotedBudget =
            FFAppState().totalIncome.toDouble() - FFAppState().SaveAmount;
      });
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).info,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).info,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 55.0,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).tertiary,
                        size: 25.0,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                    Text(
                      'Your Budget Category Wise',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'SF Pro',
                                color: const Color(0xFF0B0D12),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: false,
                              ),
                    ),
                  ],
                ),
              ],
            ),
            actions: const [],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: Container(),
            ),
            centerTitle: true,
            toolbarHeight: 60.0,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 100.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Split Your Budget Category Wise',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 0.0, 0.0),
                          child: Text(
                            'Choose Category',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                      Container(
                        width: 357.0,
                        height: 490.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Builder(
                          builder: (context) {
                            final card = FFAppState().cards.toList();
                            return GridView.builder(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                childAspectRatio: 1.0,
                              ),
                              scrollDirection: Axis.vertical,
                              itemCount: card.length,
                              itemBuilder: (context, cardIndex) {
                                final cardItem = card[cardIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      FFAppState().updateCardsAtIndex(
                                        cardIndex,
                                        (e) => e
                                          ..isSelected = !e.isSelected
                                          ..setPricing = null,
                                      );
                                    });
                                    _model.warn = await actions.setWarning(
                                      FFAppState()
                                          .cards
                                          .map((e) => e.setPricing)
                                          .toList(),
                                      _model.allotedBudget!,
                                    );
                                    _model.updatePage(() {
                                      FFAppState().warning = _model.warn!;
                                    });

                                    setState(() {});
                                  },
                                  child: wrapWithModel(
                                    model: _model.commuteCardModels.getModel(
                                      cardIndex.toString(),
                                      cardIndex,
                                    ),
                                    updateCallback: () => setState(() {}),
                                    child: CommuteCardWidget(
                                      key: Key(
                                        'Keyt3n_${cardIndex.toString()}',
                                      ),
                                      cardName: cardItem.cardName,
                                      cardImg: cardItem.cardImg,
                                      isSelected: cardItem.isSelected,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      if (functions.oneSelected(
                          FFAppState().cards.map((e) => e.isSelected).toList()))
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 0.0, 0.0),
                            child: Text(
                              'Allot Budget',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final sliderComponents =
                                FFAppState().cards.toList();
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: sliderComponents.length,
                              itemBuilder: (context, sliderComponentsIndex) {
                                final sliderComponentsItem =
                                    sliderComponents[sliderComponentsIndex];
                                return Visibility(
                                  visible: sliderComponentsItem.isSelected,
                                  child: wrapWithModel(
                                    model: _model.allotBudgetModels.getModel(
                                      sliderComponentsIndex.toString(),
                                      sliderComponentsIndex,
                                    ),
                                    updateCallback: () => setState(() {}),
                                    child: AllotBudgetWidget(
                                      key: Key(
                                        'Keyxmd_${sliderComponentsIndex.toString()}',
                                      ),
                                      allotImg: sliderComponentsItem.cardImg,
                                      allotName: sliderComponentsItem.cardName,
                                      index: sliderComponentsIndex,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      if (FFAppState().warning)
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          child: Text(
                            ' Set your rent budget under ₹${formatNumber(
                              FFAppState().totalIncome,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.periodDecimal,
                            )} or raise your overall budget.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'DM Serif Text',
                                  color: FlutterFlowTheme.of(context).error,
                                  fontSize: 14.0,
                                ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (functions.isSavetime(
                                FFAppState()
                                    .cards
                                    .map((e) => e.setPricing)
                                    .toList(),
                                _model.allotedBudget!)) {
                              setState(() {
                                FFAppState().UserBudgetCategory = functions
                                    .getUserCategory(
                                        FFAppState().cards.toList(),
                                        _model.allotedBudget!)!
                                    .toList()
                                    .cast<BudgetCategoryStruct>();
                              });
                            }
                          },
                          child: wrapWithModel(
                            model: _model.mybuttonModel,
                            updateCallback: () => setState(() {}),
                            child: MybuttonWidget(
                              text: 'SAVE BUDGET',
                              condition: functions.isSavetime(
                                  FFAppState()
                                      .cards
                                      .map((e) => e.setPricing)
                                      .toList(),
                                  FFAppState().totalIncome.toDouble()),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 41.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Allotted Amount',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).tertiary,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 14.0,
                            ),
                            Text(
                              functions
                                  .getSum(FFAppState()
                                      .cards
                                      .map((e) => e.setPricing)
                                      .toList())
                                  .toString(),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              '/',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'DM Serif Text',
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                            ),
                            Text(
                              formatNumber(
                                _model.allotedBudget,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.periodDecimal,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
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
