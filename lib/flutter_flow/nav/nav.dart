import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : Welcome1Widget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : Welcome1Widget(),
        ),
        FFRoute(
          name: 'onboarding_2',
          path: '/onboarding',
          builder: (context, params) => Onboarding2Widget(),
        ),
        FFRoute(
          name: 'register',
          path: '/register',
          builder: (context, params) => RegisterWidget(),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'registrationSuccess',
          path: '/registrationSuccess',
          builder: (context, params) => RegistrationSuccessWidget(),
        ),
        FFRoute(
          name: 'welcome_1',
          path: '/welcomeCopy',
          builder: (context, params) => Welcome1Widget(),
        ),
        FFRoute(
          name: 'profileCopy',
          path: '/profileCopy',
          builder: (context, params) => ProfileCopyWidget(),
        ),
        FFRoute(
          name: 'interesesAdicciones',
          path: '/interesesAdicciones',
          builder: (context, params) => InteresesAdiccionesWidget(
            foto: params.getParam<VideoRow>(
              'foto',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'Search',
          path: '/search',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Search')
              : SearchWidget(),
        ),
        FFRoute(
          name: 'preguntas_3',
          path: '/preguntas3',
          builder: (context, params) => Preguntas3Widget(),
        ),
        FFRoute(
          name: 'inicio1',
          path: '/inicio1',
          builder: (context, params) => Inicio1Widget(),
        ),
        FFRoute(
          name: 'Editarperfil',
          path: '/editarperfil',
          builder: (context, params) => EditarperfilWidget(),
        ),
        FFRoute(
          name: 'componenteCards',
          path: '/componenteCards',
          builder: (context, params) => ComponenteCardsWidget(
            tumbail: params.getParam<VideoRow>(
              'tumbail',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'audioplayerprueba',
          path: '/audioplayerprueba',
          builder: (context, params) => AudioplayerpruebaWidget(),
        ),
        FFRoute(
          name: 'testdeestres1',
          path: '/testdeestres1',
          builder: (context, params) => Testdeestres1Widget(),
        ),
        FFRoute(
          name: 'homeOriginal',
          path: '/homeOriginal',
          builder: (context, params) => HomeOriginalWidget(
            imagepath: params.getParam<TumbailsRow>(
              'imagepath',
              ParamType.SupabaseRow,
            ),
            name: params.getParam<TumbailsRow>(
              'name',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'Carta1Adentro',
          path: '/carta1Adentro',
          builder: (context, params) => Carta1AdentroWidget(),
        ),
        FFRoute(
          name: 'notificacion',
          path: '/notificacion',
          builder: (context, params) => NotificacionWidget(),
        ),
        FFRoute(
          name: 'tagss',
          path: '/tagss',
          builder: (context, params) => TagssWidget(),
        ),
        FFRoute(
          name: 'tagssNavegacion1',
          path: '/tagssNavegacion1',
          builder: (context, params) => TagssNavegacion1Widget(),
        ),
        FFRoute(
          name: 'reproo',
          path: '/reproo',
          builder: (context, params) => ReprooWidget(),
        ),
        FFRoute(
          name: 'Details14Destination',
          path: '/details14Destination',
          builder: (context, params) => Details14DestinationWidget(),
        ),
        FFRoute(
          name: 'miPerfil',
          path: '/miPerfil',
          builder: (context, params) => MiPerfilWidget(
            name: params.getParam(
              'name',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            photo: params.getParam(
              'photo',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            description: params.getParam(
              'description',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            etiqueta: params.getParam(
              'etiqueta',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'Cartaadentro',
          path: '/cartaadentro',
          builder: (context, params) => CartaadentroWidget(),
        ),
        FFRoute(
          name: 'editaElPerfil',
          path: '/editaElPerfil',
          builder: (context, params) => EditaElPerfilWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Capas1CartaDeContenido',
          path: '/capas1CartaDeContenido',
          builder: (context, params) => Capas1CartaDeContenidoWidget(
            imagenpath: params.getParam(
              'imagenpath',
              ParamType.String,
            ),
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            audio: params.getParam(
              'audio',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'PerfilDelCreador',
          path: '/perfilDelCreador',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'PerfilDelCreador')
              : PerfilDelCreadorWidget(),
        ),
        FFRoute(
          name: 'videoRepro',
          path: '/videoRepro',
          builder: (context, params) => VideoReproWidget(),
        ),
        FFRoute(
          name: 'TerapistaScrollHeader',
          path: '/terapistaScrollHeader',
          builder: (context, params) => TerapistaScrollHeaderWidget(),
        ),
        FFRoute(
          name: 'tinder',
          path: '/tinder',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'tinder')
              : TinderWidget(),
        ),
        FFRoute(
          name: 'pERFILtERAPISTAS',
          path: '/pERFILtERAPISTAS',
          builder: (context, params) => PERFILtERAPISTASWidget(),
        ),
        FFRoute(
          name: 'aGENDARcITA',
          path: '/aGENDARcITA',
          builder: (context, params) => AGENDARcITAWidget(),
        ),
        FFRoute(
          name: 'aGENDARcITA2',
          path: '/aGENDARcITA2',
          builder: (context, params) => AGENDARcITA2Widget(),
        ),
        FFRoute(
          name: 'buTTONSHEET',
          path: '/buTTONSHEET',
          builder: (context, params) => BuTTONSHEETWidget(),
        ),
        FFRoute(
          name: 'audioChatDemo',
          path: '/audioChatDemo',
          builder: (context, params) => AudioChatDemoWidget(),
        ),
        FFRoute(
          name: 'aGENDARcITA3',
          path: '/aGENDARcITA3',
          builder: (context, params) => AGENDARcITA3Widget(),
        ),
        FFRoute(
          name: 'webview',
          path: '/webview',
          builder: (context, params) => WebviewWidget(),
        ),
        FFRoute(
          name: 'home',
          path: '/home',
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'home') : HomeWidget(),
        ),
        FFRoute(
          name: 'terapistas',
          path: '/terapistas',
          builder: (context, params) => TerapistasWidget(),
        ),
        FFRoute(
          name: 'TerapistaScrollHeaderCopy',
          path: '/terapistaScrollHeaderCopy',
          builder: (context, params) => TerapistaScrollHeaderCopyWidget(),
        ),
        FFRoute(
          name: 'TerapistaScrollHeaderCopy2',
          path: '/terapistaScrollHeaderCopy2',
          builder: (context, params) => TerapistaScrollHeaderCopy2Widget(),
        ),
        FFRoute(
          name: 'terapista3',
          path: '/terapista3',
          builder: (context, params) => Terapista3Widget(),
        ),
        FFRoute(
          name: 'terapistashome',
          path: '/terapista',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'terapistashome')
              : TerapistashomeWidget(),
        ),
        FFRoute(
          name: 'PerfilDelCreadorsegir',
          path: '/perfilDelCreadorsegir',
          builder: (context, params) => PerfilDelCreadorsegirWidget(),
        ),
        FFRoute(
          name: 'SubirCreador',
          path: '/SubirCreador',
          builder: (context, params) => SubirCreadorWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'calendario',
          path: '/calendario',
          builder: (context, params) => CalendarioWidget(),
        ),
        FFRoute(
          name: 'perfilexperiemnto',
          path: '/perfilexperiemnto',
          builder: (context, params) => PerfilexperiemntoWidget(),
        ),
        FFRoute(
          name: 'alertdialog',
          path: '/alertdialog',
          builder: (context, params) => AlertdialogWidget(),
        ),
        FFRoute(
          name: 'subirCONTENTia',
          path: '/subirCONTENTia',
          builder: (context, params) => SubirCONTENTiaWidget(),
        ),
        FFRoute(
          name: 'loguin',
          path: '/loguin',
          builder: (context, params) => LoguinWidget(),
        ),
        FFRoute(
          name: 'ReproduccionPage',
          path: '/reproduccionPage',
          builder: (context, params) => ReproduccionPageWidget(
            imagen2: params.getParam(
              'imagen2',
              ParamType.String,
            ),
            audio: params.getParam(
              'audio',
              ParamType.String,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/welcomeCopy';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.white,
                  child: Center(
                    child: Image.asset(
                      'assets/images/Recurso_17mangloo.png',
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 100.0,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
