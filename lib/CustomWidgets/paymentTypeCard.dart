import 'package:flutter/material.dart';


class PaymentTypeCard extends StatelessWidget {
  const PaymentTypeCard({required this.cardLabel, required this.navAction});

  final String cardLabel;
  final Future<dynamic> navAction;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: InkWell(
        onTap: () {
          //goto mobile money page
          navAction;
        },
        child: Padding(
          padding: const EdgeInsets.only(
              top: 20.0, bottom: 20.0, left: 15.0, right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardLabel,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Icon(
                Icons.chevron_right,
                color: Colors.black,
                size: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}