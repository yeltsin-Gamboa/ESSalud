import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                  'Boleta de pagos - Ayacucho',
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
                      _form(),
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
  Widget _form() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), 
              isDense: true, 
            icon: Text("Usuario"),
            border: OutlineInputBorder(
              // borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            icon: Text("Clave    "),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), 
              isDense: true, 
            border: OutlineInputBorder(
              
      
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 100,
          // height: 50,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onPressed: () {},
              child: Text("login")),
        ),SizedBox(height: 50,)
      ]),
    );
  }
}
