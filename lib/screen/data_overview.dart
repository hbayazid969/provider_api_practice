import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/context/buildcontext_extension.dart';
import 'package:provider_state_management/screen/data_show.dart';

class DataOverview extends StatelessWidget {
  const DataOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<DataShow>(context);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: Text('Data Overview')),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: GestureDetector(
                onTap: () {
                  context.push(DataShows());
                },
                child: Container(
                  color: Colors.red,
                  height: context.h * .05,
                  child: Center(
                      child: Text(
                    data.item[index].toString(),
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
              ),
            );
          }),
    );
  }
}

class DataShow with ChangeNotifier {
  var item = ['apple', 'banana', 'mango', 'lemon', 'orange'];
}
