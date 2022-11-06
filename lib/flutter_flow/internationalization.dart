import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ptText = '',
    String? enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'a0mq23os': {
      'pt': 'Bem-vindo(a)',
      'en': 'Welcome to)',
    },
    'uelb09wl': {
      'pt': 'Hello World',
      'en': 'Hello World',
    },
    'zti6ptd9': {
      'pt': 'Locais',
      'en': 'locations',
    },
    'am46thae': {
      'pt': 'Acessíveis',
      'en': 'affordable',
    },
    'e698dhhk': {
      'pt': 'Vagas de',
      'en': 'job vacancies',
    },
    'jeokvf2l': {
      'pt': 'Estacionamento',
      'en': 'Parking',
    },
    '4ttdm6q9': {
      'pt': 'Vagas de',
      'en': 'job vacancies',
    },
    'wbkwg30m': {
      'pt': 'Emprego',
      'en': 'affordable',
    },
    '2gq4c2wy': {
      'pt': 'Eventos',
      'en': 'events',
    },
    'w4xrbxhw': {
      'pt': 'Acessíveis',
      'en': 'affordable',
    },
    'x9bf1zcf': {
      'pt': 'Áudio Guia',
      'en': 'Audio Guide',
    },
    '6r3wgcrb': {
      'pt': '0',
      'en': '0',
    },
    'vcj56upv': {
      'pt': '',
      'en': '',
    },
  },
  // Comentarios
  {
    'siia3b7o': {
      'pt': 'Comentários',
      'en': 'Comments',
    },
    '4hwjq4gy': {
      'pt': 'Mais recentes primeiro',
      'en': 'newest first',
    },
    'cg0s7nbs': {
      'pt': 'Menu',
      'en': 'Menu',
    },
  },
  // MeuPerfil
  {
    '61g8dobm': {
      'pt': '[User Name Here]',
      'en': '[User Name Here]',
    },
    'jp09aysb': {
      'pt': 'email',
      'en': 'email',
    },
    '1wwmmxlz': {
      'pt': 'Mudar para modo nortuno',
      'en': 'switch to night mode',
    },
    'jwisz543': {
      'pt': 'Configurações da conta',
      'en': 'Account configurations',
    },
    '2chvzqb4': {
      'pt': 'Alterar senha',
      'en': 'Change Password',
    },
    'uiiwg15b': {
      'pt': 'Editar perfil',
      'en': 'Edit profile',
    },
    'ltd41toj': {
      'pt': 'Sair',
      'en': 'Go out',
    },
    'w3v1cvjr': {
      'pt': 'Meu Perfil',
      'en': 'Profile',
    },
  },
  // MinhasAvaliacoes
  {
    'ovbesfx5': {
      'pt': 'Minhas avaliações',
      'en': 'my ratings',
    },
    '690umsqv': {
      'pt': 'Mais recentes primeiro',
      'en': 'newest first',
    },
    'dzxjuyx0': {
      'pt': 'Menu',
      'en': 'Menu',
    },
  },
  // Entrada
  {
    'nbeujnoz': {
      'pt': 'Onde você quer',
      'en': 'Where do you want',
    },
    'vun8kdgy': {
      'pt': 'chegar ',
      'en': 'to arrive',
    },
    'gy0dtsl2': {
      'pt': 'next ',
      'en': 'next',
    },
    'gun54ky6': {
      'pt': 'hoje?',
      'en': 'today?',
    },
    'u6snrs8z': {
      'pt': 'Entrar',
      'en': 'Log in',
    },
    'ko0lllxp': {
      'pt': 'Cadastre-se',
      'en': 'Register',
    },
    'sbhrlex1': {
      'pt': 'Entrar como visitante',
      'en': 'Log in as a guest',
    },
    'szwk7a42': {
      'pt': 'Home',
      'en': 'home',
    },
  },
  // Login
  {
    'ko4ddkar': {
      'pt': 'E-mail',
      'en': 'Email',
    },
    'rdngxvox': {
      'pt': 'exemplo@gmail.com',
      'en': 'example@gmail.com',
    },
    'cpi5y94p': {
      'pt': 'Senha',
      'en': 'Password',
    },
    'iersnl72': {
      'pt': 'Insira sua senha...',
      'en': 'Enter your password...',
    },
    'yoqsc5u5': {
      'pt': 'Esqueci minha senha',
      'en': 'I forgot my password',
    },
    'c6ky1hkc': {
      'pt': 'Entrar',
      'en': 'Log in',
    },
    '59dkj9a8': {
      'pt': 'Ou entre com',
      'en': 'or enter with',
    },
    '454cht5m': {
      'pt': 'Não possui cadastro? ',
      'en': 'Don&#39;t have a registration?',
    },
    'bl9iwu1f': {
      'pt': 'Cadastre-se',
      'en': 'Register',
    },
    'vui5hqzt': {
      'pt': 'Home',
      'en': 'home',
    },
  },
  // InfoAdicionalCopy
  {
    'w91pzmfy': {
      'pt': 'Enviar foto',
      'en': 'send picture',
    },
    'y5vtrs50': {
      'pt': 'CPF',
      'en': 'CPF',
    },
    'c2u703bc': {
      'pt': 'Insira seu CPF aqui...',
      'en': 'Enter your CPF here...',
    },
    '365tgraj': {
      'pt': 'Telefone',
      'en': 'Telephone',
    },
    'jcygn8x5': {
      'pt': 'Insira seu telefone aqui...',
      'en': 'Enter your phone here...',
    },
    '2m2wwjx8': {
      'pt': 'Você possui algum tipo de deficiência?',
      'en': 'Do you have any kind of disability?',
    },
    'h3m015uh': {
      'pt': 'Física',
      'en': 'Physical',
    },
    'qp1w3dxm': {
      'pt': 'Mental ou Intelectual',
      'en': 'mental or intellectual',
    },
    'pnktexjh': {
      'pt': 'Sensorial',
      'en': 'Sensory',
    },
    'oezummrx': {
      'pt': 'Doença Rara',
      'en': 'Rare disease',
    },
    'zwdgprw9': {
      'pt': 'Não possui',
      'en': 'does not have',
    },
    '7ib6nddz': {
      'pt': 'Selecionar deficiência...',
      'en': 'Select...',
    },
    'ppgt4x90': {
      'pt': 'Qual seu gênero?',
      'en': 'Do you have any kind of disability?',
    },
    '9t26ien7': {
      'pt': 'Homem',
      'en': 'Physical',
    },
    'kgph69hu': {
      'pt': 'Mulher',
      'en': 'mental or intellectual',
    },
    'i0p5k3m1': {
      'pt': 'Não Binário',
      'en': 'Sensory',
    },
    '00qb4oaj': {
      'pt': 'Prefiro não informar',
      'en': 'Rare disease',
    },
    'ayu6m6wz': {
      'pt': 'Selecionar gênero...',
      'en': 'Select...',
    },
    '73wzqyq0': {
      'pt': 'Criar conta',
      'en': 'Create an account',
    },
    '4xf56v8o': {
      'pt': 'Já possui uma conta? ',
      'en': 'Already have an account?',
    },
    '4e47id04': {
      'pt': 'Entrar',
      'en': 'Log in',
    },
    'ibr45ba8': {
      'pt': 'Campo obrigatório.',
      'en': 'Required field.',
    },
    'jkykqs2c': {
      'pt': 'CPF inválido.',
      'en': 'Invalid CPF.',
    },
    'bk0mgjfi': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'gzx4dt0n': {
      'pt': 'Campo obrigatório.',
      'en': 'Required field.',
    },
    'a3epwayw': {
      'pt': 'Telefone inválido.',
      'en': 'Invalid phone.',
    },
    'pj2bpjjs': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'srruv0tx': {
      'pt': 'Home',
      'en': 'home',
    },
  },
  // EditProfile
  {
    '20cbqgpg': {
      'pt': 'Alterar informações do perfil',
      'en': 'Change profile information',
    },
    'tx5mqri3': {
      'pt': 'Nome completo',
      'en': 'Full name',
    },
    'jsubrkg3': {
      'pt': '',
      'en': '',
    },
    'eftywpm8': {
      'pt': 'Insira seu nome completo',
      'en': 'Enter your full name',
    },
    'ru0hew7m': {
      'pt': 'E-mail',
      'en': 'Email',
    },
    'f53bzdef': {
      'pt': '',
      'en': '',
    },
    'sseih2gb': {
      'pt': 'exemplo@gmail.com',
      'en': 'example@gmail.com',
    },
    '4tez5kfh': {
      'pt': 'Salvar Alterações',
      'en': 'Save editions',
    },
    '6een31qq': {
      'pt': 'Please fill in a valid email address...',
      'en': 'Please fill in a valid email address...',
    },
    'tkcl3gpy': {
      'pt': 'Please fill in a valid email address...',
      'en': 'Please fill in a valid email address...',
    },
    'gebu11sp': {
      'pt': 'Editar Perfil',
      'en': 'Edit profile',
    },
    'ip2r8h4v': {
      'pt': 'Home',
      'en': 'home',
    },
  },
  // RegisterCopy
  {
    'uzhysm64': {
      'pt': 'Nome completo',
      'en': 'Full name',
    },
    'rewwjq32': {
      'pt': 'Insira seu nome...',
      'en': 'Enter your name...',
    },
    'c5luf4j7': {
      'pt': 'E-mail',
      'en': 'Email',
    },
    'hhg38aet': {
      'pt': 'Insira seu email...',
      'en': 'Enter your email...',
    },
    'sb9jl20h': {
      'pt': 'Senha',
      'en': 'Password',
    },
    'oj134tfi': {
      'pt': 'Insira sua senha...',
      'en': 'Enter your password...',
    },
    '5ujrsidf': {
      'pt': 'Confirmar senha',
      'en': 'confirm password',
    },
    'grzr5hot': {
      'pt': 'Confirmar sua senha...',
      'en': 'Confirm your password...',
    },
    'adt7p7cm': {
      'pt': 'Avançar',
      'en': 'Advance',
    },
    '3hgxnkyc': {
      'pt': 'Já possui uma conta? ',
      'en': 'Already have an account?',
    },
    'gmesqelt': {
      'pt': 'Entrar',
      'en': 'Log in',
    },
    'cy50xuh1': {
      'pt': 'O nome não pode ser vazio.',
      'en': 'The name cannot be empty.',
    },
    'bbmsdfdv': {
      'pt': 'Insira um nome válido.',
      'en': 'Please enter a valid name.',
    },
    '6ydmf1pb': {
      'pt': 'E-mail inválido.',
      'en': 'Invalid email.',
    },
    '4vqfmog0': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'xk2dxfkf': {
      'pt': 'Campo obrigatório.',
      'en': 'Required field.',
    },
    'ct3dkbgz': {
      'pt': 'Email inválido.',
      'en': 'Invalid email.',
    },
    '3lkdniay': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'm2nat2ul': {
      'pt': 'Campo obrigatório.',
      'en': 'Required field.',
    },
    'vezhpq0t': {
      'pt': 'A senha deve ter no mínimo 6 caracteres.',
      'en': 'The password must be at least 6 characters long.',
    },
    'lt5bgtp8': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'c15iz8rl': {
      'pt': 'Field is required',
      'en': 'Field is required',
    },
    'lty9u699': {
      'pt': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'lnv51ci9': {
      'pt': 'Home',
      'en': 'home',
    },
  },
  // Avaliacao
  {
    'wjbduw7u': {
      'pt': 'Avaliação de Acessibilidade',
      'en': 'Accessibility Assessment',
    },
    'dw6r1mee': {
      'pt': 'Entrada Principal',
      'en': 'Main entrance',
    },
    'd21ur8q8': {
      'pt': 'Possui entrada facilitada?',
      'en': 'Do you have easy entry?',
    },
    'qvc7nft5': {
      'pt': 'Sim',
      'en': 'Yea',
    },
    'viexxf8k': {
      'pt': 'Não',
      'en': 'No',
    },
    'w07lutil': {
      'pt': 'Não se aplica',
      'en': 'Not applicable',
    },
    'xi7qrgaw': {
      'pt': 'Banheiro Acessível',
      'en': 'Accessible bathroom',
    },
    'pbbol8qv': {
      'pt': 'Possui banheiro acessível para pessoas deficientes?',
      'en': 'Do you have an accessible bathroom for people with disabilities?',
    },
    'teo7oqib': {
      'pt': 'Sim',
      'en': 'Yea',
    },
    'v4hp5oj0': {
      'pt': 'Não',
      'en': 'No',
    },
    'b39gf3av': {
      'pt': 'Não se aplica',
      'en': 'Not applicable',
    },
    '5ymp7iew': {
      'pt': 'Circulação Interna',
      'en': 'Internal Circulation',
    },
    'oiiyma09': {
      'pt': 'O usuário possui autonomia para circular?',
      'en': 'Does the user have autonomy to circulate?',
    },
    'j4i7xud9': {
      'pt': 'Sim',
      'en': 'Yea',
    },
    '9io58ryw': {
      'pt': 'Não',
      'en': 'No',
    },
    'sz9dr1fo': {
      'pt': 'Não se aplica',
      'en': 'Not applicable',
    },
    'sawscz68': {
      'pt': 'Estacionamento',
      'en': 'Parking',
    },
    'gvk8ytj8': {
      'pt':
          'Esse local possui vagas reservadas para pessoas com deficiência ou serviço de manobrista?',
      'en':
          'Does this location have parking spaces reserved for people with disabilities or valet service?',
    },
    'rfqghutc': {
      'pt': 'Sim',
      'en': 'Yea',
    },
    'f5fpddtq': {
      'pt': 'Não',
      'en': 'No',
    },
    'z2ctsmvj': {
      'pt': 'Não se aplica',
      'en': 'Not applicable',
    },
    '43l8wzvy': {
      'pt': 'Calçada',
      'en': 'Sidewalk',
    },
    '2w3oejud': {
      'pt': 'Possui calçada para fácil acesso?',
      'en': 'Do you have a sidewalk for easy access?',
    },
    'fduxd7dk': {
      'pt': 'Sim',
      'en': 'Yea',
    },
    'boqmgkfz': {
      'pt': 'Não',
      'en': 'No',
    },
    'qx92r5gs': {
      'pt': 'Não se aplica',
      'en': 'Not applicable',
    },
    '1edpj9uu': {
      'pt': 'Áudio/Visual',
      'en': 'Audio-visual',
    },
    'k10b3jvg': {
      'pt':
          'Possui recursos para surdos ou cegos? ( Piso tátil, Cardápio em braile, interprete de Libras, ETC)',
      'en':
          'Do you have resources for the deaf or blind? (Tactile flooring, Braille menu, Libras interpreter, ETC)',
    },
    'h7u0euer': {
      'pt': 'Sim',
      'en': 'Yea',
    },
    'wnbsibnv': {
      'pt': 'Não',
      'en': 'No',
    },
    'dk9w3xd0': {
      'pt': 'Não se aplica',
      'en': 'Not applicable',
    },
    's9l0gzfi': {
      'pt': 'Dê sua nota',
      'en': 'give your note',
    },
    'ivnf4ts6': {
      'pt': 'Comente sua nota',
      'en': 'comment your note',
    },
    'f57xz0k5': {
      'pt': 'Escreva sua opnião..',
      'en': 'Write your opinion..',
    },
    '1dnz5qu6': {
      'pt': 'Confirmar',
      'en': 'Confirm',
    },
    '9jznk0ig': {
      'pt': 'Home',
      'en': 'home',
    },
  },
  // LocaisAcessiveis
  {
    'k1lc07sd': {
      'pt': 'Locais acessíveis',
      'en': 'accessible places',
    },
    'x1bzbwmh': {
      'pt': '0',
      'en': '0',
    },
    'qyid9nq6': {
      'pt': 'Procure um lugar',
      'en': 'look for a place',
    },
    'do2jjwda': {
      'pt': 'Hospedagem',
      'en': 'accommodation',
    },
    'daya0wph': {
      'pt': 'Hospedagem',
      'en': 'accommodation',
    },
    'mbj28o1l': {
      'pt': 'Comer e Beber',
      'en': 'Eat and drink',
    },
    'jprukiar': {
      'pt': 'Comer e Beber',
      'en': 'Eat and drink',
    },
    'm9qe0vdl': {
      'pt': 'Saúde e Bem-estar',
      'en': 'Health and wellness',
    },
    '8mvr0xuc': {
      'pt': 'Saúde e Bem-estar',
      'en': 'Health and wellness',
    },
    '7r3egxp4': {
      'pt': 'Serviços',
      'en': 'Health and wellness',
    },
    'ty7977ae': {
      'pt': 'Serviços',
      'en': 'Health and wellness',
    },
    '2jboo48d': {
      'pt': 'Varejo',
      'en': 'Health and wellness',
    },
    'ehzs2yvh': {
      'pt': 'Varejo',
      'en': 'Health and wellness',
    },
    'g7ymtkjo': {
      'pt': 'Eventos',
      'en': 'Health and wellness',
    },
    'raow4olv': {
      'pt': 'Eventos',
      'en': 'Health and wellness',
    },
    'k7rsls9i': {
      'pt': 'Transporte Público',
      'en': 'Health and wellness',
    },
    '0uez8451': {
      'pt': 'Transporte Público',
      'en': 'Health and wellness',
    },
    'tm3h80ce': {
      'pt': 'Perto de mim',
      'en': 'Close to me',
    },
    '91r9ow58': {
      'pt': 'Não Avaliados',
      'en': 'Not Evaluated',
    },
    '67xyj6tz': {
      'pt': 'Avaliados',
      'en': 'evaluated',
    },
    's0qoha8u': {
      'pt': 'Menu',
      'en': 'Menu',
    },
  },
  // Estabelecimento
  {
    '7zxqtq5j': {
      'pt': 'Locais acessíveis',
      'en': 'accessible places',
    },
    'kkdykwl5': {
      'pt': '0',
      'en': '0',
    },
    'wrzn4psd': {
      'pt': 'Avaliar',
      'en': 'To evaluate',
    },
    '4o1tl2nu': {
      'pt': 'Como chegar?',
      'en': 'How to get?',
    },
    'jtwibql3': {
      'pt': 'Ligar',
      'en': 'Turn on',
    },
    'zkcoe2i1': {
      'pt': 'Comentários',
      'en': 'Comments',
    },
    'jnyoq7wm': {
      'pt': 'Avaliações do local',
      'en': 'Site reviews',
    },
    '2tlfkk55': {
      'pt': 'Entrada Principal',
      'en': 'Main entrance',
    },
    '8uea8kjz': {
      'pt': 'Acessível',
      'en': 'Accessible',
    },
    'nkihwe0u': {
      'pt': 'Banheiro',
      'en': 'WC',
    },
    '8o0epm04': {
      'pt': 'Sem avaliações',
      'en': 'no reviews',
    },
    'ehuhyu73': {
      'pt': 'Estacionamento',
      'en': 'Parking',
    },
    'atjrik3n': {
      'pt': 'Sem avaliações',
      'en': 'no reviews',
    },
    'ppd0d07j': {
      'pt': 'Circulação Interna',
      'en': 'Internal Circulation',
    },
    '8sfozp1a': {
      'pt': 'Sem avaliações',
      'en': 'no reviews',
    },
    'iahz5zgu': {
      'pt': 'Calçada',
      'en': 'Sidewalk',
    },
    'laltdewc': {
      'pt': 'Sem avaliações',
      'en': 'no reviews',
    },
    '18xbrcuz': {
      'pt': 'Áudio/Visual',
      'en': 'Audio-visual',
    },
    'cd06m7hb': {
      'pt': 'Sem avaliações',
      'en': 'no reviews',
    },
    '117qynlb': {
      'pt': 'Menu',
      'en': 'Menu',
    },
  },
  // ChangePassword
  {
    '4e2ulocv': {
      'pt': 'Insira seu e-mail e enviaremos um link para alterar sua senha',
      'en':
          'Enter your email and we&#39;ll send you a link to change your password',
    },
    'xlwoi75h': {
      'pt': 'E-mail',
      'en': 'Email',
    },
    'hoia90sc': {
      'pt': '',
      'en': '',
    },
    'oqgh4lps': {
      'pt': 'exemplo@gmail.com',
      'en': 'example@gmail.com',
    },
    '8lqa1cdq': {
      'pt': 'Enviar link',
      'en': 'send link',
    },
    '1qwre21b': {
      'pt': 'Please fill in a valid email address...',
      'en': 'Please fill in a valid email address...',
    },
    'oeed74pq': {
      'pt': 'Please fill in a valid email address...',
      'en': 'Please fill in a valid email address...',
    },
    '1dndkq1k': {
      'pt': 'Alterar senha',
      'en': 'Change Password',
    },
    '1fj6b45r': {
      'pt': 'Home',
      'en': 'home',
    },
  },
  // MenuAcessibilidade
  {
    'o824mw4z': {
      'pt': 'Opções de Acessibilidade',
      'en': '',
    },
    'jwd6f3hh': {
      'pt': 'Modo padrão',
      'en': '',
    },
    'k5kqpl06': {
      'pt': 'Modo Noturno',
      'en': '',
    },
    'pjgkrpoh': {
      'pt': 'Modo Dautônico',
      'en': '',
    },
    'jhd2fo0v': {
      'pt': 'Alto Contraste',
      'en': '',
    },
    'qfotfi5o': {
      'pt': 'Escala de Cinza',
      'en': '',
    },
    'iipdpv83': {
      'pt': '',
      'en': '',
    },
  },
  // Eventos
  {
    'vucva6m1': {
      'pt': 'Eventos',
      'en': 'Comments',
    },
    'ruhdv51h': {
      'pt': 'Procure um evento',
      'en': '',
    },
    'idr3oa15': {
      'pt': 'às',
      'en': '',
    },
    'rew943hh': {
      'pt': 'horas',
      'en': '',
    },
    '39601ues': {
      'pt': 'Visitar o Site',
      'en': '',
    },
    'olkzwujt': {
      'pt': 'Descrição do Evento',
      'en': '',
    },
    'yv8e6q6u': {
      'pt': 'Menu',
      'en': 'Menu',
    },
  },
  // VagasEmprego
  {
    'uchh6ndj': {
      'pt': 'Vagas de emprego',
      'en': 'Comments',
    },
    'p6f4dymz': {
      'pt': 'Procure um emprego',
      'en': '',
    },
    '1cpz1um6': {
      'pt': 'Detalhar as informações da vaga...',
      'en': '',
    },
    'gc82wzcv': {
      'pt': 'Menu',
      'en': 'Menu',
    },
  },
  // Estacionamento
  {
    '2awovjlb': {
      'pt': 'Vagas de Estacionamento',
      'en': 'Comments',
    },
    'y0gfo51m': {
      'pt': 'Vagas Próximas',
      'en': '',
    },
    'rrod6u3o': {
      'pt': 'Localização:',
      'en': '',
    },
    'y49nq0ky': {
      'pt': 'Ver no mapa',
      'en': '',
    },
    '4yt8emhu': {
      'pt': 'Menu',
      'en': 'Menu',
    },
  },
  // AvaliacaoEstacionamento
  {
    'tc0c7e7n': {
      'pt': 'Avaliação de Acessibilidade',
      'en': 'Accessibility Assessment',
    },
    'e96fgfhm': {
      'pt': 'Vaga é Adequada',
      'en': '',
    },
    'kcttthe6': {
      'pt': 'Vaga acessível',
      'en': '',
    },
    'dnsez0ue': {
      'pt': 'Vaga é Inadequada',
      'en': '',
    },
    'w2mqx8cj': {
      'pt': 'Ausência de Sinalização',
      'en': '',
    },
    'tx763ida': {
      'pt': 'Sinalização Inadequada',
      'en': '',
    },
    'pofzmg61': {
      'pt': 'Impossível Utilização',
      'en': '',
    },
    'pohexz0p': {
      'pt': 'Outros',
      'en': '',
    },
    'glg2q1km': {
      'pt': 'Vaga é Inexistente',
      'en': '',
    },
    'jbc0cljy': {
      'pt': 'Inexistente',
      'en': '',
    },
    's8qf7mix': {
      'pt': 'Quer deixar um comentário?',
      'en': 'comment your note',
    },
    'zmmi1bnm': {
      'pt': 'Escreva sua opnião..',
      'en': 'Write your opinion..',
    },
    'qk72rmak': {
      'pt': 'Confirmar',
      'en': 'Confirm',
    },
    '4nkvgctv': {
      'pt': 'Home',
      'en': 'home',
    },
  },
  // MapaEstacionamento
  {
    'e8528bac': {
      'pt': 'Estacionamento',
      'en': 'Comments',
    },
    'fb63b09j': {
      'pt': 'Menu',
      'en': 'Menu',
    },
  },
  // alterarFoto
  {
    '72vxxsa1': {
      'pt': 'Upload da foto',
      'en': 'photo upload',
    },
    '0mnt9d3v': {
      'pt': 'Salvar',
      'en': 'To save',
    },
  },
  // NavBar1
  {
    'vjejms1g': {
      'pt': 'Inicio',
      'en': 'Start',
    },
    '6umg574h': {
      'pt': 'Meu Perfil',
      'en': 'User',
    },
    'wrytahu3': {
      'pt': 'Menu',
      'en': 'Menu',
    },
  },
  // ListaVazia
  {
    '5p1unhex': {
      'pt': 'Lista Vazia',
      'en': 'empty list',
    },
    'szdil0ej': {
      'pt': 'Parece que não há locais que encaixem na sua busca :(',
      'en': 'It seems that there are no places that fit your search :(',
    },
  },
  // FiltroLocal
  {
    '9ov502z4': {
      'pt': 'Filtro de Locais',
      'en': '',
    },
    'xbvz8um6': {
      'pt': 'Faça uma busca mais específica de locais próximos\nde você.',
      'en': '',
    },
    'lil83jgh': {
      'pt': 'Avaliação dos Usuários',
      'en': '',
    },
    'm3hdxkfw': {
      'pt': 'Distância',
      'en': '',
    },
    'bfcvw1go': {
      'pt': 'Até ',
      'en': '',
    },
    'eym05ywe': {
      'pt': ' km',
      'en': '',
    },
    't3t31tpm': {
      'pt': 'Salvar Filtros',
      'en': '',
    },
    '8njd0pxs': {
      'pt': 'Limpar Filtros',
      'en': '',
    },
  },
  // BottomEmprego
  {
    'ascqqotx': {
      'pt': 'Acessar vaga',
      'en': '',
    },
    '9g68ygeo': {
      'pt': 'Descrição da Vaga',
      'en': '',
    },
  },
  // BottomEstacionamento
  {
    '68isku1t': {
      'pt': 'Localização:',
      'en': '',
    },
    'jqea6n27': {
      'pt': 'Nº de vagas:',
      'en': '',
    },
    'ye97mh9k': {
      'pt': 'Descrição:',
      'en': '',
    },
    'rb8nospl': {
      'pt': 'Avaliar Vaga',
      'en': '',
    },
  },
  // FiltroEstacionamento
  {
    'rflz563s': {
      'pt': 'Filtro de Vagas',
      'en': '',
    },
    'z7hxxmaf': {
      'pt':
          'Faça uma busca mais específica de estacionamentos próximos de você.',
      'en': '',
    },
    'oicll87p': {
      'pt': 'Tipo de vaga',
      'en': '',
    },
    '0gkaqzcw': {
      'pt': 'Vaga de Gestante',
      'en': '',
    },
    'jnze2nfx': {
      'pt': 'Vaga de Idoso',
      'en': '',
    },
    'so31ny0u': {
      'pt': 'Vaga de Deficiênte',
      'en': '',
    },
    '1wgz8tg1': {
      'pt': 'Estacionamento Privado',
      'en': '',
    },
    'nwp9twfn': {
      'pt': 'Salvar Filtros',
      'en': '',
    },
    'o2ia8u6b': {
      'pt': 'Limpar Filtros',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'y7cr66ir': {
      'pt': 'Para podermos encontrar locais proximos',
      'en': 'So we can find nearby places',
    },
    'x6usv61d': {
      'pt': '',
      'en': '',
    },
    '9uuy0akq': {
      'pt': '',
      'en': '',
    },
    'wbnba7sy': {
      'pt': 'Email ou senha incorretos.',
      'en': 'Incorrect email or password.',
    },
    '43382zsx': {
      'pt': 'Email para alteração de senha enviado!',
      'en': 'Email for password change sent!',
    },
    'y5zp353s': {
      'pt': 'O email é necessário.',
      'en': 'Email is required.',
    },
    'avtbpafd': {
      'pt': 'Insira um número de celular válido.',
      'en': 'Please enter a valid mobile number.',
    },
    'fn3drk4d': {
      'pt': 'As senhas não são iguais.',
      'en': 'Passwords are not the same.',
    },
    '05lf6tbz': {
      'pt': 'Insira o código enviado por SMS.',
      'en': 'Enter the code sent by SMS.',
    },
    'mwp4kb8q': {
      'pt': '',
      'en': '',
    },
    'z4p6tixf': {
      'pt': '',
      'en': '',
    },
    '9tf4qf22': {
      'pt': '',
      'en': '',
    },
    'vj3e9dbr': {
      'pt': '',
      'en': '',
    },
    'tlt8gcup': {
      'pt': '',
      'en': '',
    },
    'px9h6ife': {
      'pt': '',
      'en': '',
    },
    'crpjdy0f': {
      'pt': '',
      'en': '',
    },
    'fjgium3n': {
      'pt': '',
      'en': '',
    },
    'sukf0q8o': {
      'pt': '',
      'en': '',
    },
    'l9xse0qt': {
      'pt': '',
      'en': '',
    },
    'tr4qi8s5': {
      'pt': '',
      'en': '',
    },
    'tlkd19o4': {
      'pt': '',
      'en': '',
    },
    'jr696zgs': {
      'pt': '',
      'en': '',
    },
    'b4za6vfs': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
