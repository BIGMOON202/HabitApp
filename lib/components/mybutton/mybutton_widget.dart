import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mybutton_model.dart';
export 'mybutton_model.dart';

class MybuttonWidget extends StatefulWidget {
  const MybuttonWidget({
    super.key,
    required this.text,
    required this.condition,
  });

  final String? text;
  final bool? condition;

  @override
  State<MybuttonWidget> createState() => _MybuttonWidgetState();
}

class _MybuttonWidgetState extends State<MybuttonWidget> {
  late MybuttonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MybuttonModel());
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
        height: 48.0,
        decoration: BoxDecoration(
          color: widget.condition! ? const Color(0xFF2DC653) : const Color(0xFFF1F2F4),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              valueOrDefault<String>(
                widget.text,
                'Continue',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'SF Pro',
                    color: widget.condition!
                        ? FlutterFlowTheme.of(context).info
                        : const Color(0xFF666A72),
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: false,
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Icon(
                Icons.east,
                color: widget.condition!
                    ? FlutterFlowTheme.of(context).info
                    : const Color(0xFF666A72),
                size: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
