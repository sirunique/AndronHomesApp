import 'package:flutter/material.dart';
import 'package:test_project/models/homes.dart';
import 'package:test_project/widgets/appDrawer.dart';
import 'package:test_project/widgets/home_details.dart';

class HomesPage extends StatelessWidget {

  Widget _buildHomesList(){
    return ListView.builder(
      itemCount: homes.length,
      itemBuilder: (BuildContext context, int index){
        Home home = homes[index];
        return GestureDetector(
          onTap: (){
            Navigator.push(context, 
              MaterialPageRoute(
                builder: (_) => HomeDetails(
                  home: home,
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
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            image: AssetImage(home.image[0]),
                            fit: BoxFit.contain,
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
                        child: Text(home.name,
                          style: TextStyle(
                            fontSize: 20.0
                          ),
                        ),
                      ),
                      Text(home.location,
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Homes'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          )
        ],
      ),
      drawer: AppDrawer(),
      body: _buildHomesList(),
    );
  }
}