import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget
{
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String _verificationId = '';

  TextEditingController _smsController = TextEditingController();
  TextEditingController _otpcontroller = TextEditingController();

  Future<void> verifyPhone(String phoneNumber) async
  {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: Duration(seconds: 60),
      verificationCompleted: (AuthCredential credential) async
      {
        await _auth.signInWithCredential(credential);
        // TODO: Navigate to another screen upon successful verification
      },
      verificationFailed: (FirebaseAuthException e)
      {
        if (e.code == 'invalid-phone-number')
        {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (String verificationId, int? resendToken)
      {
        setState(()
        {
          _verificationId = verificationId;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId)
      {
        setState(()
        {
          _verificationId = verificationId;
        });
      },
    );
  }

  Future<void> signInWithPhoneNumber(String smsCode) async
  {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential
        (
        verificationId: _verificationId,
        smsCode: smsCode,
      );
      await _auth.signInWithCredential(credential);
      // TODO: Navigate to another screen upon successful verification
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (
          title: Text('OTP Verification'),
        ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _smsController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration
                  (
                    hintText: 'Enter your phone number',
                  ),
              ),
              SizedBox(height: 20.0),

              ElevatedButton(
                onPressed: () async
                {
                  String phoneNumber = '+91${_smsController.text.trim()}';
                  await verifyPhone(phoneNumber);
                },
                child: Text('Send OTP'),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _otpcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter OTP',
                ),
                onChanged: (value) {
                  // You can add further validations here if needed
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () async {
                  await signInWithPhoneNumber(_otpcontroller.text.trim());
                },
                child: Text('Verify OTP'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}