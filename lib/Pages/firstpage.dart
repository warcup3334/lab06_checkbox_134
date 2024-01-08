import "package:flutter/material.dart";

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});


class _FirstPageState extends State<FirstPage> 
 List<Hobby>  hobbies = [];

List<Widget> createHobbyCheckbox(){
  List<Widget> mywidgets = [];
  
  for (var hb in hobbies) {
    mywidgets.add(

      CheckboxListTile(
        title: Text(hb.name),
        value: value, 
        onChanged: (value) {
          setstate((){
            hb.checked = value!;
          }
          );
        }
        )
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text("Lab06 CheckBoxListTile"),
     ),
     body: const Column(
      children: [
        Text("งานอดิเรก"),
        Column(
          children: createHobbyCheckbox,
        )
      
      ],
     ),
    );
  }
  
} 