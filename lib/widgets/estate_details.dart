import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/models/estates.dart';
import 'package:test_project/widgets/image_preview.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class EstateDetails extends StatefulWidget {

  final Estate estate;
  EstateDetails({this.estate});

  @override
  _EstateDetailsState createState() => _EstateDetailsState();
}

class _EstateDetailsState extends State<EstateDetails> {

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

   void launchShare(BuildContext context, Estate estate) {
     final RenderBox box = context.findRenderObject();
     final String text = "${estate.name} - ${estate.description}";

     Share.share(
       text, 
       subject: " ${estate.image[0]} ${estate.name}",
       sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
    );
   }

    Widget _buildLegalDocument(legalDocument){
      List<Widget> list = new List<Widget>();
      for (var i = 0; i < legalDocument.length; i++) {
        list.add(new Text(legalDocument[i].name, 
          style: TextStyle(
            color: Colors.grey,
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
    Widget _buildInfrastructure(infrastructure){
      List<Widget> list = new List<Widget>();
      for (var i = 0; i < infrastructure.length; i++) {
        list.add(new Text(infrastructure[i].name, 
          style: TextStyle(
            color: Colors.grey,
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
    Widget _buildDocumentationFee(documentationfee){
      List<Widget> list = new List<Widget>();
      for (var i = 0; i < documentationfee.length; i++) {
       list.add(new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(documentationfee[i].title),
            Text(documentationfee[i].amount.toString()),
          ],
        ));
      }
      return new Column(
        children: list
      );
    }

    Widget _buildPaymentPlans(paymentplans){
      List<Widget> list = new List<Widget>();
      for (var i = 0; i < paymentplans.length; i++) {
        list.add(Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Plot Size'),
                  Text(paymentplans[i]['plotSize'])
                ],
              ),
              Text('Description'),
              Text(paymentplans[i]['description']),
              Text(paymentplans[i]['amount']),
              Text(paymentplans[i]['details']),
            ],
          ),
          
        ));
      }
      return Column(
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
                      height: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0,2.0),
                            blurRadius: 6.0
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, 
                            MaterialPageRoute(
                              builder: (_) => ImagePreview(estate: widget.estate,)
                            )
                          );
                        },
                        child: ClipRRect(
                          child: Image(
                            image: AssetImage(widget.estate.image[0]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 40.0
                      ),
                      child: Row(
                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(     
                            icon: Icon(Icons.arrow_back),
                            iconSize: 30.0,
                            color: Colors.black,
                            onPressed: ()=> Navigator.pop(context),
                          ),
                          IconButton(
                            icon: Icon(Icons.share),
                            iconSize: 30.0,
                            color: Colors.black,
                            onPressed: ()=>launchShare (context, widget.estate),
                          ),
                        ],
                      ),
                    )
                  ]
                ),
            ],
          ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Expanded(
                    child: Text(widget.estate.name, 
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
                     Text(widget.estate.description, 
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
                     Text('Legal Documents',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                     ),
                     SizedBox(height: 10.0,),
                     _buildLegalDocument(widget.estate.legalDocument),
                     SizedBox(height: 10.0,),
                     Text('Infrastructure',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                     ),
                     SizedBox(height: 10.0,),
                     _buildInfrastructure(widget.estate.infrastructure),
                     Text('Documentation Fees',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                     ),
                     SizedBox(height: 10.0,),
                     _buildDocumentationFee(widget.estate.documentationFees),
                     SizedBox(height: 10.0,),
                     Text('Payment Plans',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                     ),
                     SizedBox(height: 10.0,),
                     _buildPaymentPlans(widget.estate.paymentPlans),
                     SizedBox(height: 10.0,),
                   
                   ],
                 ),
               ),
             ],
           )
         ),
        ] 
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton.icon(
                onPressed: _launchCall,
                color: Theme.of(context).primaryColor,
                label: Text('Call'),
                icon: Icon(Icons.call),
              ),
              FlatButton.icon(
                onPressed: (){},
                color: Theme.of(context).primaryColor,
                label: Text('Email'),
                icon: Icon(Icons.email),
              )
            ],
          ),
        ),
      ),
    );
  }


}