import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import './src/app_module.dart';
import './src/app_widget.dart';
import 'src/core/env/env.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Env.instance.load();
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}


//aula 1 - https://www.youtube.com/watch?v=pVgYy1zRfVc&t=63s

//aula 2 -https://www.youtube.com/watch?v=S-8Tm3xeuok