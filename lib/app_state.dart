import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _isActionCompleted = false;
  bool get isActionCompleted => _isActionCompleted;
  set isActionCompleted(bool _value) {
    _isActionCompleted = _value;
  }

  bool _loadingbar = false;
  bool get loadingbar => _loadingbar;
  set loadingbar(bool _value) {
    _loadingbar = _value;
  }

  String _u = '';
  String get u => _u;
  set u(String _value) {
    _u = _value;
  }

  bool _page = false;
  bool get page => _page;
  set page(bool _value) {
    _page = _value;
  }

  String _imagen = '';
  String get imagen => _imagen;
  set imagen(String _value) {
    _imagen = _value;
  }

  String _video = '';
  String get video => _video;
  set video(String _value) {
    _video = _value;
  }

  String _audio = '';
  String get audio => _audio;
  set audio(String _value) {
    _audio = _value;
  }
}
