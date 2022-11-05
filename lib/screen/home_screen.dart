import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider_state_management/screen/data_overview.dart';
import 'package:provider_state_management/screen/increment_screen.dart';
import 'package:provider_state_management/context/buildcontext_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Provider Practice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              height: context.h * 0.30,
              child: ListView.builder(
                  itemCount: item.length,
                  itemBuilder: (context, index) {
                    return MaterialButton(
                        color: Colors.red,
                        onPressed: () {
                          if (index == 0) {
                            context.push(IncrementScren());
                          }
                          if (index == 1) {
                            context.push(DataOverview());
                          }
                        },
                        child: Text(
                          item[index],
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

var item = ['Increment with provider', 'Provider Data'];
