import 'package:first_flutter_app/screens/country_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/data/data.dart';

class CountrList extends StatelessWidget {
  const CountrList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: (){
                Navigator.of(context).pushNamed('/about');
              },
              title: Text(
                'About'
              ),
            )
          ],
        )
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        centerTitle: true,
        title: Text(
          'Countries List',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: ListView.builder(
                  itemCount: countries.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(15.0),
                      child: ListTile(
                        leading:
                            Image.network(countries[index]["flag"].toString()),
                        title:
                            Text(countries[index]["country_name"].toString()),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                 return CountryDetailScreen(countryName: countries[index]["country_name"].toString(),imageUrl:countries[index]["flag"].toString(), detail: countries[index]["detail"].toString(),);
                                }),
                              );
                            },
                            icon: Icon(Icons.arrow_forward)
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
