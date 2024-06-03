import '/components/audio_populares1_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'p_e_r_f_i_lt_e_r_a_p_i_s_t_a_s_widget.dart' show PERFILtERAPISTASWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PERFILtERAPISTASModel extends FlutterFlowModel<PERFILtERAPISTASWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for audioPopulares1 component.
  late AudioPopulares1Model audioPopulares1Model1;
  // Model for audioPopulares1 component.
  late AudioPopulares1Model audioPopulares1Model2;
  // Model for audioPopulares1 component.
  late AudioPopulares1Model audioPopulares1Model3;
  // Model for audioPopulares1 component.
  late AudioPopulares1Model audioPopulares1Model4;
  // Model for audioPopulares1 component.
  late AudioPopulares1Model audioPopulares1Model5;

  @override
  void initState(BuildContext context) {
    audioPopulares1Model1 = createModel(context, () => AudioPopulares1Model());
    audioPopulares1Model2 = createModel(context, () => AudioPopulares1Model());
    audioPopulares1Model3 = createModel(context, () => AudioPopulares1Model());
    audioPopulares1Model4 = createModel(context, () => AudioPopulares1Model());
    audioPopulares1Model5 = createModel(context, () => AudioPopulares1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    audioPopulares1Model1.dispose();
    audioPopulares1Model2.dispose();
    audioPopulares1Model3.dispose();
    audioPopulares1Model4.dispose();
    audioPopulares1Model5.dispose();
  }
}
