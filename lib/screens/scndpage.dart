import 'package:flutter/material.dart';
import 'package:provideapp/controller/datacontroller.dart';
import 'package:provider/provider.dart';

class backTo extends StatefulWidget {
  const backTo({Key? key}) : super(key: key);

  @override
  _backToState createState() => _backToState();
}

class _backToState extends State<backTo> {
  TextEditingController febicontroller =  TextEditingController();
  // late String args;
  // final cart = CartModel();

  late CartModel cart;

  @override
  Widget build(BuildContext context) {
    // args = ModalRoute.of(context)!.settings.arguments.toString();
    // febicontroller.text = args;

    cart = Provider.of<CartModel>(context);
    febicontroller.text = cart.user!;

    return Scaffold(
        appBar: AppBar(
          title: Text('page 2'),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a  term',
                ),
                controller: febicontroller,
              ),
              Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                // Within the `FirstScreen` widget
                onPressed: () {
                  cart.user = febicontroller.text;
                  // Navigate to the second screen using a named route.
                  Navigator.pushReplacementNamed(context, '/third');
                },
                child: const Text('ok'),
              ),
            ]),
          ),
        ));
  }
}
