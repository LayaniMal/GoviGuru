import 'package:flutter/material.dart';
import 'package:goviguru_mobile/UI/addfarm.dart';
import 'package:goviguru_mobile/UI/dashboard.dart';
import 'package:goviguru_mobile/UI/chat.dart';
import 'package:goviguru_mobile/UI/loginwithid.dart';
import 'package:goviguru_mobile/UI/pinlogin.dart';
import 'package:goviguru_mobile/UI/resetmobileno.dart';
import 'package:goviguru_mobile/UI/selectcrop.dart';
import 'package:goviguru_mobile/UI/addfarm.dart';
import 'package:goviguru_mobile/UI/home/home.dart';
import 'package:goviguru_mobile/UI/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'addfarm',
      home:Splash(),
    );
  }
}