import '/components/button_shet_galeriade_fotos_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'bu_t_t_o_n_s_h_e_e_t_widget.dart' show BuTTONSHEETWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BuTTONSHEETModel extends FlutterFlowModel<BuTTONSHEETWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for buttonShet_galeriadeFotos component.
  late ButtonShetGaleriadeFotosModel buttonShetGaleriadeFotosModel;

  @override
  void initState(BuildContext context) {
    buttonShetGaleriadeFotosModel =
        createModel(context, () => ButtonShetGaleriadeFotosModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    buttonShetGaleriadeFotosModel.dispose();
  }
}
