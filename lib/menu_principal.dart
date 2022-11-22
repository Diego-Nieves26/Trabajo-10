import 'package:flutter/material.dart';
import 'package:team_8_project/Perfil/Perfil.dart';

//PÁGINAS
import 'package:team_8_project/Vocales/vocales.dart';

//PAQUETES
import 'package:carousel_slider/carousel_slider.dart';
import 'package:team_8_project/screens/login_screen.dart';

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //RECURSO DE FONDO

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          image: const DecorationImage(
            image: AssetImage('assets/menuimg/recx.png'),
            fit: BoxFit.fill,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        //APPBAR

        appBar: AppBar(
          backgroundColor:
              const Color.fromARGB(255, 255, 255, 255).withOpacity(0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/menuimg/rec1.png',
                width: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('Nombre de App',
                  style: TextStyle(color: Colors.black)),
            ],
          ),
          toolbarHeight: 90,
        ),

        //CARRUSEL MENÚ

        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: double.infinity,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(
                    seconds: 1,
                  ),
                  autoPlayInterval: const Duration(seconds: 5),
                  viewportFraction: 0.9,
                ),
                items: [
                  //VOCALES-----------------------------------------------------------
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: const DecorationImage(
                          image: AssetImage('assets/menuimg/rec1.png'),
                          fit: BoxFit.fill,
                        )),
                    child: Center(
                      child: MaterialButton(
                        height: double.infinity,
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Vocales()),
                          );
                        },
                      ),
                    ),
                  ),

                  //MATEMÁTICAS-----------------------------------------------------------
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: const DecorationImage(
                          image: AssetImage('assets/menuimg/rec2.png'),
                          fit: BoxFit.fill,
                        )),
                    child: Center(
                      child: MaterialButton(
                        height: double.infinity,
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),

                  //COLORES-----------------------------------------------------------
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: const DecorationImage(
                          image: AssetImage('assets/menuimg/rec3.png'),
                          fit: BoxFit.fill,
                        )),
                    child: Center(
                      child: MaterialButton(
                        height: double.infinity,
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),

                  //ANIMALES-----------------------------------------------------------
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: const DecorationImage(
                          image: AssetImage('assets/menuimg/rec4.png'),
                          fit: BoxFit.fill,
                        )),
                    child: Center(
                      child: MaterialButton(
                        height: double.infinity,
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  //AJUSTES
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Center(
                      child: MaterialButton(
                        height: double.infinity,
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),

            //RECURSO ESQUINA INFERIOR DERECHA

            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/menuimg/recx2.png',
                        width: 130,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
