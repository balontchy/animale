import 'package:flutter/material.dart';
import 'package:souq_animale/static_variable.dart';


class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView (
          scrollDirection: Axis.horizontal,
          child:myListPerson()
      ),

    );
  }
  //return person image in store
  Widget myListPerson(){
    return  Row(children:StaticVariable.listPerson.map((item) =>
        Card(

          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          elevation: 10,
          child: SizedBox(
              width: 90,
              height: 150,
              child: Column(children: [
                Card(
                  elevation: 20,
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                      width: 90,
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // rating star
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/icons/star.png',
                                width: 10,
                                height: 10,
                              ),
                              Image.asset('assets/icons/star.png',
                                width: 10,
                                height: 10,
                              ),
                              Image.asset('assets/icons/star.png',
                                width: 10,
                                height: 10,
                              ),
                              Image.asset('assets/icons/star.png',
                                width: 10,
                                height: 10,
                              ),
                              Image.asset('assets/icons/star.png',
                                width: 10,
                                height: 10,
                              ),

                            ],),
                          const  Text('Premium Store',
                            style: TextStyle(fontFamily: 'ubuntu',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26,
                            ),),
                        ],)
                  ),
                ),
                ClipRRect(
                    borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(10)
                        ,bottomRight: Radius.circular(10)
                    ),
                    child:Image.asset(item,fit:BoxFit.cover,
                      width: 90,
                      height:84,)
                )
              ],)

          ),
        ),
    ).toList());
  }
}
