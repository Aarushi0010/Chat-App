import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/screens/auth_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDY16vbjVg24rhMayUE8tUBWPAFSdNA9w0",
            appId: "1:593103971459:web:f45328df86ae90631367b6",
            messagingSenderId: "593103971459",
            projectId: "flutter-chat-app-a124f",
            storageBucket: "flutter-chat-app-a124f.firebasestorage.app"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat',
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 63, 17, 177))),
      home: const AuthScreen(),
    );
  }
}
