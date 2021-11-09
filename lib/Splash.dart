import 'package:flutter/material.dart';

import 'Login.dart';

class Splash extends StatefulWidget{
  const Splash({ Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState (){
    super.initState();
    navigateToHome();
  }

  navigateToHome()async{
    await Future.delayed(Duration(milliseconds: 4000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
  }


  @override
  Widget build(BuildContext build){
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Center(
        child: Container(
            width: 200,
            height: 150,
            /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
            child: Image.asset('asset/images/pnud_splash.jpg')),
      ),

    );
  }
}