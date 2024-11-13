import 'package:flutter/material.dart';
import 'package:flutter_application_8/proffessor.dart';

class profcardwidget extends StatelessWidget {
  final Proffessor prof; 
  final fun;
  const profcardwidget(this.prof, this.fun, {super.key});
  @overridem
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: fun,
        ),
        title: Text(prof.name),
        subtitle: Text(prof.field + " " + prof.entYear.toString()),
      ),
    );
  }
}
