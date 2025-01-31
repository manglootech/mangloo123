import '/components/play_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'destacadoscard_widget.dart' show DestacadoscardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DestacadoscardModel extends FlutterFlowModel<DestacadoscardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for play component.
  late PlayModel playModel;

  @override
  void initState(BuildContext context) {
    playModel = createModel(context, () => PlayModel());
  }

  @override
  void dispose() {
    playModel.dispose();
  }
}
