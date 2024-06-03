import '/components/button_shet_galeriade_fotos_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bu_t_t_o_n_s_h_e_e_t_model.dart';
export 'bu_t_t_o_n_s_h_e_e_t_model.dart';

class BuTTONSHEETWidget extends StatefulWidget {
  const BuTTONSHEETWidget({super.key});

  @override
  State<BuTTONSHEETWidget> createState() => _BuTTONSHEETWidgetState();
}

class _BuTTONSHEETWidgetState extends State<BuTTONSHEETWidget> {
  late BuTTONSHEETModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuTTONSHEETModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.buttonShetGaleriadeFotosModel,
            updateCallback: () => setState(() {}),
            child: ButtonShetGaleriadeFotosWidget(),
          ),
        ),
      ),
    );
  }
}
