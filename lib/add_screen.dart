import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DonarAddScreen extends StatefulWidget {
  const DonarAddScreen({super.key});

  @override
  State<DonarAddScreen> createState() => _DonarAddScreenState();
}
final CollectionReference donar = FirebaseFirestore.instance.collection('donor');
List<String> bloodGroupList = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'Others'];

var choosedBloodGroup ;
final bloodGroupController=TextEditingController();
final nameController = TextEditingController();
final ageController =TextEditingController();

class _DonarAddScreenState extends State<DonarAddScreen> {
  List<DropdownMenuItem<Object>> genderListObject = bloodGroupList
      .map((valueItem) =>
          DropdownMenuItem(value: valueItem, child: Text(valueItem)))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Your Details'),
        centerTitle: true,
      ),
      body: Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'Enter Name'),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: ageController,

              decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'Enter Age'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              underline: const SizedBox(),
              isExpanded: true,
              disabledHint:  TextField(
                controller: bloodGroupController,
               
              ),
              hint: const Text('Select Blood Group'),
              items: genderListObject,
              value: choosedBloodGroup,
              onChanged: (newValue) {
                setState(() {
                  choosedBloodGroup = newValue;
                   bloodGroupController.text = newValue.toString();
                });          
                
              },

            ),
          ),
          ElevatedButton(onPressed: (){
            addDonarClicked();

          },
          style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(right: 100,left: 100,top: 15,bottom: 15)), child:  const Text('Add Donar',style:TextStyle(fontSize: 20),),)
        ],
      ),
    );
  }
  
  void addDonarClicked() {
    final name = nameController.text.trim();
    final age = ageController.text.trim();
    final group = bloodGroupController.text;

    final data = {'name':name,'age':age,'group':group};
    donar.add(data);
    Navigator.pop(context);
  }
}
