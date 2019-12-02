class RegisterBody {
  String username;
  String email;
  String password;
  String confirmPassword;

  RegisterBody(String username, String email, String password, String confirmPassword) {
    this.username = username;
    this.email = email;
    this.password = password;
    this.confirmPassword = confirmPassword;
  }
}
