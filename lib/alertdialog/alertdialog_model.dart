import '/components/formulario_alert_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'alertdialog_widget.dart' show AlertdialogWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AlertdialogModel extends FlutterFlowModel<AlertdialogWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for FormularioAlertDialog component.
  late FormularioAlertDialogModel formularioAlertDialogModel;

  @override
  void initState(BuildContext context) {
    formularioAlertDialogModel =
        createModel(context, () => FormularioAlertDialogModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    formularioAlertDialogModel.dispose();
  }
}
