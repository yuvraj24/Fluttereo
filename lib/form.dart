import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FormFieldState();
  }
}

class FormFieldState extends State<FormDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Forms"),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.save), onPressed: () {})
        ],
      ),
      body: new Column(
        children: <Widget>[
          new ListTile(
            leading: const Icon(Icons.person),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Name",
                contentPadding: const EdgeInsets.all(15.0),
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.phone),
            title: new TextField(
              decoration: new InputDecoration(
                  hintText: "Phone",
                  contentPadding: const EdgeInsets.all(15.0)),
              keyboardType: TextInputType.phone,
              maxLength: 10,
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.email),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Email",
                contentPadding: const EdgeInsets.all(15.0),
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.label),
            title: const Text('Nick'),
            subtitle: const Text('None'),
          ),
          new ListTile(
              leading: new Icon(Icons.today),
              title: new Text('Birthday'),
              subtitle: new Text('April 24, 1992')),
          new ListTile(
            leading: new Icon(Icons.group),
            title: new Text('Contact group'),
            subtitle: new Text('Not specified'),
          )
        ],
      ),
    );
  }
}
