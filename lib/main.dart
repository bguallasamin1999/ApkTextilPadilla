import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebViewScreen(),
    );
  }
}

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    // Hacer la barra de estado completamente transparente
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Color transparente
        statusBarIconBrightness: Brightness.dark, // Iconos oscuros
      ),
    );

    _controller =
        WebViewController()
          ..clearCache()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(
            Uri.parse('http://192.168.1.65/control_tp/seguridad_Login/'),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30), // Altura más estilizada
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 30, 32, 60), // Color más oscuro arriba
                Color.fromARGB(255, 39, 56, 76), // Color más claro abajo
              ],
            ),
          ),
          child: AppBar(
            backgroundColor:
                Colors.transparent, // Fondo transparente para ver el degradado
            elevation: 0,
            centerTitle: true,
            title: Container(
              child: const Text(
                'Control TP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16, // Texto un poco más grande
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),

      body: WebViewWidget(controller: _controller),
    );
  }
}
