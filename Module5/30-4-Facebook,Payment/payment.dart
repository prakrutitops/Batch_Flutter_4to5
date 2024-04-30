import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment>
{
  late Razorpay _razorpay;

  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();

    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    //super.dispose();
    _razorpay.clear();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title:Text("Payment Example"),),
        body: Center
          (
            child: ElevatedButton(onPressed: ()
            {

              opencheckout();

            }, child: Text("Pay Now"),),
          ),
      );
  }

  void opencheckout()
  {
    var options =
    {
      'key': 'rzp_test_7PX7ejznhsbYwJ',
      'amount': 10000, // amount in the smallest currency unit (e.g., cents for USD)
      'name': 'Your Company Name',
      'description': 'Product description',
      'prefill': {'contact': '1234567890', 'email': 'test@example.com'},
      'external': {
        'wallets': ['paytm']
      }
    };
    try
    {
      _razorpay.open(options);
    }
    catch (e)
    {
      debugPrint('Error: ${e.toString()}');
    }

  }

  _handlePaymentSuccess(PaymentSuccessResponse response)
  {
    print("Payment Success: ${response.paymentId}");
  }

  _handlePaymentError(PaymentFailureResponse response)
  {
    print("Payment Error: ${response.code} - ${response.message}");
  }

  _handleExternalWallet(ExternalWalletResponse response)
  {
    print("External Wallet: ${response.walletName}");
  }
}
