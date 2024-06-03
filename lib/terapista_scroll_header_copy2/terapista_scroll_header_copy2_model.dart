import '/components/terapistascomponentefinal_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'terapista_scroll_header_copy2_widget.dart'
    show TerapistaScrollHeaderCopy2Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TerapistaScrollHeaderCopy2Model
    extends FlutterFlowModel<TerapistaScrollHeaderCopy2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for terapistascomponentefinal component.
  late TerapistascomponentefinalModel terapistascomponentefinalModel;

  @override
  void initState(BuildContext context) {
    terapistascomponentefinalModel =
        createModel(context, () => TerapistascomponentefinalModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    terapistascomponentefinalModel.dispose();
  }
}
