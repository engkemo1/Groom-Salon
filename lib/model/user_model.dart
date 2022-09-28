import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? name;
  final String? email;
  final String? uid;
  final String? phone;
  final String? password;
  final String? role;




  UserModel({ required this.role ,required this.password,

    required this.name,
    required this.email,
    required this.uid,
    this.phone,

  });

  Map<String, dynamic> toJson() => {
    'password':password,
    "name": name,
    "email": email,
    "uid": uid,
    'phone':phone,
  'role':role

  };

  static UserModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return UserModel(
      password:snapshot['password'],
      email: snapshot['email'],
      uid: snapshot['uid'],
      name: snapshot['name'],
      phone:snapshot['phone'],
        role:snapshot['role']

    );
  }
}