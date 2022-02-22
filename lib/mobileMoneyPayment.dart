import 'package:flutter/material.dart';

class MobileMoneyPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          "Mobile Money",
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
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          flex: 1,
          child: Flexible(
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxHeight: 250.0,
                  ),
                ),
                TextFormField(
                  initialValue: " eg. 0770111222",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Phone number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  initialValue: " eg. 1000",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    labelText: 'amount',
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    errorStyle: TextStyle(
                      color: Theme.of(context).errorColor,
                    ),
                    fillColor: Colors.white,
                    // filled: true,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: MaterialButton(
                    minWidth: 90.0,
                    color: Theme.of(context).colorScheme.secondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    onPressed: () {
                      //request payment and play waiting animation
                    },
                    child: const Text(
                      "Pay",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
