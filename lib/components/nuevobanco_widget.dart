import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nuevobanco_model.dart';
export 'nuevobanco_model.dart';

class NuevobancoWidget extends StatefulWidget {
  const NuevobancoWidget({super.key});

  @override
  State<NuevobancoWidget> createState() => _NuevobancoWidgetState();
}

class _NuevobancoWidgetState extends State<NuevobancoWidget> {
  late NuevobancoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NuevobancoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
