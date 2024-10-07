class UserEntity {
  final String name;
  final String email;
  final String uId;

  UserEntity(this.name, this.email, this.uId);
  toMap() {
    return {
      "name": name,
      "email": email,
      "uid": uId,
    };
  }
}
