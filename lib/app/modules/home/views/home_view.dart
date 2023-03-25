import 'package:essalud_project/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

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
                          end: Alignment.topCenter)),
                ),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 40,
                          color: Color(int.parse('6A749C', radix: 16))
                              .withOpacity(1.0),
                          child: const Center(
                            child: Text(
                              "Iniciar sesion",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      Container(
                        color: Colors.grey,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const Text(
                              "Bienbenido(a) @Apellido @nombres",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20,),
                            SizedBox(
                              width: 100,
                              child: ElevatedButton(
                                // style: ElevatedButton.styleFrom(
                                //   backgroundColor: Colors.green,
                                //   shape: RoundedRectangleBorder(
                                //     borderRadius: BorderRadius.circular(18.0), // Set the border radius
                                //     side: BorderSide(color: Color(0xFF5CBA7), width: 5), // Set the border color and width
                                //   )
                                // ),
                                onPressed: (){}, child: Text("Salir", style: TextStyle(fontSize: 24),)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
