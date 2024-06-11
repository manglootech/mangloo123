import '/components/logo/logo_widget.dart';
import '/components/tarjetadegradado_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for tarjetadegradado component.
  late TarjetadegradadoModel tarjetadegradadoModel1;
  // Model for tarjetadegradado component.
  late TarjetadegradadoModel tarjetadegradadoModel2;
  // Model for tarjetadegradado component.
  late TarjetadegradadoModel tarjetadegradadoModel3;
  // Model for tarjetadegradado component.
  late TarjetadegradadoModel tarjetadegradadoModel4;
  // Model for tarjetadegradado component.
  late TarjetadegradadoModel tarjetadegradadoModel5;
  // Model for LOGO component.
  late LogoModel logoModel;

  @override
  void initState(BuildContext context) {
    tarjetadegradadoModel1 =
        createModel(context, () => TarjetadegradadoModel());
    tarjetadegradadoModel2 =
        createModel(context, () => TarjetadegradadoModel());
    tarjetadegradadoModel3 =
        createModel(context, () => TarjetadegradadoModel());
    tarjetadegradadoModel4 =
        createModel(context, () => TarjetadegradadoModel());
    tarjetadegradadoModel5 =
        createModel(context, () => TarjetadegradadoModel());
    logoModel = createModel(context, () => LogoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tarjetadegradadoModel1.dispose();
    tarjetadegradadoModel2.dispose();
    tarjetadegradadoModel3.dispose();
    tarjetadegradadoModel4.dispose();
    tarjetadegradadoModel5.dispose();
    logoModel.dispose();
  }
}
