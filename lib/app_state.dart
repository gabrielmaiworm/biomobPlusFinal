import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _calcadaReferencia =
        prefs.getString('ff_calcadaReferencia')?.ref ?? _calcadaReferencia;
    _Acessivel = prefs.getDouble('ff_Acessivel') ?? _Acessivel;
    _NaoPossui = prefs.getDouble('ff_NaoPossui') ?? _NaoPossui;
  }

  late SharedPreferences prefs;

  DocumentReference? _calcadaReferencia;
  DocumentReference? get calcadaReferencia => _calcadaReferencia;
  set calcadaReferencia(DocumentReference? _value) {
    if (_value == null) {
      return;
    }
    _calcadaReferencia = _value;
    prefs.setString('ff_calcadaReferencia', _value.path);
  }

  String categoria = 'lodging';

  String posicao = '';

  String foto = '';

  String distancia = '500';

  String vazio = '';

  String nome = '';

  String email = '';

  String senha = '';

  bool showFullList = true;

  String verificaNota = 'NaN';

  String Estrelas = '';

  String choiceType = 'hospedagem';

  double entradaPrincipal = 0.0;

  double banheiro = 0.0;

  double circulacaoInterna = 0.0;

  double estacionamento = 0.0;

  double calcada = 0.0;

  double audioVisual = 0.0;

  bool circulacaoInternaNA = false;

  bool estacionamentoNA = false;

  bool calcadaNA = false;

  bool audioVisualNA = false;

  bool entradaPrincipalNA = false;

  bool banheiroAcessivelNA = false;

  double _Acessivel = 3;
  double get Acessivel => _Acessivel;
  set Acessivel(double _value) {
    _Acessivel = _value;
    prefs.setDouble('ff_Acessivel', _value);
  }

  double _NaoPossui = 2;
  double get NaoPossui => _NaoPossui;
  set NaoPossui(double _value) {
    _NaoPossui = _value;
    prefs.setDouble('ff_NaoPossui', _value);
  }

  String deep = '';

  double avaliacaoNota = 5;

  String adequada = '';

  String ausenciaSinalizacao = '';

  String sinalizacaoInadequada = '';

  String impossivelUtilizacao = '';

  String outrosInadequada = '';

  String inexistente = '';

  String filtroEstacionamento = 'mostrarTodos';
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
