
import 'package:flutter/material.dart';

class GenderField extends StatelessWidget {
  final List<String> genderList;

  GenderField(this.genderList);

  @override
  Widget build(BuildContext context) {
    String? select;
    Map<int, String> mappedGender = genderList.asMap();

    return Container(
      width: 600,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: StatefulBuilder(
        builder: (_, StateSetter setState) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Gender : ',
              style: TextStyle(
                color: Colors.grey[750],
                fontSize: 15,
              ),
            ),
            ...mappedGender.entries.map(
              (MapEntry<int, String> mapEntry) {
                var select2 = select;
                return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio(
                        activeColor: Theme.of(context).primaryColor,
                        groupValue: select2,
                        value: genderList[mapEntry.key],
                        onChanged: (value) =>
                            setState(() => select = value as String?),
                      ),
                      Text(mapEntry.value)
                    ]);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class signup2 extends StatefulWidget {
  @override
  State<signup2> createState() => _signup2State();
}

class _signup2State extends State<signup2> {
  var phoneController = TextEditingController();

  var genderController = TextEditingController();

  var ageController = TextEditingController();

  DateTime date = DateTime.now();
  /*
  _register() async {
    var data = {
      // 'f_name': f_nameController.text,
      // 'l_name': l_nameController.text,
      // 'gender': gender.text,
      // 'email' : email.text,
      // 'password':password.text,
      // 'birthdate':birthdate.text,
      // 'phone':phone.text
    };
    //  debugPrint(f_nameController.text);

    var res = await CallApi().postData(data, 'insertPatient');
    var body = json.decode(res.body);
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Text('Your Therapist',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF001E6C),
                  )),
              SizedBox(height: 15),
              Image(
                  image: NetworkImage(
                      "https://www.asianmhc.org/wp-content/uploads/2021/07/amhc_illustration.png")),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                onFieldSubmitted: (String value) {
                  print(value);
                },
                onChanged: (String value) {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'Phone',
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Color(0xFF001E6C),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                onFieldSubmitted: (String value) {
                  print(value);
                },
                onChanged: (String value) {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'Age',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xFF001E6C),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GenderField(['Male', 'Female', 'Other']),
              SizedBox(height: 15),
              Container(
                width: 600,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      child: Text(
                        "Your Birthdate",
                        style: TextStyle(fontSize: 15),
                      ),
                      onPressed: () async {
                        DateTime? newDate = await showDatePicker(
                            context: context,
                            initialDate: date,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100));
                        if (newDate == null) return;
                        setState(() {
                          date = newDate;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF001E6C)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      '${date.day}/${date.month}/${date.year}',
                      style: TextStyle(fontSize: 20, color: Color(0xFF001E6C)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                 // _register();
                     Navigator.pushNamed(context, "/homelayout");
                },
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF001E6C)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 106, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an accout? "),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text(
                        " Log in ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            // fontFamily: "myfont",
                            color: Color(0xFF001E6C)),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
