import '/backend/supabase/supabase.dart';
import '/components/carta1_contenido_popular_widget.dart';
import '/components/carta1_widget.dart';
import '/components/carta_terapistas_componte_widget.dart';
import '/components/componentecarrusel1_widget.dart';
import '/components/logo/logo_widget.dart';
import '/components/repro_audio_widget.dart';
import '/components/tags_widget.dart';
import '/components/tarjeta_desafio_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'home_original_widget.dart' show HomeOriginalWidget;
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class HomeOriginalModel extends FlutterFlowModel<HomeOriginalWidget> {
  ///  Local state fields for this page.

  bool primeraParte = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for carta1 component.
  late Carta1Model carta1Model;
  // Model for tags component.
  late TagsModel tagsModel1;
  // Model for tags component.
  late TagsModel tagsModel2;
  // Model for tags component.
  late TagsModel tagsModel3;
  // Model for tags component.
  late TagsModel tagsModel4;
  // Model for tags component.
  late TagsModel tagsModel5;
  // Model for tags component.
  late TagsModel tagsModel6;
  // Model for componentecarrusel1 component.
  late Componentecarrusel1Model componentecarrusel1Model;
  // Model for ReproAudio component.
  late ReproAudioModel reproAudioModel;
  // Model for tarjetaDesafio component.
  late TarjetaDesafioModel tarjetaDesafioModel1;
  // Model for tarjetaDesafio component.
  late TarjetaDesafioModel tarjetaDesafioModel2;
  // Model for tarjetaDesafio component.
  late TarjetaDesafioModel tarjetaDesafioModel3;
  // Model for tarjetaDesafio component.
  late TarjetaDesafioModel tarjetaDesafioModel4;
  // Model for cartaTerapistasComponte component.
  late CartaTerapistasComponteModel cartaTerapistasComponteModel1;
  // Model for cartaTerapistasComponte component.
  late CartaTerapistasComponteModel cartaTerapistasComponteModel2;
  // Model for cartaTerapistasComponte component.
  late CartaTerapistasComponteModel cartaTerapistasComponteModel3;
  // Model for cartaTerapistasComponte component.
  late CartaTerapistasComponteModel cartaTerapistasComponteModel4;
  // Model for cartaTerapistasComponte component.
  late CartaTerapistasComponteModel cartaTerapistasComponteModel5;
  // Model for carta1ContenidoPopular component.
  late Carta1ContenidoPopularModel carta1ContenidoPopularModel;
  // Model for LOGO component.
  late LogoModel logoModel;

  @override
  void initState(BuildContext context) {
    carta1Model = createModel(context, () => Carta1Model());
    tagsModel1 = createModel(context, () => TagsModel());
    tagsModel2 = createModel(context, () => TagsModel());
    tagsModel3 = createModel(context, () => TagsModel());
    tagsModel4 = createModel(context, () => TagsModel());
    tagsModel5 = createModel(context, () => TagsModel());
    tagsModel6 = createModel(context, () => TagsModel());
    componentecarrusel1Model =
        createModel(context, () => Componentecarrusel1Model());
    reproAudioModel = createModel(context, () => ReproAudioModel());
    tarjetaDesafioModel1 = createModel(context, () => TarjetaDesafioModel());
    tarjetaDesafioModel2 = createModel(context, () => TarjetaDesafioModel());
    tarjetaDesafioModel3 = createModel(context, () => TarjetaDesafioModel());
    tarjetaDesafioModel4 = createModel(context, () => TarjetaDesafioModel());
    cartaTerapistasComponteModel1 =
        createModel(context, () => CartaTerapistasComponteModel());
    cartaTerapistasComponteModel2 =
        createModel(context, () => CartaTerapistasComponteModel());
    cartaTerapistasComponteModel3 =
        createModel(context, () => CartaTerapistasComponteModel());
    cartaTerapistasComponteModel4 =
        createModel(context, () => CartaTerapistasComponteModel());
    cartaTerapistasComponteModel5 =
        createModel(context, () => CartaTerapistasComponteModel());
    carta1ContenidoPopularModel =
        createModel(context, () => Carta1ContenidoPopularModel());
    logoModel = createModel(context, () => LogoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    carta1Model.dispose();
    tagsModel1.dispose();
    tagsModel2.dispose();
    tagsModel3.dispose();
    tagsModel4.dispose();
    tagsModel5.dispose();
    tagsModel6.dispose();
    componentecarrusel1Model.dispose();
    reproAudioModel.dispose();
    tarjetaDesafioModel1.dispose();
    tarjetaDesafioModel2.dispose();
    tarjetaDesafioModel3.dispose();
    tarjetaDesafioModel4.dispose();
    cartaTerapistasComponteModel1.dispose();
    cartaTerapistasComponteModel2.dispose();
    cartaTerapistasComponteModel3.dispose();
    cartaTerapistasComponteModel4.dispose();
    cartaTerapistasComponteModel5.dispose();
    carta1ContenidoPopularModel.dispose();
    logoModel.dispose();
  }
}
