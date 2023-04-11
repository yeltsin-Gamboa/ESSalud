import 'package:essalud_project/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: Row(
              children: [
                Image.asset("assets/essalud-logo.png", height: 60),
                const Expanded(
                    child: Center(
                        child: Text(
                  'Boleta de pagos EsSalud- Ayacucho',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                ))),
              ],
            ),
          ),
          Container(
            height: 20,
            color: Colors.grey,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.white, Colors.blue],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                SizedBox(
                  //width: 300,
                  child: Row(
                    children: [
                      Drawer(
                        child: ListView(
                          padding: EdgeInsets.zero,
                          children: [
                            Container(
                              height: 20,
                              color: Color.fromARGB(255, 149, 167, 220),
                              child: Center(
                                child: Text(
                                  "Iniciar Sesión",
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Bienvenido(a) @nombre @apellidos",
                                style: TextStyle(fontSize: 14, color: Colors.black),
                              ),
                            ),
                            DrawerHeader(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 199, 205, 210),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.account_circle,
                                    size: 80,
                                  ),
                                  SizedBox(height: 20),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.bottomCenter,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Aquí iría el código para cerrar sesión
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 5, right: 5),
                                          child: Text(
                                            'Salir',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<OutlinedBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.folder_open_sharp,
                                color: Colors.yellow,
                              ),
                              title: const Text('Ver Mis Boletos'),
                              onTap: () {
                                // Lógica para la opción de ver mis boletos
                              },
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.folder_open,
                                color: const Color.fromARGB(255, 59, 255, 157),
                              ),
                              title: const Text('servicio'),
                              onTap: () {
                                // Lógica para la opción de ver mis boletos
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                CustomFloatingActionButton(
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class CustomFloatingActionButton extends StatelessWidget {
  CustomFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton.extended(
                      onPressed: (){},
                      icon: Icon(Icons.settings, color: Colors.green),
                      label: Text(
                        'Mantenimiento',
                        style: TextStyle(color: Colors.black),
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    FloatingActionButton.extended(
                      onPressed: (){}, 
                      icon:
                          Icon(Icons.currency_exchange, color: Colors.green),
                      label: Text(
                        ' Mis Boletos ',
                        style: TextStyle(color: Colors.black),
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


