import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fgfgg_model.dart';
export 'fgfgg_model.dart';

class FgfggWidget extends StatefulWidget {
  const FgfggWidget({super.key});

  @override
  State<FgfggWidget> createState() => _FgfggWidgetState();
}

class _FgfggWidgetState extends State<FgfggWidget> {
  late FgfggModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FgfggModel());
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
