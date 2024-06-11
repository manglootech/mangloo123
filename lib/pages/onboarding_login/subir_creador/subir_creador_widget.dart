import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'subir_creador_model.dart';
export 'subir_creador_model.dart';

class SubirCreadorWidget extends StatefulWidget {
  const SubirCreadorWidget({
    super.key,
    this.name,
  });

  final String? name;

  @override
  State<SubirCreadorWidget> createState() => _SubirCreadorWidgetState();
}

class _SubirCreadorWidgetState extends State<SubirCreadorWidget> {
  late SubirCreadorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubirCreadorModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xE6F1F1F1),
      ),
    );
  }
}
