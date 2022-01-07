import 'package:flutter/material.dart';

import 'package:provideapp/controller/listcontroller.dart';
import 'package:provideapp/model/modelclass.dart';
import 'package:provider/provider.dart';

class listbulder extends StatefulWidget {
  const listbulder({Key? key}) : super(key: key);

  @override
  _listbulderState createState() => _listbulderState();
}

class _listbulderState extends State<listbulder> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController discriptioncontroller = TextEditingController();
  late listdatacontroller lists;
  @override
  Widget build(BuildContext context) {
    lists = Provider.of<listdatacontroller>(context);
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          TextField(
            controller: titlecontroller,
          ),
          TextField(
            controller: discriptioncontroller,
          ),
          ElevatedButton(
            // Within the `FirstScreen` widget
            onPressed: () {
              lists.addimglist = modelDetail(titlecontroller.text.toString(),
                  discriptioncontroller.text.toString());

              titlecontroller.text = "";
              discriptioncontroller.text = "";
            },
            child: const Text('ok'),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(
                    child: Row(
                      children: [
                        Text(lists.listsdetails.elementAt(index).title),
                        Spacer(),
                        ElevatedButton(
                            onPressed: () {
                              lists.deletinglistO = (index);
                            },
                            child: const Text('romove')),
                      ],
                    ),
                  ),
                );
              },
              itemCount: lists.listsdetails.length,
            ),
          )
        ],
      ),
    ));
  }
}
