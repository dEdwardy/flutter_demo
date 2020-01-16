import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputDemo extends StatefulWidget {
  @override
  _InputDemoState createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  bool _checkBoxItem = false;
  int _radioGroupA = 0;
  bool _switchA = false;
  double _sliderItemA = 0.0;
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay(hour: 9,minute: 30);
  Future<void> _selectDate() async {
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if(date == null)return;
    setState(() {
     _selectedDate = date; 
    });
  }
  _selectTime() async {
    final TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if(time == null)return;
    setState(() {
      _selectedTime = time;
    });
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('CheckBox Demo'),
              SizedBox(height: 18.0),
              CheckboxListTile(
                value: _checkBoxItem,
                onChanged: (value) {
                  setState(() {
                    _checkBoxItem = value;
                  });
                },
                title: Text('CheckBox Item A'),
                subtitle: Text('Description'),
                secondary: Icon(Icons.bookmark),
                selected: _checkBoxItem,
                activeColor: Theme.of(context).accentColor,
              ),
              Text('Radio Demo'),
              SizedBox(height: 18.0),
              RadioListTile(
                value: 0,
                groupValue: _radioGroupA,
                onChanged: (int value) {
                  setState(() {
                    _radioGroupA = value;
                  });
                },
                activeColor: Theme.of(context).accentColor,
                title: Text('Radio Item A'),
                subtitle: Text('Description'),
                secondary: Icon(Icons.airline_seat_flat),
                selected: _radioGroupA == 0,
              ),
              RadioListTile(
                value: 1,
                groupValue: _radioGroupA,
                onChanged: (int value) {
                  setState(() {
                    _radioGroupA = value;
                  });
                },
                activeColor: Theme.of(context).accentColor,
                title: Text('Radio Item B'),
                subtitle: Text('Description'),
                secondary: Icon(Icons.airline_seat_flat),
                selected: _radioGroupA == 1,
              ),
              Text('Switch Demo'),
              SizedBox(height: 18.0),
              SwitchListTile(
                  value: _switchA,
                  onChanged: (bool value) {
                    setState(() {
                      _switchA = value;
                    });
                  },
                  activeColor: Theme.of(context).accentColor,
                  title: Text('Switch Item A'),
                  subtitle: Text('Description'),
                  secondary:
                      Icon(_switchA ? Icons.visibility : Icons.visibility_off),
                  selected: _switchA),
              Text('Slider Demo'),
              SizedBox(height: 18.0),
              Slider(
                value: _sliderItemA,
                onChanged: (value) {
                  setState(() {
                    _sliderItemA = value;
                  });
                },
                activeColor: Theme.of(context).accentColor.withOpacity(0.5),
                inactiveColor: Theme.of(context).accentColor.withOpacity(0.1),
                min: 0.0,
                max: 100.0,
                divisions: 100,
                label: '${_sliderItemA.toInt()}',
              ),
              SizedBox(height: 18.0),
              Text('Slider value : ${_sliderItemA.toInt()}'),
              SizedBox(height: 18.0),
              Text('DateTime Demo'),
              SizedBox(height: 18.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: _selectDate,
                    child: Row(
                      children: <Widget>[
                        Text(DateFormat.yMMMd().format(_selectedDate)),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  InkWell(
                    onTap: _selectTime,
                    child: Row(
                      children: <Widget>[
                        Text(_selectedTime.format(context)),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
