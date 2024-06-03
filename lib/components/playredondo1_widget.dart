import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'playredondo1_model.dart';
export 'playredondo1_model.dart';

class Playredondo1Widget extends StatefulWidget {
  const Playredondo1Widget({super.key});

  @override
  State<Playredondo1Widget> createState() => _Playredondo1WidgetState();
}

class _Playredondo1WidgetState extends State<Playredondo1Widget> {
  late Playredondo1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Playredondo1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 20.0),
        child: FlutterFlowIconButton(
          borderRadius: 20.0,
          borderWidth: 1.0,
          buttonSize: 40.0,
          fillColor: Color(0x69FFFFFF),
          icon: Icon(
            Icons.play_arrow,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24.0,
          ),
          onPressed: () {
            print('IconoPlay1 pressed ...');
          },
        ),
      ),
    );
  }
}
