import 'package:flutter/material.dart';
import 'package:test_project/estate_page.dart';
import 'package:test_project/models/estates.dart';
import 'package:test_project/widgets/estate_details.dart';

class EstateCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (_) => EstatePage()
                  )
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text( 'Estates',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5
                    ),
                  ),
                  Text( 'See All',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0
                    ),
                  ) 
                ],
              ),
            ),
          ),
          Container(
            // height: MediaQuery.of(context).size.height/2 - 100.0,
            height: MediaQuery.of(context).size.width - 100.0,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: estates.length,
              itemBuilder: (BuildContext context, int index){
                Estate estate = estates[index];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, 
                      MaterialPageRoute(
                        builder: (_) => EstateDetails(
                          estate: estate,
                        )
                      )
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width/2,
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            height: 180.0,
                            width: 180.0,
                            image: AssetImage(estate.image[0]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          // padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(estate.name,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(estate.location)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}