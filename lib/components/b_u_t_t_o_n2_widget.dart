import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'b_u_t_t_o_n2_model.dart';
export 'b_u_t_t_o_n2_model.dart';

class BUTTON2Widget extends StatefulWidget {
  const BUTTON2Widget({
    super.key,
    this.parameter1,
  });

  final bool? parameter1;

  @override
  State<BUTTON2Widget> createState() => _BUTTON2WidgetState();
}

class _BUTTON2WidgetState extends State<BUTTON2Widget> {
  late BUTTON2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BUTTON2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, -1.0),
      child: FFButtonWidget(
        onPressed: () {
          print('Button pressed ...');
        },
        text: 'Crear cuenta',
        options: FFButtonOptions(
          height: 40.0,
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: Color(0x864BBA74),
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Nunito',
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
              ),
          elevation: 0.0,
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primaryBackground,
            width: 0.0,
          ),
          borderRadius: BorderRadius.circular(25.0),
          hoverColor: FlutterFlowTheme.of(context).primaryBackground,
          hoverTextColor: FlutterFlowTheme.of(context).brand1,
        ),
      ),
    );
  }
}
