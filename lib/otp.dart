import 'package:exam_runner_up/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Otp_page extends StatefulWidget {
  final String? title;

  const Otp_page({Key? key, this.title}) : super(key: key);

  @override
  State<Otp_page> createState() => _Otp_pageState();
}

class _Otp_pageState extends State<Otp_page> {
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
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
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(

              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        title: const Text(
          "OTP",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/otp.png",
                height: 150,
                width: 150,
              ),
              Text(
                "Enter Your 4 Digit code",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Don't share it with any other",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: OTPTextField(
                  controller: otpController,
                  length: 4,
                  keyboardType: TextInputType.number,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceEvenly,
                  fieldWidth: 50,
                  fieldStyle: FieldStyle.box,
                  outlineBorderRadius: 15,
                  obscureText: true,
                  otpFieldStyle: OtpFieldStyle(
                      borderColor: Colors.black87,
                      enabledBorderColor: Colors.black87,
                      focusBorderColor: Colors.black),
                  style: TextStyle(fontSize: 17, height: 2.2),
                  onChanged: (pin) {
                    print("Changed: " + pin);
                  },
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Enter 4 Digit OTP number Sent to your Phone',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't Got Code? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,

                    ),
                  ),
                  Text(
                    'Resend',
                    style: TextStyle(
                        color: Color(0xffA71D1E), fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 18,
              ),
              ElevatedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Color(0xff0BA84A),
                    fixedSize: Size(300, 50)),
                onPressed: () {
                  print("OTP=======${otpController}");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgetPassword(),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
