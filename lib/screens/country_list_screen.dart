import 'package:first_flutter_app/screens/country_detail_screen.dart';
import 'package:flutter/material.dart';

class StudentScreen extends StatelessWidget {
  StudentScreen({Key? key}) : super(key: key);

  final List countries = [
    {
      "country_name": "France",
      "flag": "https://img.icons8.com/color/344/france-circular.png"
    },
    {
      "country_name": "Spain",
      "flag": "https://img.icons8.com/color/2x/spain2-circular.png"
    },
    {
      "country_name": "Brazil",
      "flag": "https://img.icons8.com/color/2x/brazil-circular.png"
    },
    {
      "country_name": "United States of America",
      "flag": "https://img.icons8.com/color/344/usa-circular.png"
    },
    {
      "country_name": "Kurdistan",
      "flag": "https://img.icons8.com/color/2x/kurdistan.png"
    },
    {
      "country_name": "South Korea",
      "flag": "https://img.icons8.com/fluency/344/south-korea-circular.png"
    },
    {
      "country_name": "Sweden",
      "flag": "https://img.icons8.com/color/344/sweden-circular.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                 return DetailScreen(countryName: countries[index]["country_name"].toString(),imageUrl:countries[index]["flag"].toString() ,);
                                }),
                              );
                            },
                            icon: Icon(Icons.arrow_forward)),
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
