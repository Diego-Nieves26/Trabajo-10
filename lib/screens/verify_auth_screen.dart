import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_8_project/menu_principal.dart';
import 'package:team_8_project/screens/login_screen.dart';
import 'package:team_8_project/service/service_auth.dart';

class VerifyAuthScreen extends StatelessWidget {
  const VerifyAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: authService.leerToken(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const Text(
                'Espere...',
                style: TextStyle(fontSize: 28),
              );
            }
            if (snapshot.data == null) {
              Future.microtask(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              });
            } else {
              Future.microtask(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuPrincipal()));
              });
            }
            return Container();
          },
        ),
      ),
    );
  }
}
