import 'package:flutter/material.dart';
import 'package:souq_animale/static_variable.dart';
import 'package:souq_animale/ui/animale/animale.dart';
import 'package:souq_animale/ui/product/product.dart';
import 'package:souq_animale/ui/sidemenu/SideBar.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    StaticVariable.mainWidth = MediaQuery.of(context).size.width;
    StaticVariable.mainHeight = MediaQuery.of(context).size.height;

    return
       DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer:const SideBar(),
          resizeToAvoidBottomInset: false,
          drawerEnableOpenDragGesture: true,
          drawerScrimColor: Colors.amberAccent,

          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.amberAccent,
            bottom:  const TabBar(
              tabs: <Widget>[
                Tab(
                  icon:Icon(Icons.whatshot),
                ),
                Tab(
                    icon: Icon(Icons.store)
                ),
                Tab(icon:Icon(Icons.favorite)
                )
              ],
            ),
            title:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(),
                Text('Animale',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:32,
                        fontFamily: "Water_Brush",
                        color: Colors.black
                    )),
                InkWell(
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 36.0,
                  ),
                ),
              ],),

          ),
          body: Container(
            width: StaticVariable.mainWidth,
            height: StaticVariable.mainHeight,
            color: Colors.amber,
            //this part is for main Widget
            child: const TabBarView(
              children: <Widget> [
                Center(
                    child:  Animale()
                ),
                Center(
                    child:  Product()
                ),
                Center(
                  child: Text('favorite tap !'),
                )

              ],
            ),
          ),
        ),
      );
      // home: const HomeScreen()

  }
}
