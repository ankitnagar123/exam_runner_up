import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class Results_Career extends StatefulWidget {
  const Results_Career({Key? key}) : super(key: key);

  @override
  State<Results_Career> createState() => _Results_CareerState();
}

class _Results_CareerState extends State<Results_Career> {
  String? yesno;

  Widget dropdwonbutton({
    required IconData icon,
    required String text,
    required List<String> itemData,
  }) {
    return DropdownButtonHideUnderline(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: [
              Icon(
                icon,
                size: 22,
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
                    color: Colors.black,
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
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
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
              color: Color(0xff202020),
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
          Text(
            'Results/Career',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          dropdwonbutton(icon: Icons.school, text: 'Semester', itemData: items),
          SizedBox(
            height: 10,
          ),
          dropdwonbutton(
              icon: Icons.cabin_rounded,
              text: 'Result (Subject wise)',
              itemData: departmentList),
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
                    'Attach Marksheet',
                    style: TextStyle(color: Color(0xff1559B3), fontSize: 10),
                  )
                ],
              ),
              height: 55,
              width: 250,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff202020),
                  ),
                  color: Color(0xffF9D3B9),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, top: 5),
            child: Row(
              children: [
                Text(
                  '2 nd Sem Marksheet.jpg',
                  style: TextStyle(fontSize: 8),
                ),
                Icon(
                  Icons.highlight_remove,
                  color: Color(0xff1559B3),
                  size: 14,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(

                  'Are You want to Apply For job\n Through Exam Runner up',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Expanded(
                    // flex: 1,
                    child: ListTile(
                      title: Text("Yes"),
                      leading: Radio(
                          value: "Yes",
                          groupValue: yesno,
                          onChanged: (value) {
                            setState(() {
                              yesno = value.toString();
                            });
                          }),
                    ),
                  ),
                  Expanded(
                    // flex: 1,
                    child: ListTile(
                      title: Text("No"),
                      leading: Radio(
                          value: "No",
                          groupValue: yesno,
                          onChanged: (value) {
                            setState(() {
                              yesno = value.toString();
                            });
                          }),
                    ),
                  )
                ])
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.location_on,
                      color: Color(0xff3B76BC),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Preferred Location',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              height: 55,
              width: 250,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff202020),
                  ),
                  color: Color(0xffF9D3B9),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.settings_outlined,
                      color: Color(0xff3B76BC),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Preferred Field',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              height: 55,
              width: 250,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff202020),
                  ),
                  color: Color(0xffF9D3B9),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Container(
              child: Center(
                child: Text(
                  'Skip For Future',
                  style: TextStyle(color: Color(0xffA71D1E), fontSize: 18),
                ),
              ),
              height: 50,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffA71D1E),
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
                  "Submit",
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Results_Career()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
