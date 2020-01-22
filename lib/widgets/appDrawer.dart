import 'package:flutter/material.dart';
import 'package:test_project/estate_page.dart';
import 'package:test_project/home_page.dart';
import 'package:test_project/homes_page.dart';
import 'package:test_project/main.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Andron Homes'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            leading: Icon(Icons.home,
              color: Theme.of(context).accentColor,
            ),
            title: Text('HomePage'),
            onTap: (){
              Navigator.push(context, 
                MaterialPageRoute(
                  builder: (_) => 
                  MyApp()
                  // HomePage()
                )
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.home,
              color: Theme.of(context).accentColor,
            ),
            title: Text('Estates'),
            onTap: (){
              Navigator.push(context, 
                MaterialPageRoute(
                  builder: (_) => EstatePage()
                )
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.home,
              color: Theme.of(context).accentColor,
            ),
            title: Text('Homes'),
            onTap: (){
              Navigator.push(context, 
                MaterialPageRoute(
                  builder: (_) => HomesPage()
                )
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.home,
              color: Theme.of(context).accentColor,
            ),
            title: Text('Favorites'),
            onTap: (){
              Navigator.push(context, 
                MaterialPageRoute(
                 builder: (_) => 
                  MyApp()
                  // HomePage()
                )
              );
            },
          ),
        ],
      ),
    );
  }
}