import '/components/card26_wrap_cards_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'tagss_navegacion1_widget.dart' show TagssNavegacion1Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TagssNavegacion1Model extends FlutterFlowModel<TagssNavegacion1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Card26WrapCards component.
  late Card26WrapCardsModel card26WrapCardsModel;

  @override
  void initState(BuildContext context) {
    card26WrapCardsModel = createModel(context, () => Card26WrapCardsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    card26WrapCardsModel.dispose();
  }
}
