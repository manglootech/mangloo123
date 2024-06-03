import '/components/carta_stack1_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'carta1_adentro_widget.dart' show Carta1AdentroWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Carta1AdentroModel extends FlutterFlowModel<Carta1AdentroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CartaStack1 component.
  late CartaStack1Model cartaStack1Model;

  @override
  void initState(BuildContext context) {
    cartaStack1Model = createModel(context, () => CartaStack1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cartaStack1Model.dispose();
  }
}
