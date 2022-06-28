import 'package:first_flutter_app/models/country_model.dart';
import 'package:flutter/material.dart';

class CountryDetailScreen extends StatelessWidget {
  const CountryDetailScreen(
      {Key? key,
      required this.country})
      : super(key: key);

  final CountryModel country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        centerTitle: true,
        title: Text(
          'Country Detail',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            width: 200,
            child: Image.network(
              fit: BoxFit.contain,
              country.countryFlag,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
             country.countryName,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                country.countryDetail,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
