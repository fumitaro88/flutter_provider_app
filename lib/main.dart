import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/mail_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider <MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
                'Providerパターン！',
            ),
          ),
          body: Consumer<MainModel>(
            builder: (context, model,child) {
              return Center(
                child: Column(
                  children: <Widget>[
                    Text(model.titleText,
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    TextButton(
                        onPressed: (){
                          model.changeText();
                        },
                        child: const Text(
                            '決定',
                        ),
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}



