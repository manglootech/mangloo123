import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tarjetadegradado_model.dart';
export 'tarjetadegradado_model.dart';

class TarjetadegradadoWidget extends StatefulWidget {
  const TarjetadegradadoWidget({super.key});

  @override
  State<TarjetadegradadoWidget> createState() => _TarjetadegradadoWidgetState();
}

class _TarjetadegradadoWidgetState extends State<TarjetadegradadoWidget> {
  late TarjetadegradadoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TarjetadegradadoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 130.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/emma-simpson-mNGaaLeWEp0-unsplash.jpg',
          ).image,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(-1.0, 1.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 10.0),
          child: Text(
            'Mindfulness Mastery: Aprende las Claves para una Vida Equilibrada',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Nunito',
                  color: Color(0xFFF8F8F8),
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ),
    );
  }
}
