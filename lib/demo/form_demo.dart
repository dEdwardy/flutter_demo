import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.red),
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[RegisterForm()],
          ),
        ),
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController.text = 'Hi';
    textEditingController.addListener(() {
      debugPrint('input: ${textEditingController.text}....');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        // labelText:'Username',
        hintText: 'Input your username',
        // border: OutlineInputBorder(),
        filled: true,
        // fillColor: Colors.red[100],
      ),
      // onChanged: (value) {
      //   debugPrint(value);
      // },
      controller: textEditingController,
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autoValidate = false;

  void submitRegisterForm() {
    if( registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Registering...'),
        )
      );
      debugPrint('username:$username,password:$password');
    }else {
      setState(() {
        autoValidate = true;
      });
    }
  
  }
  String validateUsername(value) {
    if(value.isEmpty){ 
      return 'Username is required';
    }
    return null;
  }
  String validatePassword(value) {
    if(value.isEmpty){ 
      return 'Password is required';
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (value) {
              username = value;
            },
            validator: validateUsername,
            autovalidate: autoValidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: '',
            ),
            autovalidate: autoValidate,
            onSaved: (value) {
              password = value;
            },
            validator: validatePassword,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text(
                'Register',
                style: TextStyle(color: Colors.white),
                ),
                elevation: 0.0,
                onPressed: submitRegisterForm,
            ),
          ),
        ],
      ),
    );
  }
}
