class UserStore {
  static final UserStore _userStore = UserStore._internal();
  String _username;

  // Singleton
  // https://stackoverflow.com/questions/12649573/how-do-you-build-a-singleton-in-dart
  // factory constructors https://dart.dev/guides/language/language-tour
  factory UserStore() {
    return _userStore;
  }
  UserStore._internal();

  String getUsername() {
    return _username;
  }

  void setUsername(String username) {
    _username = username;
  }
}
