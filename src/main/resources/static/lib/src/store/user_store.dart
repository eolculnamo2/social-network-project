class UserStore {
  static final UserStore _userStore = UserStore._internal();
  String username;

  // Singleton
  // https://stackoverflow.com/questions/12649573/how-do-you-build-a-singleton-in-dart
  // factory constructors https://dart.dev/guides/language/language-tour
  factory UserStore() {
    return _userStore;
  }
  UserStore._internal();
}
