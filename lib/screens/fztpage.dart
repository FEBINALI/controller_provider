import 'package:flutter/material.dart';
import 'package:provideapp/controller/datacontroller.dart';
import 'package:provider/provider.dart';

class exchange extends StatefulWidget {
  const exchange({Key? key}) : super(key: key);

  @override
  _exchangeState createState() => _exchangeState();
}

class _exchangeState extends State<exchange> {
  TextEditingController febicontroller =  TextEditingController();
 // late String args;
  // final cart = CartModel();
   late CartModel cart;
  @override
  Widget build(BuildContext context) {
  //  args = ModalRoute.of(context)!.settings.arguments.toString();
   // febicontroller.text = args;

       cart = Provider.of<CartModel>(context);
      febicontroller.text = cart.user!;
    return Scaffold(
      appBar: AppBar(
        title: Text('page 1'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a num',
                ),
                controller: febicontroller,
              ),

              Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                // Within the `FirstScreen` widget
                onPressed: () {
                cart.user =febicontroller.text;
                 // cart.add(febicontroller.text);

                  // cart.value = "febicontroller.text";
                  // Navigate to the second screen using a named route.
                  Navigator.pushReplacementNamed(
                    context, '/secnd',
                    
                    //arguments: febicontroller.text
                  );
                },
                child: const Text('ok'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
