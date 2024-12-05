enum PAGES {
  splash,
  login,
  home,
  second,
}

extension AppPageExtension on PAGES {
  String get path {
    switch (this) {
      case PAGES.splash:
        return '/';
      case PAGES.home:
        return '/home';
      case PAGES.login:
        return '/login';
      case PAGES.second:
        return '/second';
      default:
        return '/';
    }
  }

  String get name {
    switch (this) {
      case PAGES.splash:
        return 'Splash';
      case PAGES.home:
        return 'Home';
      case PAGES.login:
        return 'Login';
      case PAGES.second:
        return 'Second Screen';
      default:
        return 'Main';
    }
  }

  String get title {
    switch (this) {
      case PAGES.splash:
        return 'Запуск приложения';
      case PAGES.home:
        return 'Организация';
      case PAGES.login:
        return 'Авторизация';
      case PAGES.second:
        return 'Второй экран';
      default:
        return 'Main';
    }
  }
}
