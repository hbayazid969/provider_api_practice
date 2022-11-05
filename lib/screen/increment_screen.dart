import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/provider_data.dart';

class IncrementScren extends StatelessWidget {
  const IncrementScren({super.key});

  @override
  Widget build(BuildContext context) {
    final pValue = Provider.of<ProviderData>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Provider Increment value'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              pValue.value.toString(),
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 25,
            ),
            MaterialButton(
                color: Colors.red,
                height: 60,
                minWidth: 200,
                onPressed: () {
                  pValue.increment();
                },
                child: const Text(
                  'Click',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
