import 'package:flutter/material.dart';
import 'package:souq_animale/static_variable.dart';
import '../../backup/json/animale_json.dart';


class AnimaleData extends StatefulWidget {
  const AnimaleData({Key? key}) : super(key: key);

  @override
  State<AnimaleData> createState() => _AnimaleDataState();
}

class _AnimaleDataState extends State<AnimaleData> {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container (
          color: Colors.white,
          width: StaticVariable.mainWidth,
          height: StaticVariable.mainHeight - 278,
          child: animaleList() //myListCard()

      ),
    );
  }
  //this is full application extensions
  Widget animaleList() => ListView(
      children:AnimaleJson.json.map((item) =>
          ExpansionTile(



            //image of animale in first widget
            leading: CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(item['image'])),

            //add title and date
            title:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(item['name'],style:const TextStyle(fontSize: 15,
                    fontFamily: 'ubuntu')),
                const Text('2022/05/01',style:TextStyle(fontFamily: 'ubuntu',
                    fontSize: 11,fontWeight: FontWeight.normal,color: Colors.grey

                ))
              ],),
            subtitle: Text(item['city'],style: const TextStyle(fontSize: 11
                ,fontFamily:'ubuntu' ),),


            //this region for description part
            children: <Widget>[
              ListTile(
                title:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Flexible(
                      child: Text(item['name'],style:const TextStyle(fontSize: 15,
                          fontFamily: 'ubuntu'),),
                    ),
                    imageStore(),
                  ],),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4,),
                   Flexible(child: Text("Region: " + item['city'])),
                    const SizedBox(height: 4,),
                   Flexible(child:  Text("Prix  : " + item['prix'].toString() + " Dh")),
                    const SizedBox(height: 10,),
                   Flexible(child: Text(item['description'])),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      //this region is for images
                      child: Column(children: [
                        const SizedBox(height: 10,),
                        imageAnimale()
                      ],),
                    )
                  ],),



              ),
            ],
          ),
      ).toList());



  //todo this part you need to pass guid value or id  to return images
  Widget imageAnimale() =>  Row(children: AnimaleJson.json.map((e) =>
      SizedBox(
          width: 100,
          height: 100,
          child: Card(
              elevation: 3,
              child: ClipRRect( borderRadius: BorderRadius.circular(3),
                child:Image.asset(e['image'],fit:BoxFit.cover,
                ),
              )))
  ).toList());
  Widget imageStore() => Column(children:[
    const CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage('assets/images/3.jpg')),
    SizedBox(width: 150,height: 40,child: Card(
      elevation: 4,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const<Widget> [

            Icon(Icons.call_outlined,size: 19,),
            Icon(Icons.email_outlined,size: 19,),
            Icon(Icons.favorite_border,size: 19,)

          ],),
      ),
    ),)
  ],);
}