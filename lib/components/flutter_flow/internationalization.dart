import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
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

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

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
  // acompanhamenttodasatividades
  {
    'gd5lzz13': {
      'pt': 'PhaseFlow',
      'en': '',
    },
    'frypqq9p': {
      'pt': 'Ferramentas ',
      'en': '',
    },
    'kvpv3iy4': {
      'pt': 'Dashboard',
      'en': '',
    },
    'ao1omrei': {
      'pt': 'Chats',
      'en': '',
    },
    '3mqmdbhb': {
      'pt': 'Projects',
      'en': '',
    },
    'dxapex6d': {
      'pt': 'Recent Orders',
      'en': '',
    },
    'kfjf7952': {
      'pt': '12',
      'en': '',
    },
    'bnsbpoi8': {
      'pt': 'Configurações',
      'en': '',
    },
    'b34yohri': {
      'pt': 'Meus Planos',
      'en': '',
    },
    'h17xoc6w': {
      'pt': 'Explorar',
      'en': '',
    },
    'rg2bctf2': {
      'pt': 'Andrew D.',
      'en': '',
    },
    '8fme7tx9': {
      'pt': 'admin@gmail.com',
      'en': '',
    },
    'ly0yzpc1': {
      'pt': 'Idiomas',
      'en': '',
    },
    '52ih3rrb': {
      'pt': 'Seus cursos ',
      'en': '',
    },
    'zdj4b3gf': {
      'pt': 'Adicionar ',
      'en': '',
    },
    'ulpc575p': {
      'pt': 'Filtro',
      'en': '',
    },
    '4ad1agn0': {
      'pt': 'Ativo',
      'en': '',
    },
    'vte5v4i0': {
      'pt': 'Em progresso',
      'en': '',
    },
    'njxytw6r': {
      'pt': 'Ativo',
      'en': '',
    },
    'xhhqfbaf': {
      'pt': 'Idioma: ',
      'en': '',
    },
    'c7x8p6zs': {
      'pt': 'Francês',
      'en': '',
    },
    'o0u3ak6k': {
      'pt': 'Intermediário',
      'en': '',
    },
    'eezld9sr': {
      'pt': 'Em Andamento',
      'en': '',
    },
    'oiits2ej': {
      'pt': 'Idioma :',
      'en': '',
    },
    'bfi8gidz': {
      'pt': 'Espanhol',
      'en': '',
    },
    'ux1urqjk': {
      'pt': 'Avançado',
      'en': '',
    },
    'kfd2tttb': {
      'pt': 'Ativo',
      'en': '',
    },
    '9c41ukpg': {
      'pt': 'Idioma: ',
      'en': '',
    },
    'nd8paf9g': {
      'pt': 'Francês',
      'en': '',
    },
    'pf8r7jlz': {
      'pt': 'Intermediário',
      'en': '',
    },
    'd79ofzi8': {
      'pt': 'Status: ',
      'en': '',
    },
    'almv9bkz': {
      'pt': '5/19 Lições',
      'en': '',
    },
    '1c84nlu9': {
      'pt': 'Continuar',
      'en': '',
    },
    '66u9alfn': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Profile04
  {
    '64x104uh': {
      'pt': 'Profile',
      'en': '',
    },
    'mxds0wrz': {
      'pt': 'Phrase Flow',
      'en': '',
    },
    '3nn28i4l': {
      'pt': 'phrflow.io@pflw.com',
      'en': '',
    },
    '6iqw6zcg': {
      'pt': 'Escolha o tema',
      'en': '',
    },
    'dhh2ajtk': {
      'pt': 'Switch to Light Mode',
      'en': '',
    },
    'bj1tt02c': {
      'pt': 'Configure sua conta',
      'en': '',
    },
    '83mir7k2': {
      'pt': 'Mudar Senha',
      'en': '',
    },
    'jcsu989w': {
      'pt': 'Editar Perfil',
      'en': '',
    },
    '7nxyqizd': {
      'pt': 'Sair',
      'en': '',
    },
    'f7uk8iox': {
      'pt': '__',
      'en': '',
    },
  },
  // SuccessPage
  {
    'ou93doad': {
      'pt': 'Congrats!',
      'en': '',
    },
    'ng3eoe47': {
      'pt': 'Thanks for taking the quiz.',
      'en': '',
    },
    's7rngm6w': {
      'pt': 'Go Home',
      'en': '',
    },
    '0k18yfbn': {
      'pt': 'Home',
      'en': '',
    },
  },
  // answer_idea2
  {
    '4q7r2bg7': {
      'pt': '50%',
      'en': '',
    },
    'tg9zwic4': {
      'pt': 'Hello, What your name ? ',
      'en': '',
    },
    'y7go9td4': {
      'pt': 'Verificar',
      'en': '',
    },
    '1egsjjhk': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Timelineatividade
  {
    'ssao6uj8': {
      'pt': 'Tarefas Concluidas',
      'en': '',
    },
    'o264vmox': {
      'pt': 'Todas as atividades do mês',
      'en': '',
    },
    'mqnd2kj7': {
      'pt': '14, Sept. 2021',
      'en': '',
    },
    'zvjodn57': {
      'pt': 'Created New User',
      'en': '',
    },
    'c2db343g': {
      'pt': 'Andrew Daniels',
      'en': '',
    },
    '5umq2eoy': {
      'pt': 'Andrew F.',
      'en': '',
    },
    'akytqbdo': {
      'pt': '14, Sept. 2021',
      'en': '',
    },
    'nvtw6ffp': {
      'pt': 'Creted a Group',
      'en': '',
    },
    'zmk24446': {
      'pt': 'Design Team',
      'en': '',
    },
    '6u2o9gd5': {
      'pt': 'Andrew F.',
      'en': '',
    },
    '1y4ibdyx': {
      'pt': '14, Sept. 2021',
      'en': '',
    },
    'wl7gftdk': {
      'pt': 'Created Invoice',
      'en': '',
    },
    'tgbguqdd': {
      'pt': '#402 - Contractor',
      'en': '',
    },
    'i4lzuiki': {
      'pt': 'Andrew F.',
      'en': '',
    },
    'o09sptxx': {
      'pt': 'Beginning of Activity',
      'en': '',
    },
    'jp79gu3c': {
      'pt': 'Home',
      'en': '',
    },
  },
  // introApp
  {
    'xxs3hgxf': {
      'pt': 'Bem Vindo(a)',
      'en': '',
    },
    '89d2vbqa': {
      'pt':
          'Essa é um aplicativo voltado ao seu aprendisado, de forma totalmente personalizada',
      'en': '',
    },
    'uzcvkub8': {
      'pt': 'Começar',
      'en': '',
    },
    'myfm4z2l': {
      'pt': 'Criar Conta',
      'en': '',
    },
    'jqdv212i': {
      'pt': 'Home',
      'en': '',
    },
  },
  // LoginPage
  {
    'tszwaxx6': {
      'pt': 'PhraseFlow.io',
      'en': '',
    },
    'bngg2bki': {
      'pt': 'Get Started',
      'en': '',
    },
    'oo4fbe5o': {
      'pt': 'Vamos começar preenchendo o formulário abaixo.',
      'en': '',
    },
    'euyx7d85': {
      'pt': 'Email',
      'en': '',
    },
    'b1sbrejb': {
      'pt': 'Senha',
      'en': '',
    },
    'xifz4uey': {
      'pt': 'Entrar',
      'en': '',
    },
    'of6txp2t': {
      'pt': 'Ou continue com',
      'en': '',
    },
    't8b1yvrt': {
      'pt': 'Continue com Google',
      'en': '',
    },
    'hj0ou9ih': {
      'pt': 'Continue com Apple',
      'en': '',
    },
    'zwosxvc8': {
      'pt': 'Não tem conta?  ',
      'en': '',
    },
    '6s8rg04z': {
      'pt': 'Crie já',
      'en': '',
    },
    'uirhm9cw': {
      'pt': 'Home',
      'en': '',
    },
  },
  // questionaryTypeSelectOption
  {
    'qo2k4al5': {
      'pt': '50%',
      'en': '',
    },
    'zgtf2u36': {
      'pt': 'Selecione a palavra que falta',
      'en': '',
    },
    '9skxwuoc': {
      'pt': '__________________ are boys.',
      'en': '',
    },
    '17gyaylt': {
      'pt': 'opção 1 ',
      'en': '',
    },
    'yuau5z0w': {
      'pt': 'opção 2',
      'en': '',
    },
    'h9du2hk8': {
      'pt': 'Verificar',
      'en': '',
    },
    '629jazlf': {
      'pt': 'Home',
      'en': '',
    },
  },
  // createaccount
  {
    'kedh6idp': {
      'pt': 'PhraseFlow.io',
      'en': '',
    },
    'z13xuj4g': {
      'pt': 'Criar Conta',
      'en': '',
    },
    'zirkqh75': {
      'pt': 'Vamos começar preenchendo o formulário abaixo.',
      'en': '',
    },
    'qck9f91x': {
      'pt': 'Email',
      'en': '',
    },
    '5fzhb18c': {
      'pt': 'Senha',
      'en': '',
    },
    '9o8czb87': {
      'pt': 'Confirmar Senha',
      'en': '',
    },
    'fm64vlzr': {
      'pt': 'Criar Conta',
      'en': '',
    },
    'k014z4d3': {
      'pt': 'Já possui uma conta? ',
      'en': '',
    },
    'mkysvf3z': {
      'pt': ' Entre aqui',
      'en': '',
    },
    'trca05sb': {
      'pt': 'Phrase Flow',
      'en': '',
    },
    'cyu6q9qz': {
      'pt': 'Avaliação',
      'en': '',
    },
    'pvj1isj5': {
      'pt': '5',
      'en': '',
    },
    '0uvwyfox': {
      'pt':
          'Nice outdoor courts, solid concrete and good hoops for the neighborhood.',
      'en': '',
    },
    'n2y2lbu8': {
      'pt': 'Home',
      'en': '',
    },
  },
  // questionaryTipeSelectImage
  {
    '8ff1vseb': {
      'pt': '50%',
      'en': '',
    },
    'rrr41s8i': {
      'pt': 'Verificar',
      'en': '',
    },
    'chsqrlsq': {
      'pt': 'Home',
      'en': '',
    },
  },
  // questionaryTypeWrite
  {
    'fe5i3sua': {
      'pt': '50%',
      'en': '',
    },
    'q6wmv9zd': {
      'pt': 'Escreva em \$linguagemNativa',
      'en': '',
    },
    'evryopfj': {
      'pt': 'We Can Work',
      'en': '',
    },
    'ez1fbh1d': {
      'pt': 'opção 1 ',
      'en': '',
    },
    'ir3zul9n': {
      'pt': 'opção 2',
      'en': '',
    },
    'kaegbx3m': {
      'pt': 'Verificar',
      'en': '',
    },
    'fb5b1rxq': {
      'pt': 'Home',
      'en': '',
    },
  },
  // HomeCard
  {
    'uue3y8kd': {
      'pt': 'Home Name',
      'en': '',
    },
    'izhe70ao': {
      'pt': 'Price',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'ecjmkcei': {
      'pt': '',
      'en': '',
    },
    'dnoel6wi': {
      'pt': '',
      'en': '',
    },
    'j9c5517b': {
      'pt': '',
      'en': '',
    },
    'dnc7ic4o': {
      'pt': '',
      'en': '',
    },
    'yjq3bc07': {
      'pt': '',
      'en': '',
    },
    'a1l1dciw': {
      'pt': '',
      'en': '',
    },
    '43uyzu7f': {
      'pt': '',
      'en': '',
    },
    'nlhx5c8k': {
      'pt': '',
      'en': '',
    },
    'ed7lujdi': {
      'pt': '',
      'en': '',
    },
    'x7sgasj2': {
      'pt': '',
      'en': '',
    },
    'd22q9l1l': {
      'pt': '',
      'en': '',
    },
    'bnasx663': {
      'pt': '',
      'en': '',
    },
    'x6ahwhu7': {
      'pt': '',
      'en': '',
    },
    'nfrlb5sj': {
      'pt': '',
      'en': '',
    },
    'kz1mnf9b': {
      'pt': '',
      'en': '',
    },
    '1t8fkei9': {
      'pt': '',
      'en': '',
    },
    '939pjsu6': {
      'pt': '',
      'en': '',
    },
    'pbzhfzcv': {
      'pt': '',
      'en': '',
    },
    'd94tw2wv': {
      'pt': '',
      'en': '',
    },
    'lzbprstc': {
      'pt': '',
      'en': '',
    },
    'h0hbnvzy': {
      'pt': '',
      'en': '',
    },
    'guvfqtyf': {
      'pt': '',
      'en': '',
    },
    'xrvrt219': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
