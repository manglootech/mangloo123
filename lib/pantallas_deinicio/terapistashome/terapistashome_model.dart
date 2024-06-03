import '/components/logo/logo_widget.dart';
import '/components/tarjetadegradado_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'terapistashome_widget.dart' show TerapistashomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class TerapistashomeModel extends FlutterFlowModel<TerapistashomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for tarjetadegradado component.
  late TarjetadegradadoModel tarjetadegradadoModel1;
  // Model for tarjetadegradado component.
  late TarjetadegradadoModel tarjetadegradadoModel2;
  // Model for tarjetadegradado component.
  late TarjetadegradadoModel tarjetadegradadoModel3;
  // Model for tarjetadegradado component.
  late TarjetadegradadoModel tarjetadegradadoModel4;
  // Model for tarjetadegradado component.
  late TarjetadegradadoModel tarjetadegradadoModel5;
  // Model for LOGO component.
  late LogoModel logoModel;

  @override
  void initState(BuildContext context) {
    tarjetadegradadoModel1 =
        createModel(context, () => TarjetadegradadoModel());
    tarjetadegradadoModel2 =
        createModel(context, () => TarjetadegradadoModel());
    tarjetadegradadoModel3 =
        createModel(context, () => TarjetadegradadoModel());
    tarjetadegradadoModel4 =
        createModel(context, () => TarjetadegradadoModel());
    tarjetadegradadoModel5 =
        createModel(context, () => TarjetadegradadoModel());
    logoModel = createModel(context, () => LogoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tarjetadegradadoModel1.dispose();
    tarjetadegradadoModel2.dispose();
    tarjetadegradadoModel3.dispose();
    tarjetadegradadoModel4.dispose();
    tarjetadegradadoModel5.dispose();
    logoModel.dispose();
  }
}
