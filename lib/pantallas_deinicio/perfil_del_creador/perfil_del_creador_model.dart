import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/reproducotr1_widget.dart';
import '/components/video_preview_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'perfil_del_creador_widget.dart' show PerfilDelCreadorWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilDelCreadorModel extends FlutterFlowModel<PerfilDelCreadorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for videoPreview component.
  late VideoPreviewModel videoPreviewModel;

  @override
  void initState(BuildContext context) {
    videoPreviewModel = createModel(context, () => VideoPreviewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    videoPreviewModel.dispose();
  }
}
