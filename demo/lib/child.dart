import 'package:demo/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Child extends StatefulWidget {
  const Child({super.key});

  @override
  State<Child> createState() => _ChildState();
}

class _ChildState extends State<Child> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ToggleModel>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: value.color,
              appBar: AppBar(),
              body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          final model = context.read<ToggleModel>();
                          model.toggle();
                        },
                        child: Container(
                          height: 100,
                          width: 200,
                          color: Colors.pink,
                          child: Center(child: Text("Hello from child")),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          final model = context.read<ToggleModel>();
                          model.toggle();
                        },
                        child: Container(
                          height: 100,
                          width: 200,
                          color: Colors.purple,
                          child: Center(child: Text("Hello World")),
                        ),
                      )
                    ]),
              ),
            ));
  }
}
