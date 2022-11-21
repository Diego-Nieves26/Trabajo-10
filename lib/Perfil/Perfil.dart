import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_8_project/Preferences/preferences.dart';
import 'package:team_8_project/Provider/provider.dart';

class PerfilScreen extends StatefulWidget {
  const PerfilScreen({super.key});

  @override
  State<PerfilScreen> createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        centerTitle: true,
        actions: [
          Switch.adaptive(
              value: Preferences.theme,
              onChanged: (value) {
                Preferences.theme = value;
                final themeP =
                    Provider.of<ThemeProvider>(context, listen: false);
                value ? themeP.setOscuro() : themeP.setClaro();
                setState(() {});
              }),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color.fromARGB(255, 159, 189, 255),
                    Color(0xff6ab9f7)
                  ],
                  center: Alignment.bottomLeft,
                  radius: .2,
                  tileMode: TileMode.mirror,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                 Image.asset("assets/menuimg/gify.gif"),
                  Text("Jaime"),
                  Text("5"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
