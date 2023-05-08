import 'package:flutter/material.dart';

import '../../core/ui/helpers/loader.dart';
import '../../core/ui/helpers/messages.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showLoader();
          await Future.delayed(const Duration(seconds: 5));
          hideLoader();

          showError('Errou alguma coisa');
        },
      ),
      body: Container(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        label: (Text('Login')),
                      ),
                      validator: (String) => 'Campo obrigatório',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 200,
                height: 100,
                child: Center(
                  child: ElevatedButton(
                    child: const Text('dsdsdsd'),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
