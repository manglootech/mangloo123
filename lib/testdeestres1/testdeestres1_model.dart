import '/components/primary_button_copy/primary_button_copy_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'testdeestres1_widget.dart' show Testdeestres1Widget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class Testdeestres1Model extends FlutterFlowModel<Testdeestres1Widget> {
  ///  Local state fields for this page.

  double? test = 0.33;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Model for primaryButtonCopy component.
  late PrimaryButtonCopyModel primaryButtonCopyModel1;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // Model for primaryButtonCopy component.
  late PrimaryButtonCopyModel primaryButtonCopyModel2;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController3;
  // Model for primaryButtonCopy component.
  late PrimaryButtonCopyModel primaryButtonCopyModel3;

  @override
  void initState(BuildContext context) {
    primaryButtonCopyModel1 =
        createModel(context, () => PrimaryButtonCopyModel());
    primaryButtonCopyModel2 =
        createModel(context, () => PrimaryButtonCopyModel());
    primaryButtonCopyModel3 =
        createModel(context, () => PrimaryButtonCopyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    primaryButtonCopyModel1.dispose();
    primaryButtonCopyModel2.dispose();
    primaryButtonCopyModel3.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
  String? get radioButtonValue3 => radioButtonValueController3?.value;
}
