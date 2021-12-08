import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ProfileDetails(title: 'Flutter Demo Home Page'),
    );
  }
}

class ProfileDetails extends StatefulWidget {
  ProfileDetails({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  int _counter = 0;

  List interests = [
    "traveling",
    "bookings",
    "music",
    "music",
    "Singing",
    "music",
    "music",
  ];


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  List selectedInterestsIds = [];

  bool isSelected(int id) {
    for (int i = 0; i < selectedInterestsIds.length; i++) {
      if (selectedInterestsIds[i] == id) {
        return true;
      }
    }
    return false;
  }

  toggleSelection(int id) {
    for (int i = 0; i < selectedInterestsIds.length; i++) {
      if (selectedInterestsIds[i] == id) {
        print(selectedInterestsIds);
        print(id);
        selectedInterestsIds.removeAt(i);
      }
    }
  setState(() {
    selectedInterestsIds.add(id);
  });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: Container(),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // elevation: 0,
            // bottom: PreferredSize(
            //   child: Container(),
            //   preferredSize: Size(0, 0),
            // ),
            pinned: false,
            snap: true,
            floating: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.4,
            flexibleSpace: Stack(
              children: [
                //Images
                Positioned(
                    child: ImageLoader(
                      imageUrl: "https://i.pinimg.com/736x/0d/74/08/0d7408886db088edf667f52c7a06caca.jpg",
                      fit: BoxFit.cover,
                    ),
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0),
                Positioned(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      //color: Colors.lightBlue[100],
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                  ),
                  bottom: 0,
                  left: 0,
                  right: 0,
                ),
                Positioned(
                  bottom: 5,
                  left: 0,
                  right: 0,
                  child: Row(
                  children: [
                    Container(
                      width: 65.0,
                      height: 65.0,
                      child: new RawMaterialButton(
                        fillColor: Colors.white,
                        shape: new CircleBorder(),
                        elevation: 10.0,
                        child: Icon(
                          Icons.close,
                          color: Colors.orange,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 80.0,
                      height: 80.0,
                      child: new RawMaterialButton(
                        fillColor: Colors.red,
                        shape: new CircleBorder(),
                        elevation: 10.0,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 45,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 65.0,
                      height: 65.0,
                      child: new RawMaterialButton(
                        fillColor: Colors.white,
                        shape: new CircleBorder(),
                        elevation: 10.0,
                        child: Icon(
                          Icons.star,
                          color: Colors.purple,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),),
                Positioned(
                  top: 20,
                  left: 20,
                  child: InkWell(
                    onTap: (){
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: .5),
                        color: Colors.white.withOpacity(.08),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 18,),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
         SliverFillRemaining(
           child: Container(
             decoration: BoxDecoration(color: Colors.white
             ),
             child: Container(
               //color: Colors.red,
               child: Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Column(
                   //crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Jassica parker, 23", style: TextStyle(
                                 fontWeight: FontWeight.w600
                             )),
                             Text("professinal model"),
                           ],
                         ),
                         InkWell(
                           onTap: (){
                           },
                             child: Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 border: Border.all(color: Colors.grey.withOpacity(1), width: .5)
                               ),
                                 padding: EdgeInsets.all(10),
                                 child: Icon(Icons.send,color: Colors.red,))),
                       ],
                     ),
                     SizedBox(height: 20,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Location parker, 23", style: TextStyle(
                                 fontWeight: FontWeight.w600
                             )),
                             Text("Chicago"),
                           ],
                         ),
                         Container(
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: Colors.red.withOpacity(.2)
                             ),
                             padding: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Icon(Icons.location_on, size: 16,),
                                 Text("1 Km"),
                               ],
                             )),
                       ],
                     ),
                     SizedBox(height: 20,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("About", style: TextStyle(
                                 fontWeight: FontWeight.w600
                             )),
                             Text("asdjnkjasfnlkjsnfkjsnfjnjkn\nasdhakjhdkahdkajh"),
                           ],
                         ),
                       ],
                     ),
                     SizedBox(height: 20,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Interests",style: TextStyle(
                             fontWeight: FontWeight.w600
                         )),
                         SizedBox(height: 5,),
                         Container(),
                         Wrap(
                           crossAxisAlignment: WrapCrossAlignment.start,
                           spacing: 20,
                           runSpacing: 10,
                           children: List.generate(interests.length, (index) {
                             return InkWell(
                               onTap: (){
                                  toggleSelection(index);
                               },
                               child: Container(
                                 decoration: BoxDecoration(
                                     border: Border.all(
                                         color: isSelected(index) ? Colors.red : Colors.grey.withOpacity(.5)
                                     ),
                                     borderRadius: BorderRadius.circular(8)
                                 ),
                                 child: Padding(
                                   padding: const EdgeInsets.fromLTRB(10,5,10,5),
                                   child: Text(interests[index].toString(),
                                     style: TextStyle(
                                         fontWeight: FontWeight.w600,
                                       color: isSelected(index) ? Colors.red : Colors.black87
                                     ),),
                                 ),
                               ),
                             );
                           }),
                         )
                       ],
                     )
                   ],
                 ),
               ),
             ),),
         )
        ],
      ),
    );
  }
}



//Todo: please seperate this widget


class ImageLoader extends StatelessWidget {
  final double height;
  final double width;
  final ImageShape imageShape;
  final String imageUrl;
  final double radius;
  final BoxFit fit;
  final showShimmerOnLoading;
  final Widget errorWidget;

  ImageLoader({
    this.height = 100,
    this.width = 100,
    this.imageShape = ImageShape.RECTANGLE,
    @required this.imageUrl,
    this.radius = 0,
    this.fit,
    this.showShimmerOnLoading = true,
    this.errorWidget
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: CachedNetworkImage(
          imageUrl: imageUrl,
          imageBuilder: (context, imageProvider) => Container(
            decoration: imageShape == ImageShape.RECTANGLE
                ? BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(radius),
              image: DecorationImage(
                image: imageProvider,
                fit: fit,
              ),
            )
                : BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imageProvider,
                fit: fit,
              ),
            ),
          ),
          placeholder: (context, url) => showShimmerOnLoading
              ? MyShimmer(
            child: Container(
              decoration: imageShape == ImageShape.RECTANGLE
                  ? BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(radius),
              )
                  : BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
          )
              : Container(
            height: height,
            width: width,
            child: Center(
              child: Container(
                height: 24,
                width: 24,
                child: CupertinoActivityIndicator(),
              ),
            ),
          ),
          errorWidget: (context, url, error) {
            return errorWidget ??
                Icon(
                  Icons.error,
                  size: height / 2,
                  color: Colors.grey[400],
                );
          }),
    );
  }



}

enum ImageShape {
  RECTANGLE,
  CIRCLE
}

class MyShimmer extends StatelessWidget {

  final Widget child;
  final Color baseColor;
  final Color highlightColor;
  final Duration duration;

  MyShimmer({@required this.child, this.baseColor = const Color(0xFFEAEAEA), this.highlightColor = const Color(0xFFFFFFFF),
    this.duration = const Duration(milliseconds: 700)});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: duration,
      child: child,
      baseColor: baseColor,
      highlightColor: highlightColor,
    );
  }
}

