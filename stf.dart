import 'package:flutter/material.dart';
import 'package:flutter_application_8/profcardw.dart';
import 'package:flutter_application_8/proffessor.dart';


List<Proffessor> proffs = [
  Proffessor(
    name: 'ehsan-malekian',
    field: 'computer',
    entYear: 2010
    ),
  Proffessor(
    name: 'saeed-abrishami',
    field: 'network',
    entYear: 2013,
  ),
  Proffessor(
    name: 'ghodrat-sepidnam',
    field: 'electronic',
    entYear: 1996,
  ),
  Proffessor(
    name: 'nasrolah-moein',
    field: 'music',
    entYear: 1976,
  ),
  Proffessor(
    name: 'shafiei kadkani',
    field: 'adab parsi',
    entYear: 1990,),
];

class stf extends StatefulWidget {
  @override
  State<stf> createState() => _stf();
}

class _stf extends State<stf> {
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController fieldController = TextEditingController();
    TextEditingController entYearController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Name',
                    ),
                  ),
                  TextField(
                    controller: fieldController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Field',
                    ),
                  ),
                  TextField(
                    controller: entYearController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Year',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    child: Text('Add'),
                    onTap: () {
                      setState(() {
                        proffs.add(Proffessor(
                            name: nameController.text,
                            field: fieldController.text,
                            entYear: int.parse(entYearController.text)));
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: proffs.length,
                  itemBuilder: (context, index) => Dismissible(
                    direction: DismissDirection.startToEnd,
                    background: Container(color: Colors.green),
                    key: Key(index.toString()),
                    child: profcardwidget(proffs[index], () {
                      setState(() {
                        proffs.removeAt(index);
                      });
                    }),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
