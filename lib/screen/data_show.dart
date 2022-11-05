import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/model/product_model.dart';
import 'package:provider_state_management/provider/product_provider.dart';
import 'package:provider_state_management/screen/data_overview.dart';
import 'package:provider_state_management/service/product_api.dart';

class DataShows extends StatelessWidget {
  const DataShows({super.key});

  @override
  Widget build(BuildContext context) {
    final datas = Provider.of<NewsProvider>(context);
    return Scaffold(
        appBar: AppBar(title: Text('appbar')),
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              child: FutureBuilder<List<ProductModel>>(
                  future: datas.getNewsData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Center(
                        child: Text('Error'),
                      );
                    }
                    return ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data!.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 1,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              color: Colors.white24,
                              child: Text(
                                '${snapshot.data![index].title}',
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                          );
                        });
                  })),
        ));
  }
}
