import '/backend/supabase/supabase.dart';
import '/components/carta1_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'intereses_adicciones_widget.dart' show InteresesAdiccionesWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InteresesAdiccionesModel
    extends FlutterFlowModel<InteresesAdiccionesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for carta1 component.
  late Carta1Model carta1Model;

  @override
  void initState(BuildContext context) {
    carta1Model = createModel(context, () => Carta1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    carta1Model.dispose();
  }
}
