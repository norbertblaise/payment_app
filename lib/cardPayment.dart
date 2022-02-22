import 'package:flutter/material.dart';

class CardPayment extends StatelessWidget {
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
          "Card",
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
      body: Column(children: [
        const SizedBox(
          height: 80.0,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
               Text(
                "Enter Card Details",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(height: 100.0),
              TextFormField(
                initialValue: "John Doe",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.normal,
                ),
                decoration:  InputDecoration(
                  labelText: "Holder's Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  errorStyle: TextStyle(
                    color: Theme.of(context).errorColor,
                  ),
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                initialValue: '1234-5678-3456-443',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.normal,
                ),
                decoration:  InputDecoration(
                  labelText: 'Card number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  errorStyle: TextStyle(
                    color: Theme.of(context).errorColor,
                  ),
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
                      initialValue: "12/23",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.normal,
                      ),
                      decoration:  InputDecoration(
                        labelText: 'Expiry Date',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        errorStyle: TextStyle(
                          color: Theme.of(context).errorColor,
                        ),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      initialValue: "123",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.normal,
                      ),
                      decoration:  InputDecoration(
                        labelText: "CCV/CVC",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        errorStyle: TextStyle(
                          color: Theme.of(context).errorColor,
                        ),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ],
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
                decoration:  InputDecoration(
                  labelText: 'amount',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  errorStyle: TextStyle(
                    color: Theme.of(context).errorColor,
                  ),
                  fillColor: Colors.white,
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
      ]),
    );
  }
}
