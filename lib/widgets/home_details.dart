import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:test_project/models/homes.dart';
import 'package:test_project/widgets/image_preview_home.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeDetails extends StatefulWidget {

  final Home home;
  HomeDetails({this.home});

  @override
  _HomeDetailsState createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {

  _launchCall() async{
    const number = 'tel:+2349016085111';
    if(await canLaunch(number)){
      await launch(number);
    }
    else{
      // throw 'Could not launch $number';
      print('Could not launch $number');
    }
  }

  void launchShare(BuildContext context, Home home){
    final RenderBox box = context.findRenderObject();
    final String text = "${home.name} - ${home.description}";

    Share.share(
      text,
      subject: "${home.image[0]} ${home.name}",
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
    );
  }

  Widget _buildTypes(types){
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < types.length; i++) {
      list.add(new Text(types[i]['title'],
       style: TextStyle(
          color: Colors.black,
          letterSpacing: 1.5
        ),
      ));
      list.add(new Text('Details',
        style: TextStyle(
          color: Colors.black,
          letterSpacing: 1.5
        ),
      ));
      var details = types[i]['details'][0];
      for (var z = 0; z < details.length; z++) {
        list.add(new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(details['description'],
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.5
              ),
            ),
            Text(details['price'],
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.5
              ),
            )
          ],
        ));
      }
      list.add(new SizedBox(height: 10.0,));
    }
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: list,
    );
  }

  Widget _buildPaymentOptions(paymentoption){
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < paymentoption.length; i++) {
      list.add(new Text(paymentoption[i],
        style: TextStyle(
          color: Colors.black,
          letterSpacing: 1.5
        ),
      ));
    }
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: list,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, 
                            MaterialPageRoute(
                              builder: (_) => ImagePreviewHome(home: widget.home,)
                            )
                          );
                        },
                        child: ClipRRect(
                          child: Image(
                            image: AssetImage(widget.home.image[0]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        // vertical: 40.0
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            iconSize: 30.0,
                            color: Colors.black,
                            onPressed: () => Navigator.pop(context),
                          ),
                          IconButton(
                            icon: Icon(Icons.share),
                            iconSize: 30.0,
                            color: Colors.black,
                            onPressed: () => launchShare(context, widget.home),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Text(widget.home.name,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite_border,
                          color: Theme.of(context).accentColor,
                        ),
                        onPressed: ()=>{},
                      )
                    ],
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Description',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text(widget.home.description,
                          style: TextStyle(
                            color: Colors.grey,
                            letterSpacing: 1.5
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Types',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _buildTypes(widget.home.types),
                        ),
                        SizedBox(height: 10.0,),
                        Text('Payment Options',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _buildPaymentOptions(widget.home.paymentOptions),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                onPressed: _launchCall,
                icon: Icon(Icons.call),
                label: Text('Call'),
                color: Theme.of(context).primaryColor,
              ),
              FlatButton.icon(
                onPressed: (){},
                icon: Icon(Icons.email),
                label: Text('Mail'),
                color: Theme.of(context).primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}