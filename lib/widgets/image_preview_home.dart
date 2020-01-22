import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:test_project/models/homes.dart';

class ImagePreviewHome extends StatelessWidget {
  final Home home;
  ImagePreviewHome({this.home});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(home.name),
      ),
      body: ListView.builder(
        itemCount: home.image.length,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: (){
              open(context, index, home);
            },
            child: Card(
              margin: EdgeInsets.all(10.0),
              child: Image.asset(home.image[index]),
            ),
          );
        },
      ),
    );
  }

  void open(BuildContext context, final int index, final Home home){
    Navigator.push(context, 
      MaterialPageRoute(
        builder: (context) => HomePhotoViewWrapper(
          galleryItems: home,
          backgroundDecoration: BoxDecoration(color: Colors.black),
          initialIndex: index,
          scrollDirection: Axis.horizontal,
        )
      )
    );
  }
}

class HomePhotoViewWrapper extends StatefulWidget{
  final Widget loadingChild;
  final Decoration backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final int initialIndex;
  final PageController pageController;
  final Home galleryItems;
  final Axis scrollDirection;

  HomePhotoViewWrapper({
    this.loadingChild, this.backgroundDecoration,
    this.minScale, this.maxScale,
    this.initialIndex, 
    @required this.galleryItems, this.scrollDirection,
  })
    : pageController = PageController(initialPage: initialIndex);

  @override
  _HomePhotoViewWrapperState createState() => _HomePhotoViewWrapperState();
}

class _HomePhotoViewWrapperState extends State<HomePhotoViewWrapper>{
  int currentIndex;
  @override
  void initState() {
    currentIndex = widget.initialIndex;
    super.initState();
  }

  void onPageChange(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: widget.backgroundDecoration,
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            PhotoViewGallery.builder(
              scrollPhysics: BouncingScrollPhysics(),
              builder: _buildItem,
              itemCount: widget.galleryItems.image.length,
              loadingChild: widget.loadingChild,
              backgroundDecoration: widget.backgroundDecoration,
              pageController: widget.pageController,
              onPageChanged: onPageChange,
              scrollDirection: widget.scrollDirection,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Image ${currentIndex + 1}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  decoration: null,
                ),
              ),
            ),
            Positioned(
              top: 40.0,
              left: 20.0,
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.cancel,
                  size: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              )
            ),
          ],
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index){
    return PhotoViewGalleryPageOptions(
      imageProvider: AssetImage(widget.galleryItems.image[index]),
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained * (0.5 + index / 10),
      maxScale: PhotoViewComputedScale.covered * 1.1,
      heroAttributes: PhotoViewHeroAttributes(tag: widget.galleryItems.image[index])
    );
  }


} 