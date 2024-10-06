class UserEntity {
  final String name;
  final String email;
  final String uid;

  UserEntity(this.name, this.email, this.uid);
  toMap() {
    return {
      "name": name,
      "email": email,
      "uid": uid,
    };
  }
}
