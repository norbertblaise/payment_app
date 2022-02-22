import 'package:flutter/material.dart';
import 'package:payment_app/mobileMoneyPayment.dart';
import 'package:payment_app/cardPayment.dart';
import 'package:payment_app/CustomWidgets/paymentTypeCard.dart';

class NewPayment extends StatelessWidget {
  const NewPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.chevron_left),
        ),
        title: Text(
          "New Payment",
          style: TextStyle(
            //todo change text color
            color: Theme.of(context).primaryColor,
            fontFamily: 'Noto Sans',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
        body:
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 250.0),
               Padding(
                padding: EdgeInsets.only(left: 22.0),
                child: Text(
                  "Choose a payment method",
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(color: Theme.of(context).primaryColor),

                ),
              ),
              // PaymentTypeCard(
              //     cardLabel: "Mobile Money",
              //     navAction: Navigator.push(context,
              //         MaterialPageRoute(builder: (context) {
              //       return MobileMoneyPayment();
              //     })),
              // ),
              // PaymentTypeCard(
              //   cardLabel: "Card",
              //   navAction: Navigator.push(context,
              //   MaterialPageRoute(builder: (context) {
              //     return CardPayment();
              //   }))
              // ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                child: InkWell(
                  onTap: () {
                    //goto card page
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return MobileMoneyPayment();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 20.0, left: 15.0, right: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(
                          "Mobile Money",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color:  Theme.of(context).primaryColor,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                child: InkWell(
                  onTap: () {
                    //goto card page
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return CardPayment();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 20.0, left: 15.0, right: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(
                          "Card",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Theme.of(context).primaryColor,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
