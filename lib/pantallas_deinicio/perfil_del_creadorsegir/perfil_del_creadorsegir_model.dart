import '/components/logo/logo_widget.dart';
import '/components/reproducotr1_widget.dart';
import '/components/video_preview_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'perfil_del_creadorsegir_widget.dart' show PerfilDelCreadorsegirWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilDelCreadorsegirModel
    extends FlutterFlowModel<PerfilDelCreadorsegirWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for reproducotr1 component.
  late Reproducotr1Model reproducotr1Model1;
  // Model for reproducotr1 component.
  late Reproducotr1Model reproducotr1Model2;
  // Model for reproducotr1 component.
  late Reproducotr1Model reproducotr1Model3;
  // Model for reproducotr1 component.
  late Reproducotr1Model reproducotr1Model4;
  // Model for reproducotr1 component.
  late Reproducotr1Model reproducotr1Model5;
  // Model for reproducotr1 component.
  late Reproducotr1Model reproducotr1Model6;
  // Model for reproducotr1 component.
  late Reproducotr1Model reproducotr1Model7;
  // Model for reproducotr1 component.
  late Reproducotr1Model reproducotr1Model8;
  // Model for reproducotr1 component.
  late Reproducotr1Model reproducotr1Model9;
  // Model for videoPreview component.
  late VideoPreviewModel videoPreviewModel;
  // Model for LOGO component.
  late LogoModel logoModel;

  @override
  void initState(BuildContext context) {
    reproducotr1Model1 = createModel(context, () => Reproducotr1Model());
    reproducotr1Model2 = createModel(context, () => Reproducotr1Model());
    reproducotr1Model3 = createModel(context, () => Reproducotr1Model());
    reproducotr1Model4 = createModel(context, () => Reproducotr1Model());
    reproducotr1Model5 = createModel(context, () => Reproducotr1Model());
    reproducotr1Model6 = createModel(context, () => Reproducotr1Model());
    reproducotr1Model7 = createModel(context, () => Reproducotr1Model());
    reproducotr1Model8 = createModel(context, () => Reproducotr1Model());
    reproducotr1Model9 = createModel(context, () => Reproducotr1Model());
    videoPreviewModel = createModel(context, () => VideoPreviewModel());
    logoModel = createModel(context, () => LogoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    reproducotr1Model1.dispose();
    reproducotr1Model2.dispose();
    reproducotr1Model3.dispose();
    reproducotr1Model4.dispose();
    reproducotr1Model5.dispose();
    reproducotr1Model6.dispose();
    reproducotr1Model7.dispose();
    reproducotr1Model8.dispose();
    reproducotr1Model9.dispose();
    videoPreviewModel.dispose();
    logoModel.dispose();
  }
}
