import 'package:app_shared/widgets/my_drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;
  int gender = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences App"),
      ),
      drawer: MyDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Configuración General",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Nombre completo",
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Dirección actual",
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              //Switch(value: false, onChanged: (bool mandarina) {}),
              SwitchListTile(
                title: Text("Modo oscuro"),
                value: isDarkMode,
                onChanged: (bool value) {
                  isDarkMode = value;
                  setState(() {});
                },
              ),
              /*Radio(
                value: 1,
                groupValue: 1,
                onChanged: (int? value) {},
              ),*/
              RadioListTile(
                title: Text("Masculino"),
                value: 1,
                groupValue: gender,
                onChanged: (int? value) {
                  gender = value!;
                  setState(() {});
                },
              ),
              RadioListTile(
                title: Text("Femenino"),
                value: 2,
                groupValue: gender,
                onChanged: (int? value) {
                  gender = value!;
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 12.0,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.save,
                    color: Colors.white,
                  ),
                  label: Text("Guardar Data"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
