import 'package:exam_runner_up/QualificationDetails.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController middlenameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController mobailnoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController aadharnoController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget categoriesTextfield({
      required IconData icon,
      required String hinttext,
      required controller,
    }) {
      return Container(
      height: 60,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 17, right: 17, top: 5, bottom: 5),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black87,
              ),

            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black87,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,

              ),
            ),
            hintText: hinttext,
            prefixIcon: Icon(
              icon,
              color: Color(0xff3B76BC),
            ),
            prefixText: ' ',
            labelStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF9D3B9),
      appBar: AppBar(
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
        title: const Text(
          "Create Account",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Personal Details',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 20,
                      color: Color(0xff9B0619), fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          categoriesTextfield(
              icon: Icons.person,
              hinttext: 'First Name',
              controller: firstnameController),
          SizedBox(
            height: 8,
          ),
          categoriesTextfield(
              icon: Icons.person,
              hinttext: 'Middle Name',
              controller: lastnameController),
          SizedBox(
            height: 8,
          ),
          categoriesTextfield(
              icon: Icons.person,
              hinttext: 'Last Name/ Surname',
              controller: middlenameController),
          SizedBox(
            height: 8,
          ),
          categoriesTextfield(
              icon: Icons.call,
              hinttext: 'Mobile No.',
              controller: mobailnoController),
          SizedBox(
            height: 8,
          ),
          categoriesTextfield(
              icon: Icons.lock,
              hinttext: 'Passowrd',
              controller: passwordController),
          SizedBox(
            height: 8,
          ),
          categoriesTextfield(
              icon: Icons.important_devices,
              hinttext: 'Aadhar No.',
              controller: aadharnoController),
          SizedBox(
            height: 8,
          ),
          categoriesTextfield(
              icon: Icons.location_on,
              hinttext: 'Address',
              controller: addressController),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
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
                    fixedSize: Size(290, 45)),
                onPressed: () {
                  print("fristName=========${firstnameController.text}");
                  print("MiddleName=========${middlenameController.text}");
                  print("LastName=========${lastnameController.text}");
                  print("MobailNo=========${mobailnoController.text}");
                  print("Password=========${passwordController.text}");
                  print("AadharNo.=========${aadharnoController.text}");
                  print("Address=========${addressController.text}");

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QualificationDetails()));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
