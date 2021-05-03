import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_hub/UI/add_pet_screen/gender_toggle.dart';
import 'package:pet_hub/UI/add_pet_screen/pet_image_upload_widget.dart';
import 'package:pet_hub/UI/add_pet_screen/pet_info_reminder_list.dart';
import 'package:pet_hub/UI/add_pet_screen/pet_info_switch.dart';
import 'package:pet_hub/UI/add_pet_screen/simple_text_field_comp.dart';
import 'package:pet_hub/widgets/global_appbar.dart';
import 'package:pet_hub/widgets/global_date_picker.dart';

class PetInfoScreen extends StatefulWidget {
  @override
  _PetInfoScreenState createState() => _PetInfoScreenState();
}

class _PetInfoScreenState extends State<PetInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F7FB),
      appBar: GlobalAppbar(),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: PetImageUploadWidget(),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  'General Information',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SimpleTextFieldComp(label: "Pet's name", hint: "Bella"),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SimpleTextFieldComp(
                    label: "Species", hint: "Dog", arrow: true),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SimpleTextFieldComp(
                    label: "Breed", hint: "Border Collie", arrow: true),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Gender',
                  style: TextStyle(color: Colors.grey[600], fontSize: 13.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: GenderToggleWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: GlobalDatePicker(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Additional Information',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
              PetInfoSwitch(label: 'Neutered'),
              PetInfoSwitch(label: 'Vaccinated'),
              PetInfoSwitch(label: 'Friendly with dogs'),
              PetInfoSwitch(label: 'Friendly with cats'),
              PetInfoSwitch(label: 'Friendly with kids <10 years'),
              PetInfoSwitch(label: 'Purebred'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Reminders',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Add vaccines, haircuts, pills, estrus, etc. and you will receive notifications for the next event.',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: PetAddReminderList()),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Next'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        padding: EdgeInsets.symmetric(vertical: 18),
                        textStyle: TextStyle(fontSize: 20)),
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
