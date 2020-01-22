import 'package:flutter/material.dart';
import 'package:test_project/home_page.dart';
import 'package:test_project/models/estates.dart';
import 'package:test_project/widgets/appDrawer.dart';
import 'package:test_project/widgets/estate_details.dart';

class EstatePage extends StatelessWidget {

  Widget _buildEstateList(){
    return ListView.builder(
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
          child: Card(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                  // height: MediaQuery.of(context).size.width/2,
                  // width: MediaQuery.of(context).size.height,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(30.0),
                  // ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.width/2,
                        width: MediaQuery.of(context).size.height,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            image: AssetImage(estate.image[0]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20.0,
                        right: 20.0,
                        child: Icon(
                          Icons.favorite_border,
                          size: 30.0,
                          color: Theme.of(context).accentColor,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Text(estate.name,
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Text(estate.location,
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         centerTitle: true,
        title: Text('Estates'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(
                context: context,
                delegate: DataSearch()
              );
            },
          )
        ],
      ),
      drawer: AppDrawer(),
      body: _buildEstateList(),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home
      //       )
      //     )
      //   ],
      // ),
    );

  }
}

class DataSearch extends SearchDelegate<String> {
  final cities = [
    "Lagos",
    "Ikeja",
    "Ikoyi",
    "Ikorodu",
    "Ikotun",
    "Ibadan",
    "Japan",
    "Iran",
    "Canada"
  ];

  final recentCities = [
    'Texas',
    "London"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for app bar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon 
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // show result
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // buildSuggestions
    // final suggestionList = query.isEmpty ? recentCities : cities;

    final suggestionList = query.isEmpty ? recentCities 
    : cities.where((p) => p.startsWith(query)).toList();
    
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (BuildContext context, int index){
        return Text(suggestionList[index]);
      },
    );

    // return ListView.builder(
    //   itemCount: suggestionList.length,
    //   itemBuilder: (BuildContext context, int index){
    //     return ListTile(
    //       leading: Icon(Icons.location_city),
    //       // title: Text(suggestionList[index]),
    //       title: RichText(text: TextSpan(
    //         text: suggestionList[index].substring(0, query.length),
    //         style: TextStyle(
    //           color: Colors.black,
    //           fontWeight: FontWeight.bold
    //         ),
    //         children: [
    //           TextSpan(
    //             text: suggestionList[index].substring(query.length),
    //             style: TextStyle(color: Colors.grey)
    //           )
    //         ]
    //       ),),
    //     );
    //   },
    // );
  }
  
}