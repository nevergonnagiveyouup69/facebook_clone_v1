import 'package:flutter_facebook_responsive_ui/screens/services/auth.dart';
import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Facebook'),
        titleTextStyle: TextStyle(
           color: Color(0xFF1777F2),
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
        ),
        elevation: 0.0,
        centerTitle:true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 100.0,
          vertical: 20.0,
        ),
        child: ElevatedButton(
          onPressed: () async{
            dynamic result = await _auth.singInAnon();
            if(result == null){
              print('error_signing_in');
            }else{
              print('signed_in');
              print(result.uid);
            }
          },
          child: Text('Sign_in_anon'),
          style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0)),
        ),
      ),
    );
  }
}