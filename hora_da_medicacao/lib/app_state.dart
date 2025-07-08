import 'package:flutter/material.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _primeiroAcesso = prefs.getBool('ff_primeiroAcesso') ?? _primeiroAcesso;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _tempoRestanteItem = 0;
  int get tempoRestanteItem => _tempoRestanteItem;
  set tempoRestanteItem(int value) {
    _tempoRestanteItem = value;
  }

  String _playerid = '';
  String get playerid => _playerid;
  set playerid(String value) {
    _playerid = value;
  }

  /// Variavel para aparecer a tela de adicionar os dados do idoso no primeiro
  /// login
  bool _primeiroAcesso = false;
  bool get primeiroAcesso => _primeiroAcesso;
  set primeiroAcesso(bool value) {
    _primeiroAcesso = value;
    prefs.setBool('ff_primeiroAcesso', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
