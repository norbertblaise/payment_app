import 'package:flutter/material.dart';

class SinglePayment extends StatelessWidget {
  const SinglePayment({Key? key}) : super(key: key);

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
          "Payment",
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
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Summary",
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(color: Theme.of(context).primaryColor),
              ),
            ),
            Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 18.0, top: 32.0, bottom: 36.0),
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
                                    fontFamily: 'Noto Sans',
                                    fontSize: 24,
                                  ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "02/02/2022",
                          style: TextStyle(
                            color: Theme.of(context).hintColor,
                            fontFamily: 'Noto Sans',
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_downward,
                      color: Theme.of(context).accentColor,
                      size: 32.0,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Details",
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(color: Theme.of(context).primaryColor),
              ),
            ),
            Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 18.0, top: 23.0, bottom: 36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Transaction ID",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Theme.of(context).hintColor,
                              fontFamily: 'Segoe UI',
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "0009409230000934",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: 'Segoe UI',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 31.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "From",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Theme.of(context).hintColor,
                              fontFamily: 'Segoe UI',
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "James Holden",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: 'Segoe UI',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 31,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "To",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Theme.of(context).hintColor,
                              fontFamily: 'Segoe UI',
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Tulisa Kamal",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: 'Segoe UI',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 31,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Transaction Type",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Theme.of(context).hintColor,
                              fontFamily: 'Segoe UI',
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Transfer",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: 'Segoe UI',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 31,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Reason",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Theme.of(context).hintColor,
                              fontFamily: 'Segoe UI',
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Transport",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: 'Segoe UI',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
