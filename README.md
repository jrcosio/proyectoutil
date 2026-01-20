# Proyecto Solidario Útil 🤝

[![Flutter Version](https://img.shields.io/badge/Flutter-3.10.4+-blue.svg)](https://flutter.dev/)
[![Firebase](https://img.shields.io/badge/Firebase-FFCA28?logo=firebase&logoColor=black)](https://firebase.google.com/)
[![Platform](https://img.shields.io/badge/Platform-Android%20|%20iOS%20|%20Web%20|%20Windows%20|%20macOS%20|%20Linux-lightgrey.svg)](https://flutter.dev/)

## 📋 Descripción

Proyecto Solidario Útil es una aplicación móvil que busca hacer mas facil el día a día a las personas con discapacidad cognitiva.

## ✨ Características

- 🎨 Interfaz moderna y accesible
- 📱 Soporte multiplataforma (Android, iOS)
- 🚀 Rendimiento optimizado
- 🌐 Diseño responsive

## 🛠️ Tecnologías

- **Framework:** Flutter 3.10.4+
- **Lenguaje:** Dart
- **Arquitectura:** Clean Architecture (en desarrollo)
- **UI/UX:** Material Design

### 🔥 Firebase

- **Cloud Firestore (NoSQL):** Almacenamiento de datos y sincronización en tiempo real
- **Firebase Authentication:** Registro/inicio de sesión y gestión de usuarios
- **Firebase Storage:** Almacenamiento de ficheros (Excel, imágenes, adjuntos)
- **Crashlytics:** Reporte de errores en producción
- **Google Analytics (Firebase Analytics):** Métricas de uso y eventos

## 📦 Requisitos Previos

Antes de comenzar, asegúrate de tener instalado:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (3.10.4 o superior)
- [Dart SDK](https://dart.dev/get-dart) (incluido con Flutter)
- Android Studio / Xcode (para desarrollo móvil)
- VS Code o Android Studio (recomendado)

## 🚀 Instalación

### 1. Clonar el repositorio

```bash
git clone https://github.com/tu-usuario/proyectoutil.git
cd proyectoutil
```

### 2. Instalar dependencias

```bash
flutter pub get
```

### 3. Verificar la instalación

```bash
flutter doctor
```

### 4. Ejecutar la aplicación

```bash
# En modo desarrollo
flutter run

# Para una plataforma específica
flutter run -d chrome        # Web
flutter run -d windows       # Windows
flutter run -d android       # Android
flutter run -d ios           # iOS
```

## 📱 Plataformas Soportadas

| Plataforma | Estado | Notas |
|------------|--------|-------|
| Android    | ✅ Soportado | API 21+ |
| iOS        | ✅ Soportado | iOS 12+ |
| Web        | ✅ Soportado | Navegadores modernos |
| Windows    | ✅ Soportado | Windows 10+ |
| macOS      | ✅ Soportado | macOS 10.14+ |
| Linux      | ✅ Soportado | Ubuntu 20.04+ |

## 🏗️ Estructura del Proyecto

```
proyectoutil/
├── lib/
│   ├── main.dart              # Punto de entrada de la aplicación
│   └── screen/
│       └── home/              # Pantalla principal
│           └── homescreen.dart
├── android/                   # Código específico de Android
├── ios/                       # Código específico de iOS
├── web/                       # Código específico de Web
├── windows/                   # Código específico de Windows
├── macos/                     # Código específico de macOS
├── linux/                     # Código específico de Linux
├── test/                      # Tests unitarios y de widgets
├── pubspec.yaml              # Dependencias del proyecto
└── README.md                 # Este archivo
```

## 🧪 Testing

```bash
# Ejecutar todos los tests
flutter test

# Ejecutar tests con cobertura
flutter test --coverage

# Ejecutar tests específicos
flutter test test/widget_test.dart
```

## 🔨 Compilación

### Android

```bash
flutter build apk --release           # APK
flutter build appbundle --release     # App Bundle (recomendado para Play Store)
```

### iOS

```bash
flutter build ios --release
```

### Web

```bash
flutter build web --release
```

### Windows

```bash
flutter build windows --release
```

### macOS

```bash
flutter build macos --release
```

### Linux

```bash
flutter build linux --release
```

## 📚 Documentación

Para más información sobre el desarrollo con Flutter:

- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Flutter Cookbook](https://flutter.dev/docs/cookbook)

## 🤝 Contribución

Las contribuciones son bienvenidas. Por favor:

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📝 Convenciones de Código

- Seguir las [Dart Style Guidelines](https://dart.dev/guides/language/effective-dart/style)
- Usar `flutter analyze` para verificar el código
- Mantener la cobertura de tests por encima del 80%

## 👥 Autores

- **David** - [@david](https://github.com/tu-usuario)
- **Alicia** - [@alicia](https://github.com/tu-usuario)
- **Gonzalo** - [@gonzalo](https://github.com/tu-usuario)
- **José Ramón Blanco** - [@jrcosio](https://github.com/jrcosio)

---

⭐️ Si este proyecto te resulta útil, considera darle una estrella en GitHub!
