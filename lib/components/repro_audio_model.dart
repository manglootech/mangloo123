import '/components/reproducotr1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'repro_audio_widget.dart' show ReproAudioWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReproAudioModel extends FlutterFlowModel<ReproAudioWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for reproducotr1 component.
  late Reproducotr1Model reproducotr1Model1;
  // Model for reproducotr1 component.
  late Reproducotr1Model reproducotr1Model2;
  // Model for reproducotr1 component.
  late Reproducotr1Model reproducotr1Model3;

  @override
  void initState(BuildContext context) {
    reproducotr1Model1 = createModel(context, () => Reproducotr1Model());
    reproducotr1Model2 = createModel(context, () => Reproducotr1Model());
    reproducotr1Model3 = createModel(context, () => Reproducotr1Model());
  }

  @override
  void dispose() {
    reproducotr1Model1.dispose();
    reproducotr1Model2.dispose();
    reproducotr1Model3.dispose();
  }
}
