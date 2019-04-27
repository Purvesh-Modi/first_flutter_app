import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Stateful Widget Example",
      home: FavoriteCity(),
    ));

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {
  String cityName = "";
  var _currencies = ['Rupees', 'Dollor', 'Pounds', 'Others'];
  String _currentItemSelected = 'Rupees';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget Example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() => cityName = userInput);
              },
            ),
            DropdownButton<String>(
              items: _currencies.map((String dropDownItemValue) {
                return DropdownMenuItem<String>(
                  value: dropDownItemValue,
                  child: Text(dropDownItemValue),
                );
              }).toList(),
              onChanged: (String newValueSelected){
                _onDropDownItemSelected(newValueSelected);
              },
              value: _currentItemSelected,
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Your best city is $cityName",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      _currentItemSelected = newValueSelected;
    });
  }
}
