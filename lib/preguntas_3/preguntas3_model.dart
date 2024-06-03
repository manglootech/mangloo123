import '/components/logoparafondoblanco_widget.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'preguntas3_widget.dart' show Preguntas3Widget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Preguntas3Model extends FlutterFlowModel<Preguntas3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for logoparafondoblanco component.
  late LogoparafondoblancoModel logoparafondoblancoModel1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for logoparafondoblanco component.
  late LogoparafondoblancoModel logoparafondoblancoModel2;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController1;

  List<String>? get checkboxGroupValues1 =>
      checkboxGroupValueController1?.value;
  set checkboxGroupValues1(List<String>? v) =>
      checkboxGroupValueController1?.value = v;

  // Model for logoparafondoblanco component.
  late LogoparafondoblancoModel logoparafondoblancoModel3;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController2;

  List<String>? get checkboxGroupValues2 =>
      checkboxGroupValueController2?.value;
  set checkboxGroupValues2(List<String>? v) =>
      checkboxGroupValueController2?.value = v;

  @override
  void initState(BuildContext context) {
    logoparafondoblancoModel1 =
        createModel(context, () => LogoparafondoblancoModel());
    logoparafondoblancoModel2 =
        createModel(context, () => LogoparafondoblancoModel());
    logoparafondoblancoModel3 =
        createModel(context, () => LogoparafondoblancoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    logoparafondoblancoModel1.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    logoparafondoblancoModel2.dispose();
    logoparafondoblancoModel3.dispose();
  }
}
