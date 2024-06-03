import '/components/b_u_t_t_o_n2_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'welcome1_widget.dart' show Welcome1Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Welcome1Model extends FlutterFlowModel<Welcome1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for bUTTON2 component.
  late BUTTON2Model bUTTON2Model;

  @override
  void initState(BuildContext context) {
    bUTTON2Model = createModel(context, () => BUTTON2Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    bUTTON2Model.dispose();
  }
}
