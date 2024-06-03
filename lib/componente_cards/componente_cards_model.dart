import '/backend/supabase/supabase.dart';
import '/components/audio_populares1_widget.dart';
import '/components/carta1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'componente_cards_widget.dart' show ComponenteCardsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponenteCardsModel extends FlutterFlowModel<ComponenteCardsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for carta12.
  late Carta1Model carta12Model;
  // Model for audioPopulares1 component.
  late AudioPopulares1Model audioPopulares1Model;

  @override
  void initState(BuildContext context) {
    carta12Model = createModel(context, () => Carta1Model());
    audioPopulares1Model = createModel(context, () => AudioPopulares1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    carta12Model.dispose();
    audioPopulares1Model.dispose();
  }
}
