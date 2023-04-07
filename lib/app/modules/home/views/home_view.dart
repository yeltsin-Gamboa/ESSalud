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
                          //height: 40,
                          padding: EdgeInsets.all(8),
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
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            const Text(
                              "Bienbenido(a) @Apellido @nombres",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20,),
                            SizedBox(
                              width: 300,
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
                //____________________________________
                CustomElevatedButton(
                  onButtonSelected: (index) {
                    // Manejar la selección del botón
                  },
                ),
                CustomFloatingActionButton(
                  onButtonSelected: (index) {
                    // Manejar la selección del botón
                  },
                ),
/*                 Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      SizedBox(height: 50),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FloatingActionButton.extended(
                                  onPressed: () {
                                    //codigo para ejecutar
                                  },
                                  icon: Icon(Icons.settings, color: Colors.green),
                                  label: Text('Mantenimiento',style: TextStyle(color: Colors.black),),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                                FloatingActionButton.extended(
                                  onPressed: () {},
                                  icon: Icon(Icons.currency_exchange, color: Colors.green),
                                  label: Text(' Mis Boletos ',style: TextStyle(color: Colors.black),),
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
                ), */
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomElevatedButton extends StatefulWidget {
  final Function(int) onButtonSelected;
  
  CustomElevatedButton({Key? key, required this.onButtonSelected})
      : super(key: key);

  @override
  _CustomElevatedButtonState createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  int _selectedButtonIndex = 0;

  void _selectButton(int index) {
    setState(() {
      _selectedButtonIndex = index;
      widget.onButtonSelected(index);
    });
  }

  Widget _buildContainerWithButton() {
    return SizedBox(
      width: 300,
      child:Container(
          key: UniqueKey(),
          margin: EdgeInsets.only(left: 0, top: 0,bottom: 300),
          padding: EdgeInsets.only(top:0, left:0,bottom:100, right: 200),
          color: Color.fromARGB(255, 223, 237, 245),
          child: ElevatedButton(
            onPressed: () => widget.onButtonSelected(_selectedButtonIndex),
            child: Text(_selectedButtonIndex == 1 ? 'servicio' : 'Boleto'),
          ),
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: kToolbarHeight),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: _buildContainerWithButton(),
            ),
          ),
        ),
      ],
    );
  }
}


class CustomFloatingActionButton extends StatelessWidget {
  final Function(int) onButtonSelected;
  CustomFloatingActionButton({Key? key, required this.onButtonSelected}) : super(key: key);

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
                      onPressed: () =>onButtonSelected(0),
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
                      onPressed: () =>
                          onButtonSelected(1), 
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


