import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:team_8_project/Preferences/preferences.dart';
import 'package:team_8_project/Provider/provider.dart';
import 'package:team_8_project/Provider/provider_login.dart';
import 'package:team_8_project/menu_principal.dart';
import 'package:team_8_project/screens/verify_auth_screen.dart';
import 'package:team_8_project/service/msg_auth.dart';
import 'package:team_8_project/service/service_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) => ThemeProvider(isDarkMode: Preferences.theme)),
      ChangeNotifierProvider(create: (_) => ProviderLogin()),
      ChangeNotifierProvider(create: (_) => AuthService()),
    ],
    child: const Team8App(),
  ));
}

class Team8App extends StatelessWidget {
  const Team8App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: [
          SystemUiOverlay.top,
        ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Team 8 Proyecto',
      scaffoldMessengerKey: MsgAuth.msgkey,
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      home: const VerifyAuthScreen(),
    );
  }
}
