import 'package:first_flutter_app/models/city_model.dart';
import 'package:first_flutter_app/screens/cities_detail.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class KurdistanCitiesScreen extends StatelessWidget {
  KurdistanCitiesScreen({Key? key}) : super(key: key);
  List<CityModel> city = [
    CityModel(
        cityName: "Sulaymaniyah",
        cityImage:
            "https://cdnp.flypgs.com/files/Sehirler-long-tail/Suleymaniye/suleymaniye-sehir.jpg"),
    CityModel(
        cityName: "Erbil",
        cityImage:
            "https://thumbs.dreamstime.com/b/erbil-citadel-people-enjoying-sunny-day-near-north-iraq-96337046.jpg"),
    CityModel(
        cityName: "Dohuk",
        cityImage:
            "https://images.unsplash.com/photo-1639551937445-56c1fe6c4cef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1746&q=80"),
    CityModel(
        cityName: "Halabja",
        cityImage:
            "https://www.rudaw.net/ContentFilesArchive/311855Image1.jpg?mode=crop&quality=70&rand=1&scale=both&w=752&h=472&version=2236208")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(
          'Kurdistan cities',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: city.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(10.0),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            padding: EdgeInsets.all(0.0),
                            height: 200.0,
                            width: 400.0,
                            child: Image.network(
                              city[index].cityImage.toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return CityDetail(imageUrl: city[index].cityImage.toString(),cityName: city[index].cityName.toString(),);
                                  },
                                ),
                              );
                            },
                            child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                height: 50.0,
                                width: 125.0,
                                child: Text(city[index].cityName.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ],
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
