import '/components/carta_contenido2_widget.dart';
import '/components/carta_stack1_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'carta_stack1_widget.dart' show CartaStack1Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CartaStack1Model extends FlutterFlowModel<CartaStack1Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for CartaContenido2 component.
  late CartaContenido2Model cartaContenido2Model1;
  // Model for CartaContenido2 component.
  late CartaContenido2Model cartaContenido2Model2;
  // Model for CartaContenido2 component.
  late CartaContenido2Model cartaContenido2Model3;
  // Model for CartaContenido2 component.
  late CartaContenido2Model cartaContenido2Model4;

  @override
  void initState(BuildContext context) {
    cartaContenido2Model1 = createModel(context, () => CartaContenido2Model());
    cartaContenido2Model2 = createModel(context, () => CartaContenido2Model());
    cartaContenido2Model3 = createModel(context, () => CartaContenido2Model());
    cartaContenido2Model4 = createModel(context, () => CartaContenido2Model());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    cartaContenido2Model1.dispose();
    cartaContenido2Model2.dispose();
    cartaContenido2Model3.dispose();
    cartaContenido2Model4.dispose();
  }
}
