import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'subir_creador_widget.dart' show SubirCreadorWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SubirCreadorModel extends FlutterFlowModel<SubirCreadorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for etiqueta widget.
  FocusNode? etiquetaFocusNode1;
  TextEditingController? etiquetaTextController1;
  String? Function(BuildContext, String?)? etiquetaTextController1Validator;
  // State field(s) for etiqueta widget.
  FocusNode? etiquetaFocusNode2;
  TextEditingController? etiquetaTextController2;
  String? Function(BuildContext, String?)? etiquetaTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    etiquetaFocusNode1?.dispose();
    etiquetaTextController1?.dispose();

    etiquetaFocusNode2?.dispose();
    etiquetaTextController2?.dispose();
  }
}
