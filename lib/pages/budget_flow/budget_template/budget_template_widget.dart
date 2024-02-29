import '/components/budget_card/budget_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'budget_template_model.dart';
export 'budget_template_model.dart';

class BudgetTemplateWidget extends StatefulWidget {
  const BudgetTemplateWidget({super.key});

  @override
  State<BudgetTemplateWidget> createState() => _BudgetTemplateWidgetState();
}

class _BudgetTemplateWidgetState extends State<BudgetTemplateWidget> {
  late BudgetTemplateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BudgetTemplateModel());
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
          preferredSize: const Size.fromHeight(44.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).info,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 55.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 25.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Budget Template',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Roboto',
                        color: const Color(0xFF0B0D12),
                        fontSize: 18.0,
                      ),
                ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                child: Text(
                  'Create a precise budget allocation with this Template.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).tertiary,
                        fontSize: 20.0,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.budgetCardModel1,
                  updateCallback: () => setState(() {}),
                  child: BudgetCardWidget(
                    title: 'Classic Budget',
                    clickLetter: 'APPLY CLASSIC TEMPLATE',
                    budgetlist: FFAppState().classicBudgetTemplate,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.budgetCardModel2,
                  updateCallback: () => setState(() {}),
                  child: BudgetCardWidget(
                    title: 'Basic Budget',
                    clickLetter: 'APPLY BASIC TEMPLATE',
                    budgetlist: FFAppState().basicBudgetTemplate,
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
