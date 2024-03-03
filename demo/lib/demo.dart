import 'package:demo/child.dart';
import 'package:demo/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ToggleModel>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: value.color,
              body: Center(
                child: InkWell(
                  onTap: () {
                    final model = context.read<ToggleModel>();
                    model.toggle();
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Child()));
                  },
                  child: Container(
                    height: 100,
                    width: 200,
                    color: Colors.amber,
                    child: Center(child: Text("Hello from demo")),
                  ),
                ),
              ),
            ));
  }
}
