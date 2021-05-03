import 'package:flutter/material.dart';
import 'package:pet_hub/UI/add_pet_screen/pet_info_reminder_item.dart';

class PetAddReminderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.45,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: PetAddReminderItem(
              isFirst: (index == 0) ? true : false,
            ),
          );
        },
      ),
    );
  }
}
