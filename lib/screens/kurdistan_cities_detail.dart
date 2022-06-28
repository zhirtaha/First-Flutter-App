import 'package:flutter/material.dart';

class KurdistanCityDetail extends StatelessWidget {
  const KurdistanCityDetail({Key? key, required this.imageUrl, required this.cityName}) : super(key: key);

  final String imageUrl;
  final String cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text('City Detail'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  height: 250.0,
                  child: Image.network(imageUrl),
                ),
              ),
            ],
          ),
          SizedBox(
            height:10.0 ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
              cityName,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold
              ),
            ),
            ],
          ),
          SizedBox(
            height: 35.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('detail')
            ],
          )
        ],
      ),
    );
  }
}
