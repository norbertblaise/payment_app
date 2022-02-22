import 'package:flutter/material.dart';
import 'package:payment_app/singlePayment.dart';

class PaymentListItem extends StatelessWidget {
  const PaymentListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //todo goto detail page
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SinglePayment();
        }));
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_downward,
                  color: Theme.of(context).accentColor,
                  size: 30.0,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Payment",
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      color: Theme.of(context).primaryColor,
                                    ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "02/02/2022",
                            style: TextStyle(
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "10,000",
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      color: Theme.of(context).primaryColor,
                                    ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "UGX",
                            style: TextStyle(
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(Icons.chevron_right,
                    color: Theme.of(context).primaryColor, size: 30.0)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
