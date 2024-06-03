import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'logoparafondoblanco_model.dart';
export 'logoparafondoblanco_model.dart';

class LogoparafondoblancoWidget extends StatefulWidget {
  const LogoparafondoblancoWidget({super.key});

  @override
  State<LogoparafondoblancoWidget> createState() =>
      _LogoparafondoblancoWidgetState();
}

class _LogoparafondoblancoWidgetState extends State<LogoparafondoblancoWidget> {
  late LogoparafondoblancoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoparafondoblancoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        'assets/images/logotipo-principal-2.png',
        width: 300.0,
        height: 200.0,
        fit: BoxFit.contain,
      ),
    );
  }
}
