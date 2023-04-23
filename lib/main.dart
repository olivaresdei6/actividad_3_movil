import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Importancia de los Stack',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del producto'),
      ),
      body: Stack(
        /**
         * Cómo funciona el Stack?
         * El Stack es un widget que permite apilar widgets uno encima de otro.
         * En este caso, el Stack tiene dos hijos:
         * 1. La imagen del pastel
         * 2. El contenedor con la información del pastel
         * 
         * Son muy importantes las propiedades bottom, left, right y top, ya que estas permiten posicionar el contenedor con la información del pastel en la parte inferior de la pantalla.
         * 
         * La propiedad fit de la imagen permite ajustar la imagen al tamaño del Stack.
         * 
         * La propiedad Positioned permite posicionar el contenedor con la información del pastel en la parte inferior de la pantalla.
         * 
         * La propiedad decoration permite darle un color de fondo al contenedor con la información del pastel.
         * 
         * En conclusión, el Stack permite apilar widgets uno encima de otro y son muy utiles para crear diseños complejos.
         *
         * 
         */
        children: [
          Image.network(
            'https://cdn.pixabay.com/photo/2014/10/13/16/11/cake-486874_1280.jpg',
            fit: BoxFit.cover,
            height: 300,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Pastel de chocolate',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    '\$25.99',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Descripción del pastel de chocolate',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  // Boton de agregar al carrito
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Agregar al carrito'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
