import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          padding:
          EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0, bottom: 40.0),
          alignment: Alignment.center,
          color: Colors.deepPurple,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Spice Jet",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 35.0),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Bangluru to Mumbai via Delhi",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 20.0),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Air India",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 35.0),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Jaipur to Goa",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 20.0),
                    ),
                  ),
                ],
              ),
              FlightImageAsset(),
              FlightBookingButton()
            ],
          )),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(image: assetImage, width: 250.0, height: 250.0);
    return Container(child: image);
  }
}

class FlightBookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(top: 30.0),
        width: 250.0,
        height: 50.0,
        child: RaisedButton(
            color: Colors.deepOrange,
            child: Text(
              "Book Your Flight",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            elevation: 6.0,
            onPressed: () => bookFlight(context)
        )
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a pleasant flight"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) => alertDialog);
  }
}
