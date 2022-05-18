import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:souq_animale/static_variable.dart';


class CategoriesDropDown extends StatefulWidget {
  const CategoriesDropDown({Key? key}) : super(key: key);

  @override
  State<CategoriesDropDown> createState() => _CategoriesDropDownState();
}

class _CategoriesDropDownState extends State<CategoriesDropDown> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          style: const TextStyle(fontFamily: 'ubuntu',
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
          hint:  const Text(
            "Categories",
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'ubuntu',
              color: Colors.black,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        items: StaticVariable.categories.map<DropdownMenuItem<String>>((item) =>
              DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'ubuntu',
                      color: Colors.black
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              )).toList(),
          value: selectedValue,
          onChanged: (String? value) {
            setState(() {
              selectedValue= value ;
            });
          },

          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.yellow,
          iconDisabledColor: Colors.grey,
          buttonHeight: 50,
          buttonWidth: 140,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),

          buttonDecoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
                Radius.circular(10)
            ),
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
            ),
          ),
          buttonElevation: 3,
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 200,
          dropdownWidth: 170,
          dropdownPadding: null,
          dropdownDecoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)
            ),
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: false,
          offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}
