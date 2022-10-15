import 'package:app/screens/LoginScreen.dart';
import 'package:app/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,overlays: [SystemUiOverlay.top])
  .then((_)=> runApp(const MyApp()));
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peer to Peer business directory app',
      theme: ThemeData(
        backgroundColor: const Color(0xFF080908), 
        primaryColor: const Color(0xFFdc613e),
        fontFamily: 'MonumentExtended'
      ),
      home: LoginScreen(), 
      routes: {
        '/home': (_)=> const HomeScreen()
      },
    );
  }
}


