import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/screens/authentication/authenticate.dart';
import 'package:flutter_facebook_responsive_ui/screens/authentication/sign_in.dart';
import 'package:flutter_facebook_responsive_ui/models/user.dart';
import 'package:flutter_facebook_responsive_ui/screens/home/nav_screen.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User1>(context);
  if(user == null){
    return NavScreen();
  }else{
    return Authenticate();
  }
  }
}