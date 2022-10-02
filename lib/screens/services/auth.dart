import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_responsive_ui/models/user.dart';

class AuthServices{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on User(firebaseuser)
  User1 _userFromFirebaseUser(User user){
    return user !=null ? User1(uid:user.uid ): null;

  }
  // change stream 

  Stream<User1>get user{
    return _auth.authStateChanges()
    //.map((User user) => _userFromFirebaseUser(user));
    .map(_userFromFirebaseUser);
  }

  //sign anynomus
  Future singInAnon() async{

    try{

     UserCredential result = await _auth.signInAnonymously();
     User user = result.user;
     return _userFromFirebaseUser(user);

    }catch(e){

      print(e.toString());
      return null;

    }

  }

}