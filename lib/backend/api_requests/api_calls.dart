import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetDetalhesLocalCall {
  static Future<ApiCallResponse> call({
    String? place = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GET DETALHES LOCAL',
      apiUrl:
          'https://maps.googleapis.com/maps/api/place/details/json?place_id=${place}&key=AIzaSyB5bgwqEelomy8qhYXb95UAXOiRE6BZ3ZU',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application / json; charset = UTF-8',
      },
      params: {},
      returnBody: true,
    );
  }
}

class GETFotoCall {
  static Future<ApiCallResponse> call({
    String? foto = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GET Foto',
      apiUrl:
          'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=${foto}&key=AIzaSyB5bgwqEelomy8qhYXb95UAXOiRE6BZ3ZU',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class POSTavaliacaoCall {
  static Future<ApiCallResponse> call({
    String? placeId = '',
    String? placeName = '',
    String? userId = '',
    String? userName = '',
    double? circulacaoInterna,
    double? estacionamento,
    double? calcada,
    double? audioVisual,
    double? entradaPrincipal,
    double? banheiroAcessivel,
    double? star,
    String? comentario = '',
    String? userImage = '',
    String? data = '',
    bool? circulacaoInternaNA,
    bool? estacionamentoNA,
    bool? calcadaNA,
    bool? audioVisualNA,
    bool? entradaPrincipalNA,
    bool? banheiroAcessivelNA,
  }) {
    final body = '''
{
  "placeId": "${placeId}",
  "placeName": "${placeName}",
  "userId": "${userId}",
  "userName": "${userName}",
  "circulacaoInterna": ${circulacaoInterna},
  "estacionamento": ${estacionamento},
  "calcada": ${calcada},
  "audioVisual": ${audioVisual},
  "entradaPrincipal": ${entradaPrincipal},
  "banheiroAcessivel": ${banheiroAcessivel},
  "circulacaoInternaNA": ${circulacaoInternaNA},
  "estacionamentoNA": ${estacionamentoNA},
  "calcadaNA": ${calcadaNA},
  "audioVisualNA": ${audioVisualNA},
  "entradaPrincipalNA": ${entradaPrincipalNA},
  "banheiroAcessivelNA": ${banheiroAcessivelNA},
  "star": "${star}",
  "comentario": "${comentario}",
  "user_image": "${userImage}",
  "data": "${data}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POSTavaliacao',
      apiUrl: 'https://api-tux-biomob.herokuapp.com/biomob-api/evaluation',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class BuscarLocaisPertoUserCall {
  static Future<ApiCallResponse> call({
    String? categoria = 'supermaket',
    String? range = '',
    String? posicao = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'buscarLocaisPertoUser',
      apiUrl:
          'https://api-tux-biomob.herokuapp.com/biomob-api/places/${categoria}/${posicao}/${range}',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application / json; charset = UTF-8',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$..name''',
      );
  static dynamic endereco(dynamic response) => getJsonField(
        response,
        r'''$..formatted_address''',
      );
  static dynamic nota(dynamic response) => getJsonField(
        response,
        r'''$..rating''',
      );
  static dynamic place(dynamic response) => getJsonField(
        response,
        r'''$..place_id''',
      );
  static dynamic foto(dynamic response) => getJsonField(
        response,
        r'''$..photo_reference''',
      );
}

class GETAvaliacaoPorPlaceIDCall {
  static Future<ApiCallResponse> call({
    String? placeId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GET avaliacao por placeID',
      apiUrl:
          'https://api-tux-biomob.herokuapp.com/biomob-api/evaluation/place/${placeId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class GETAvaliacaoUserCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GET avaliacao User',
      apiUrl:
          'https://api-tux-biomob.herokuapp.com/biomob-api/evaluation/user/${userId}',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json; charset=iso-8859-1',
      },
      params: {},
      returnBody: true,
    );
  }
}

class CadastroDeUsuarioCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? name = '',
    String? cpf = '',
    String? telefone = '',
    String? deficiencia = '',
    String? foto = '',
    String? password = '',
    String? aniversario = '',
    String? genero = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "name": "${name}",
  "cpf": "${cpf}",
  "telefone": "${telefone}",
  "deficiencia": "${deficiencia}",
  "foto": "${foto}",
  "password": "${password}",
  "dataNascimento": "${aniversario}",
  "genero": "${genero}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cadastro de usuario',
      apiUrl: 'https://api-tux-biomob.herokuapp.com/biomob-api/user/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class POSTLoginCall {
  static Future<ApiCallResponse> call({
    String? email = 'teste@biomob.com',
    String? password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST Login',
      apiUrl: 'https://api-tux-biomob.herokuapp.com/biomob-api/user/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class POSTCalcadaCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
    String? estado = '',
    String? cidade = '',
    String? bairro = '',
    String? logradouro = '',
    String? observacaoEndereco = '',
    double? larguraCalcada,
    String? faixaCalcada = '',
    String? pavimentacaoCalcada = '',
    String? sinalizacaoTatilCalcada = '',
    String? obstaculosCalcada = '',
    String? extraCalcada = '',
    String? geralTravessia = '',
    String? tipoIlhaRefugioTravessia = '',
    String? ilhaRefugioTravessia = '',
    String? tipoTravessia = '',
    String? fotoPavimentacao = '',
    String? fotoPisoDirecional = '',
    String? fotoPisoAlerta = '',
    String? fotoObstaculo = '',
    String? fotoExtraCalcada = '',
    String? fotoTravessiaGeral = '',
    String? fotoIlhaRefugio = '',
    String? fotoTiposTravessia = '',
    int? nota,
  }) {
    final body = '''
{
"cep": "${cep}",
"estado": "${estado}",
"cidade": "${cidade}",
"bairro": "${bairro}",
"logradouro": "${logradouro}",
"observacao_endereco": "${observacaoEndereco}",
"largura_calcada":${larguraCalcada} ,
"faixa_calcada": "${faixaCalcada}",
"pavimentacao_calcada": "${pavimentacaoCalcada}",
"sinalizacao_tatil_calcada": "${sinalizacaoTatilCalcada}",
"obstaculos_calcada": "${obstaculosCalcada}",
"extra_calcada": "${extraCalcada}",
"geral_travessia": "${geralTravessia}",
"tipo_ilha_refugio_travessia": "${tipoIlhaRefugioTravessia}",
"ilha_refugio_travessia": "${ilhaRefugioTravessia}",
"tipo_travessia": "${tipoTravessia}",
"foto_pavimentacao": "${fotoPavimentacao}",
"foto_piso_direcional": "${fotoPisoDirecional}",
"foto_piso_alerta": "${fotoPisoAlerta}",
"foto_obstaculo": "${fotoObstaculo}",
"foto_extra_calcada": "${fotoExtraCalcada}",
"foto_travessia_geral": "${fotoTravessiaGeral}",
"foto_ilha_refugio": "${fotoIlhaRefugio}",
"foto_tipos_travessia": "${fotoTiposTravessia}", 
"nota": ${nota}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST Calcada',
      apiUrl: 'https://api-tux-biomob.herokuapp.com/biomob-api/calcada',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GetEventoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GET EVENTO ',
      apiUrl: 'https://api-tux-biomob.herokuapp.com/biomob-api/evento/lista',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class POSTEventoCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? local = '',
    String? descricao = '',
    String? site = '',
    String? data = '',
    String? horarioInicio = '',
    String? horarioFim = '',
    String? foto = '',
  }) {
    final body = '''
{
  "nome": "${nome}",
  "local": "${local}",
  "site": "${site}",
  "descricao": "${descricao}",
  "horario_inicio": "${horarioInicio}",
  "horario_fim": "${horarioFim}",
  "data": "${data}",
  "foto": "${foto}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST Evento',
      apiUrl: 'http://api-tux-biomob.herokuapp.com/biomob-api/evento',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GetEmpregoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GET EMPREGO',
      apiUrl: 'https://api-tux-biomob.herokuapp.com/biomob-api/emprego/lista',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class POSTEmpregoCall {
  static Future<ApiCallResponse> call({
    String? cargo = '',
    String? descricao = '',
    String? empresa = '',
    String? local = '',
    String? logo = '',
    String? regimeContratacao = '',
    String? salario = '',
    String? dataInicio = '',
    String? dataFim = '',
    String? link = '',
  }) {
    final body = '''
{
  "cargo": "${cargo}",
  "descricao": "${descricao}",
  "empresa": "${empresa}",
  "local": "${local}",
  "logo": "${logo}",
  "regimeContratacao": "${regimeContratacao}",
  "salario": "${salario}",
  "dataInicio": "${dataInicio}",
  "dataFim": "${dataFim}",
  "link": "${link}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST Emprego',
      apiUrl: 'https://api-tux-biomob.herokuapp.com/biomob-api/emprego',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class POSTEstacionamentoCall {
  static Future<ApiCallResponse> call({
    String? endereco = '',
    String? cep = '',
    double? latitude,
    double? longitude,
    String? tipoVaga = '',
    int? qntdVagas,
    String? detalhes = '',
  }) {
    final body = '''
{
  "endereco": "${endereco}",
  "latitude": ${latitude},
  "longitude": ${longitude},
  "tipoVaga": "${tipoVaga}",
  "qntdVagas": ${qntdVagas},
  "detalhes": "${detalhes}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST Estacionamento',
      apiUrl: 'https://api-tux-biomob.herokuapp.com/biomob-api/estacionamento',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GETEstacionamentoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GET Estacionamento',
      apiUrl:
          'https://api-tux-biomob.herokuapp.com/biomob-api/estacionamento/lista',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class POSTAvaliacaoEstacionamentoCall {
  static Future<ApiCallResponse> call({
    String? estacionamentoId = '',
    String? enderecoEstacionamento = '',
    String? userId = '',
    String? userName = '',
    String? userImage = '',
    String? vagaAdequada = '',
    String? ausenciaSinalizacao = '',
    String? sinalizacaoInadequada = '',
    String? impossivelUtilizacao = '',
    String? outrosInadequada = '',
    String? inexistente = '',
    String? comentario = '',
  }) {
    final body = '''
{
  "estacionamentoId": "${estacionamentoId}",
  "enderecoEstacionamento": "${enderecoEstacionamento}",
  "userId": "${userId}",
  "userName": "${userName}",
  "user_image": "${userImage}",
  "vagaAdequada": "${vagaAdequada}",
  "ausenciaSinalizacao": "${ausenciaSinalizacao}",
  "sinalizacaoInadequada": "${sinalizacaoInadequada}",
  "impossivelUtilizacao": "${impossivelUtilizacao}",
  "outrosInadequada": "${outrosInadequada}",
  "inexistente": "${inexistente}",
  "comentario": "${comentario}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST Avaliacao Estacionamento',
      apiUrl:
          'https://api-tux-biomob.herokuapp.com/biomob-api/avaliacao-estacionamento',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}
