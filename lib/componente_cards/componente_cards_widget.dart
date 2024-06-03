import '/backend/supabase/supabase.dart';
import '/components/audio_populares1_widget.dart';
import '/components/carta1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'componente_cards_model.dart';
export 'componente_cards_model.dart';

class ComponenteCardsWidget extends StatefulWidget {
  const ComponenteCardsWidget({
    super.key,
    required this.tumbail,
  });

  final VideoRow? tumbail;

  @override
  State<ComponenteCardsWidget> createState() => _ComponenteCardsWidgetState();
}

class _ComponenteCardsWidgetState extends State<ComponenteCardsWidget> {
  late ComponenteCardsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponenteCardsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.carta12Model,
                    updateCallback: () => setState(() {}),
                    child: Carta1Widget(),
                  ),
                ),
                wrapWithModel(
                  model: _model.audioPopulares1Model,
                  updateCallback: () => setState(() {}),
                  child: AudioPopulares1Widget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
