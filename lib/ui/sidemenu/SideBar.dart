import 'package:flutter/material.dart';
import '../../static_variable.dart';
import 'animale_drop_down.dart';
import 'categories_drop_down.dart';
import 'details_drop_down.dart';

enum ApplicationDetails { store, animale }
class SideBar extends StatefulWidget{
  const SideBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SideBarState();
  }
  
}
class SideBarState extends State<SideBar>{
  ApplicationDetails? _details =  ApplicationDetails.animale;
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Drawer(

      child: Column(children: [
        topSide(),
        containerSide(),
      ],),
    );
  }

  Widget topSide() =>Container(
    height: 200,
    width: StaticVariable.mainWidth,
    color: Colors.amberAccent,

    child: DecoratedBox(
      decoration: const BoxDecoration(
          color: Colors.amberAccent,
          image: DecorationImage(

              image: AssetImage('assets/images/animale-skin-black.jpg'),
              fit: BoxFit.cover, opacity: 12)),
      child: Center(
        child: SizedBox(
          height: 250,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(),
              const Text(
                'Store name', style: TextStyle(fontFamily: 'ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white
              ),),

              SizedBox(
                width: 200,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const<Widget>[
                    CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                            'assets/images/2.jpeg')),
                    Text('Natalia cornisova',
                      style: TextStyle(fontFamily: 'ubuntu',
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.white
                      ),),
                  ],),
              )
            ],),
        ),
      ),
    ),
  );
  Widget containerSide() => SizedBox(
    height: StaticVariable.mainHeight - 300,
    width: StaticVariable.mainWidth,
    child: Column(

      children: [
        const SizedBox(height: 20,),
        SizedBox(
            width: 300,
            child: Column(children: [
              inputFilter(),
            ],)
        ),

      ],
    ),
  );
  Widget inputFilter() => Column(children: [
    SizedBox(width: StaticVariable.mainWidth,
      height: StaticVariable.checkStore? 290:250,
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          elevation: 12,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              searchField(),
              comboBox(),
              radioButton(),
              buttonSearch(),
            ],)
      ),

    )


  ],);
  Widget searchField() => Container(
    width: 250,
    height: 40,
    decoration: BoxDecoration(
        color: Colors.amberAccent, borderRadius: BorderRadius.circular(5)),
    child: Center(
      child: TextField(
        controller: StaticVariable.fieldText,
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search,color: Colors.white),

            suffixIcon: IconButton(
              icon: const Icon(Icons.clear,color: Colors.white),
              onPressed: () {
                StaticVariable.fieldText.clear();
              },
            ),
            hintText: 'Search...',

            border: InputBorder.none),
      ),
    ),
  );
  Widget comboBox() => Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            AnimaleDropDownMenu(),
            CategoriesDropDown()

          ],),
        const SizedBox(height: 10,),
        StaticVariable.checkStore ? const DetailDropDown(): const SizedBox()

      ]
  );
  Widget radioButton() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Row(
          children:[
            Radio<ApplicationDetails>(
              value: ApplicationDetails.animale,
              groupValue: _details,
              onChanged: (ApplicationDetails? value) {
                setState(() {
                  _details = value;
                  StaticVariable.checkStore = false;
                });
              },),
            const Text('Animaux',style:
            TextStyle(fontFamily: 'ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),),
            const SizedBox(width: 5),
            const Icon(Icons.whatshot,size: 14,color: Colors.deepOrangeAccent,),



          ]


      ),
      Row(
          children:[
            Radio<ApplicationDetails>(

              value: ApplicationDetails.store,
              groupValue: _details,
              onChanged: (ApplicationDetails? value) {
                setState(() {
                  _details = value;
                  StaticVariable.checkStore = true;
                });
              },
            ),
            const  Text('Boutique',style:
            TextStyle(fontFamily: 'ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 12,

            ),),
            const SizedBox(width: 5),
            const Icon(Icons.store,size: 14,color: Colors.deepOrangeAccent,),

          ]


      ),
    ],);
  Widget buttonSearch() =>    SizedBox(
    width: 250,
    height: 40,
    child: TextButton.icon(


      icon: const Icon(Icons.search,color: Colors.black,),
      label:const  Text('Search',style: TextStyle(fontFamily: 'ubuntu',
          fontWeight: FontWeight.normal,fontSize: 16,color: Colors.black),),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
        elevation: MaterialStateProperty.all(8),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
        backgroundColor: MaterialStateProperty.all(Colors.amberAccent),
        shadowColor: MaterialStateProperty.all(
            Theme.of(context).colorScheme.onSurface),
      ),
      onPressed: (){},
    ),
  );


}

