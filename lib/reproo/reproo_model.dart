import '/components/card14_video_widget.dart';
import '/components/reproducotr1_widget.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'reproo_widget.dart' show ReprooWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReprooModel extends FlutterFlowModel<ReprooWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for reproducotr1 component.
  late Reproducotr1Model reproducotr1Model;
  // Model for Card14Video component.
  late Card14VideoModel card14VideoModel1;
  // Model for Card14Video component.
  late Card14VideoModel card14VideoModel2;
  // Model for Card14Video component.
  late Card14VideoModel card14VideoModel3;
  // Model for Card14Video component.
  late Card14VideoModel card14VideoModel4;
  // Model for Card14Video component.
  late Card14VideoModel card14VideoModel5;
  // Model for Card14Video component.
  late Card14VideoModel card14VideoModel6;
  // Model for Card14Video component.
  late Card14VideoModel card14VideoModel7;
  // Model for Card14Video component.
  late Card14VideoModel card14VideoModel8;
  // Model for Card14Video component.
  late Card14VideoModel card14VideoModel9;

  @override
  void initState(BuildContext context) {
    reproducotr1Model = createModel(context, () => Reproducotr1Model());
    card14VideoModel1 = createModel(context, () => Card14VideoModel());
    card14VideoModel2 = createModel(context, () => Card14VideoModel());
    card14VideoModel3 = createModel(context, () => Card14VideoModel());
    card14VideoModel4 = createModel(context, () => Card14VideoModel());
    card14VideoModel5 = createModel(context, () => Card14VideoModel());
    card14VideoModel6 = createModel(context, () => Card14VideoModel());
    card14VideoModel7 = createModel(context, () => Card14VideoModel());
    card14VideoModel8 = createModel(context, () => Card14VideoModel());
    card14VideoModel9 = createModel(context, () => Card14VideoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    reproducotr1Model.dispose();
    card14VideoModel1.dispose();
    card14VideoModel2.dispose();
    card14VideoModel3.dispose();
    card14VideoModel4.dispose();
    card14VideoModel5.dispose();
    card14VideoModel6.dispose();
    card14VideoModel7.dispose();
    card14VideoModel8.dispose();
    card14VideoModel9.dispose();
  }
}
