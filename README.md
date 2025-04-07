# apk_control_tp

Proyecto de aplicativo Movil

## Getting Started

# 📱 Aplicación Flutter con WebView

Este proyecto es una aplicación móvil desarrollada en Flutter que utiliza WebView para mostrar contenido web dentro de la aplicación.

## 🚀 Características
- Carga de contenido web dentro de la aplicación.
- Soporte para navegación en páginas web.
- Compatibilidad con Android.
- Permite la ejecución de JavaScript dentro de WebView.

## 🛠 Tecnologías utilizadas
- **Flutter**: Framework de desarrollo móvil.
- **Dart**: Lenguaje de programación para Flutter.
- **webview_flutter**: Plugin para integrar WebView en Flutter.

## 📦 Instalación
1. Clonar el repositorio:
   ```sh
   git clone https://github.com/usuario/repositorio.git
   ```
2. Navegar al directorio del proyecto:
   ```sh
   cd nombre-del-proyecto
   ```
3. Instalar las dependencias:
   ```sh
   flutter pub get
   ```
4. Ejecutar la aplicación:
   ```sh
   flutter run
   ```

## 📲 Dependencias
Asegúrate de incluir la siguiente dependencia en `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  webview_flutter: ^4.7.0
```

## 📜 Uso
Modifica el archivo `lib/main.dart` para cambiar la URL cargada en WebView:
```dart
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('WebView App')),
        body: WebView(
          initialUrl: 'https://tusitio.com',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
```

## 📝 Licencia
Este proyecto está bajo la licencia MIT. Consulta el archivo `LICENSE` para más detalles.

