import 'package:flutter/material.dart';

import '../../core/env/ui/helpers/loader.dart';
import '../../core/env/ui/helpers/messages.dart';
import '../../core/env/ui/helpers/size_extensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        showLoader();
        await Future.delayed(const Duration(seconds: 5));
        hideLoader();

        showError('Errou alguma coisa');
      }),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            // height: context.percentHeight(.5),
          ),
          Container(
            color: Colors.green,
            height: context.percentHeight(.2),
          ),
          Container(
            color: Colors.blue,
            height: context.percentHeight(.2),
          ),
        ],
      ),
      Row(
        children: [Text('dsdsdsd')],
      ),
    );
  }
}
//1.23