import 'package:api_inti/apimanager.dart';
import 'package:api_inti/person.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final manager = ApiManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Person>>(
        future: manager.getUser(),
        builder: (context , AsyncSnapshot<List<Person>> snapshot){
          if(snapshot.hasData) {
            List<Person> data = snapshot.data!;
            return Center(child: ListView.builder(itemBuilder: (context, index)
            {
              return ListTile(
                title: Text(data[index].name),
                subtitle: Text(data[index].email),
                trailing: Text(data[index].username),
                leading: Text(data[index].id.toStringAsFixed(1)),
              );
            },
              itemCount: data.length,
            ));
          }else
            return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
