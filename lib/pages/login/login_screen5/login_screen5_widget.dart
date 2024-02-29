import '/components/mybutton/mybutton_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login_screen5_model.dart';
export 'login_screen5_model.dart';

class LoginScreen5Widget extends StatefulWidget {
  const LoginScreen5Widget({super.key});

  @override
  State<LoginScreen5Widget> createState() => _LoginScreen5WidgetState();
}

class _LoginScreen5WidgetState extends State<LoginScreen5Widget> {
  late LoginScreen5Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginScreen5Model());
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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 88.0, 0.0, 0.0),
                      child: Text(
                        'Enter your verification code',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DM Serif Text',
                              color: FlutterFlowTheme.of(context).tertiary,
                              fontSize: 18.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Your code was sent to +91 98765 43210',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Lora',
                            color: const Color(0xFF666A72),
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                    child: PinCodeTextField(
                      autoDisposeControllers: false,
                      appContext: context,
                      length: 6,
                      textStyle: FlutterFlowTheme.of(context).bodyLarge,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      enableActiveFill: false,
                      autoFocus: true,
                      enablePinAutofill: false,
                      errorTextSpace: 16.0,
                      showCursor: true,
                      cursorColor: FlutterFlowTheme.of(context).primary,
                      obscureText: false,
                      hintCharacter: '●',
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme(
                        fieldHeight: 44.0,
                        fieldWidth: 44.0,
                        borderWidth: 2.0,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0),
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(12.0),
                        ),
                        shape: PinCodeFieldShape.box,
                        activeColor: FlutterFlowTheme.of(context).primaryText,
                        inactiveColor: FlutterFlowTheme.of(context).alternate,
                        selectedColor: FlutterFlowTheme.of(context).primary,
                        activeFillColor:
                            FlutterFlowTheme.of(context).primaryText,
                        inactiveFillColor:
                            FlutterFlowTheme.of(context).alternate,
                        selectedFillColor: FlutterFlowTheme.of(context).primary,
                      ),
                      controller: _model.pinCodeController,
                      onChanged: (_) {},
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: _model.pinCodeControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Didn’t get a code?',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DM Serif Text',
                              color: const Color(0xFF666A72),
                              fontSize: 16.0,
                            ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Resend Code',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'DM Serif Text',
                                    fontSize: 13.0,
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 58.0),
                  child: wrapWithModel(
                    model: _model.mybuttonModel,
                    updateCallback: () => setState(() {}),
                    child: const MybuttonWidget(
                      text: 'VERIFY CODE',
                      condition: false,
                    ),
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
