import 'package:flutter/material.dart';
import 'result_screen.dart';
import '../widgets/custom_clearbutton.dart';
import '../widgets/custom_text_field.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final _nicknameController = TextEditingController();
  final _zodiacController = TextEditingController();

  String _errorMessage = "";

  void _resetFields() {
    _nicknameController.clear();
    _zodiacController.clear();
    setState(() {
      _errorMessage = ""; // clear error when reset
    });
  }

  void _submit() {
    if (_nicknameController.text.isEmpty || _zodiacController.text.isEmpty) {
      setState(() {
        _errorMessage = "Please fill in both fields (Nickname and Zodiac)";
      });
      return;
    }

    setState(() {
      _errorMessage = "";
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ResultScreen(
          nickname: _nicknameController.text,
          zodiac: _zodiacController.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(controller: _nicknameController,textInputType: TextInputType.name,icon: Icons.person, label: "Nickname"),
            CustomTextField(controller: _zodiacController,textInputType: TextInputType.text,icon: Icons.star,label: "Favorite Zodiac"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submit,
              child: Text("Submit"),
            ),
            SizedBox(height: 10),
            ClearButton(onClear: _resetFields),
            if (_errorMessage.isNotEmpty) ...[
              SizedBox(height: 20),
              Text(
                _errorMessage,
                style: TextStyle(color: Colors.red, fontSize: 14),
              ),
            ],
          ],
        ),
      ),
    );
  }
}