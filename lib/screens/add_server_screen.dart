import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

import '../models/server_data.dart';
import '../widgets/add_server_form.dart';

class AddServerScreen extends StatefulWidget {
  @override
  _AddServerScreenState createState() => _AddServerScreenState();
}

class _AddServerScreenState extends State<AddServerScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String name = "Server";
    String points = '1.0';
    String tips = "0.0";

    return Container(
      decoration: BoxDecoration(
        color: kAccentColorPurple,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
        child: Form(
          key: _formKey,
          onChanged: () {
            Form.of(primaryFocus!.context!)!.save();
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: ConstrainedBox(
                      constraints: BoxConstraints.tight(Size(100.0, 45.0)),
                      child: AddServerForm(
                        onSaved: (value) => name = value!,
                        hintText: 'Name',
                        icon: Icon(
                          Icons.person,
                          size: 25.0,
                        ),
                        validator: (String? value) =>
                            value == null ? "Name cannot be empty" : null,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ConstrainedBox(
                      constraints: BoxConstraints.tight(Size(100.0, 45.0)),
                      child: AddServerForm(
                        onSaved: (value) => points = value!,
                        hintText: 'Hours',
                        icon: Icon(
                          Icons.schedule_outlined,
                          size: 25.0,
                        ),
                        isNum: true,
                        validator: (String? value) => value == null
                            ? "If no hours, enter 0"
                            : double.tryParse(value) == null
                                ? "Invalid number"
                                : null,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ConstrainedBox(
                      constraints: BoxConstraints.tight(Size(100.0, 45.0)),
                      child: AddServerForm(
                        onSaved: (value) => tips = value!,
                        hintText: 'Tips',
                        icon: Icon(
                          Icons.attach_money_outlined,
                          size: 25.0,
                        ),
                        isNum: true,
                        validator: (String? value) => value == null
                            ? "If no tips, enter 0"
                            : double.tryParse(value) == null
                                ? "Invalid number"
                                : null,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.0),
              Center(
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate())
                      _formKey.currentState!.save();
                    Provider.of<ServerData>(context, listen: false).addServer(
                      name,
                      double.parse(points),
                      double.parse(tips),
                    );
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(kAccentColorOrange),
                  ),
                  child: Text(
                    'Add Server',
                    style: kTextStyleServerTileName,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
