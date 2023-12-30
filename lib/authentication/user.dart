class UserModel {
  String? uid;
  String? email;
  String? name;
  String? password;
  // String? localisation;
  UserModel({
    this.uid,
    this.email,
    this.name,
    this.password,
  });

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      name: map['name'],
      password: map['password'],
      // localisation: map['localisation'],
    );
  }
  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'password': password,
      // 'localisation': localisation,
    };
  }
}
