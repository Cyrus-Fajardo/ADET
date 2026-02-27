import 'package:fajardo_thactivity2/widgets/custom_elevated_button.dart';
import 'package:fajardo_thactivity2/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
class ZodiacFinderPage extends StatefulWidget {
  const ZodiacFinderPage({super.key});

  @override
  State<ZodiacFinderPage> createState() => _ZodiacFinderPageState();
}

class _ZodiacFinderPageState extends State<ZodiacFinderPage> {
  final TextEditingController _fullname=TextEditingController();
  final TextEditingController _age=TextEditingController();
  final List<String> _months = [
    "January", "February", "March", "April", "May", "June",
"July", "August", "September", "October", "November", "December"
  ];
  String? _selectedMonth;
  String _errorMessage="";
  // show zodiac
  void _showZodiacDialog(){
    if(_fullname.text.isEmpty||_age.text.isEmpty||_selectedMonth==null){
      setState(() {
        _errorMessage="Please fill in all fields (Name, Age, and Month)";
      });
      return;
    }
    setState(() {
      _errorMessage="";
    });
    String zodiac="";
    String traits="";
    switch(_selectedMonth){
      case"January": zodiac="Capricorn/Aquarius";traits="Ambitious & Independent";break;
      case"February": zodiac="Aquarius/Pisces";traits="Creative & Compassionate";break;
      case"March": zodiac="Pisces/Aries";traits="Imaginative & Courageous";break;
      case"April": zodiac="Aries/Taurus";traits="Determined & Reliable";break;
      case"May":zodiac="Taurus/Gemini";traits="Patient & Adaptable";break;
      case"June":zodiac="Gemini/Cancer";traits="Curious & Intuitive";break;
      case"July":zodiac="Cancer/Leo";traits="Protective & Charismatic";break;
      case"August":zodiac="Leo/Virgo";traits="Confident & Analytical";break;
      case"September":zodiac="Virgo/Libra";traits="Practical & Diplomatic";break;
      case"October":zodiac="Libra/Scorpio";traits="Fair & Passionate";break;
      case"November":zodiac="Scorpio/Sagitarrius";traits="Intense & Optimistic";break;
      case"December":zodiac="Sagittarius/Capricorn";traits="Adventurous & Disciplined";break;
    }
    showDialog(
context: context,
builder: (context) {
return AlertDialog(
title: Text("Hello, ${_fullname.text}!"),
content: Column(
mainAxisSize: MainAxisSize.min, // Wrap content height
children: [
const Icon(Icons.auto_awesome, color: Colors.amber, size: 50),
const SizedBox(height: 10),
Text("Age: ${_age.text}", style: const TextStyle(fontWeight:
FontWeight.bold)),
const Divider(),
Text("Your Month: $_selectedMonth"),
const SizedBox(height: 10),
Text(
"Zodiac: $zodiac",
style: const TextStyle(fontSize: 18, color: Colors.purple, fontWeight:
FontWeight.bold)
),
Text("Traits: $traits", style: const TextStyle(fontStyle: FontStyle.italic)),
],
),
actions: [
TextButton(
onPressed: () => Navigator.pop(context),
child: const Text("Awesome!"),
),
],
);
},
);
}
  // clear data
  void _clearData(){
    setState(() {
      _fullname.clear();
      _age.clear();
      _selectedMonth=null;
      _errorMessage="";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Zodiac Finder",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CircleAvatar(radius: 40,backgroundImage: AssetImage('images/download.jpg'),),
            const SizedBox(height: 10,),
            Text("What is your Zodiac?",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            Text("Discover your cosmic personality",style: TextStyle(fontSize: 14,color: Colors.grey),),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(thickness: 2,color: Colors.grey,),
            ),
            if(_errorMessage.isNotEmpty)Container(width: double.infinity,padding: const EdgeInsets.all(8.0),margin: EdgeInsets.only(bottom: 20,left: 20,right: 20),decoration: BoxDecoration(color: Colors.red.shade100,borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.red)),
            child: Row(
              children: [
                const Icon(Icons.error_outline, color: Colors.red,),
                const SizedBox(width: 10,),
                Expanded(child: Text(_errorMessage,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),))
              ],
            ),
            ),
            CustomTextField(controller: _fullname, label: "Full Name", textInputType: TextInputType.name, icon: Icons.person_2_outlined),
            CustomTextField(controller: _age, label: "Age", textInputType: TextInputType.number, icon: Icons.cake_outlined),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField<String>(decoration: InputDecoration(labelText: "Birth Month",prefixIcon: Icon(Icons.calendar_month),prefixIconColor: Theme.of(context).colorScheme.primary,border: OutlineInputBorder()),initialValue: _selectedMonth,items: _months.map((month){
                return DropdownMenuItem(value:month,child: Text(month));
              }).toList(),onChanged: (value){
                setState(() {
                  _selectedMonth=value;
                });
              },
              )
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Expanded(child: MyButton(text: "Find Zodiac", onPressed: _showZodiacDialog, color: Colors.deepPurple)),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Expanded(child: MyButton(text: "Clear", onPressed: _clearData, color: Colors.amber)),
              ],
            ),
          ],
        ),
      )
    );
  }
}