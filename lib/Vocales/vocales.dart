import 'package:flutter/material.dart';
import 'package:team_8_project/menu_principal.dart';

class Vocales extends StatefulWidget {
  const Vocales({super.key});

  @override
  State<Vocales> createState() => _VocalesState();
}

class _VocalesState extends State<Vocales> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        image: const DecorationImage(
          image: AssetImage('assets/menuimg/rec1.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(0),
          // backgroundColor: Colors.red,

          //Ícono de volver por defecto desactivado:
          automaticallyImplyLeading: false,
          //.

          title: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: FittedBox(
                    child: FloatingActionButton(
                      elevation: 0,
                      child: Image.asset('assets/menuimg/rec2.png'),
                      onPressed: () {
                        Navigator.pop(
                          (context),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text('Abecedario', style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
          toolbarHeight: 90,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Draggable(
                feedback: Container(
                  color: Colors.red,
                  width: 230,
                  height: 230,
                ),
                childWhenDragging: Container(
                  color: Colors.yellow,
                  width: 200,
                  height: 200,
                ),
                child: Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
