import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:using_provider/state/app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  //Create instance of provider

  @override
  Widget build(BuildContext context) {
    //1st way:
    // AppState provider = Provider.of<AppState>(context);
    return Scaffold(
        appBar: AppBar(title: const Text("Change Notifier Provider")),
        body: Column(
          children: [
            // Text("Provider value : ${provider.temp - 10}"),

            //only consumer uses the provider if we want selectable things to be provided values
            Consumer<AppState>(builder: (context, providerValue, child) {
              return Column(
                children: [
                  Text("Provider value : ${providerValue.temp}"),
                  Text("Timer value : ${providerValue.start}"),
                  Text("Name : ${providerValue.name}"),
                  CupertinoButton(
                      child: const Text("Press Event"),
                      onPressed: () {
                        // providerValue.updateTemp(100);
                        // providerValue.getTimer();
                        providerValue.getName("Srijan  Shovit");
                      })
                ],
              );
            }),
          ],
        ));
  }
}
