import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:exam_runner_up/Results_Career.dart';
import 'package:flutter/material.dart';

class QualificationDetails extends StatefulWidget {
  const QualificationDetails({Key? key}) : super(key: key);

  @override
  State<QualificationDetails> createState() => _QualificationDetailsState();
}

class _QualificationDetailsState extends State<QualificationDetails> {
  TextEditingController rollnoController = TextEditingController();
  Widget dropdwonbutton({
    required IconData icon,
    required String text,
    required List<String> itemData,
  }) {
    return DropdownButtonHideUnderline(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 13),
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: [
              Icon(
                icon,
                size: 20,
                color: Color(0xff3B76BC),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: itemData
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,

                        color: Colors.black87,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Color(0xff3B76BC),
            size: 35,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.yellow,
          iconDisabledColor: Colors.grey,
          buttonHeight: 50,
          buttonWidth: 160,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color:  Color(0xff202020),
            ),
            color: Color(0xffF9D3B9),
          ),
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 200,
          dropdownWidth: MediaQuery.of(context).size.width,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(14),
            color: Color(0xffF9D3B9),
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(-20, 0),
        ),
      ),
    );
  }

  final List<String> items = [
    'Diploma',
    'Bachelor (BE)',
    'Bachelor (B.Tech)',
    'Master (ME)',
    'Master (M.Tech)',
  ];
  final List<String> departmentList = [
    'Civil',
    'Mechanical',
    'Electrical',
  ];
  final List<String> collegeList = [
    'IIT',
    'MIT',
    'JNU',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9D3B9),
      appBar: AppBar(
        title: Text('Create Account'),
        backgroundColor: Color(0xff3B76BC),
        centerTitle: true,
        leading: Container(
          height: 35,
          width: 35,
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),

      body: ListView(
        padding: EdgeInsets.all(13),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 5),
            child: Text(
              'Qualification Details',
              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          dropdwonbutton(icon: Icons.school, text: 'Course', itemData: items),
          SizedBox(
            height: 10,
          ),
          dropdwonbutton(
              icon: Icons.cabin_rounded,
              text: 'Department',
              itemData: departmentList),
          SizedBox(
            height: 10,
          ),
          dropdwonbutton(
              icon: Icons.scoreboard_rounded,
              text: 'Institute College',
              itemData: collegeList),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 60,
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: TextField(
              controller: rollnoController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black38,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: 'Roll No.',
                hintStyle: TextStyle(height: 0.88, color: Colors.black54),
                prefixIcon: Icon(
                  Icons.library_books_outlined,
                  color: Color(0xff3B76BC),
                  size: 20,
                ),
                prefixText: ' ',
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.attach_file_outlined,
                    color: Color(0xff1559B3),
                  ),
                  Text(
                    'Attach Fee Receipt',
                    style: TextStyle(color: Color(0xff1559B3), fontSize: 10),
                  )
                ],
              ),
              height: 55,
              width: 250,
              decoration: BoxDecoration(

                  border: Border.all(
                    color:  Color(0xff202020),
                  ),
                  color: Color(0xffF9D3B9),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13,top: 5),
            child: Row(

              children: [
                Text('Fee Receipt.jpg',style: TextStyle(
                  fontSize: 11
                ),),
                Icon(Icons.highlight_remove,color: Color(0xff1559B3),size: 16,)
              ],

            ),
          ),
          SizedBox(
            height: 40,
          ),

          Padding(
            padding:  const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Container(

             child: Center(
               child: Text(
                 'Skip For Future',
                 style: TextStyle(color: Color(0xffA71D1E), fontSize: 18),
               ),
             ),
              height: 50,
              width: 250,
              decoration: BoxDecoration(

                  border: Border.all(
                    color:  Color(0xffA71D1E),
                  ),
                  color: Color(0xffF9D3B9),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 65,
              child: ElevatedButton(

                child: Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(

                    onPrimary: Colors.white,
                    primary: Color(0xff0BA84A),
                  //  fixedSize: Size(250, 45)
                  ),
                onPressed: () {
                  print('Roll no...${rollnoController.text}');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Results_Career()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
