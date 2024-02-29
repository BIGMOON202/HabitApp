import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'alert1_model.dart';
export 'alert1_model.dart';

class Alert1Widget extends StatefulWidget {
  const Alert1Widget({super.key});

  @override
  State<Alert1Widget> createState() => _Alert1WidgetState();
}

class _Alert1WidgetState extends State<Alert1Widget> {
  late Alert1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Alert1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container();
  }
}
