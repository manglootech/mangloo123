import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'edita_el_perfil_widget.dart' show EditaElPerfilWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditaElPerfilModel extends FlutterFlowModel<EditaElPerfilWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for displayName widget.
  FocusNode? displayNameFocusNode;
  TextEditingController? displayNameTextController;
  String? Function(BuildContext, String?)? displayNameTextControllerValidator;
  // State field(s) for etiqueta widget.
  FocusNode? etiquetaFocusNode;
  TextEditingController? etiquetaTextController;
  String? Function(BuildContext, String?)? etiquetaTextControllerValidator;
  // State field(s) for descrption widget.
  FocusNode? descrptionFocusNode;
  TextEditingController? descrptionTextController;
  String? Function(BuildContext, String?)? descrptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    displayNameFocusNode?.dispose();
    displayNameTextController?.dispose();

    etiquetaFocusNode?.dispose();
    etiquetaTextController?.dispose();

    descrptionFocusNode?.dispose();
    descrptionTextController?.dispose();
  }
}
