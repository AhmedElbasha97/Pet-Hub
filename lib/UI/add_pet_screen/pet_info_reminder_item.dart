import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class PetAddReminderItem extends StatelessWidget {
  final bool isFirst;
  PetAddReminderItem({this.isFirst = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.35,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Card(
          color: isFirst ? Colors.grey[200] : Colors.white,
          shadowColor: Colors.black12,
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                isFirst
                    ? Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: new RawMaterialButton(
                          onPressed: () {},
                          elevation: 5.0,
                          fillColor: Theme.of(context).primaryColor,
                          child: Icon(
                            Icons.add,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(5.0),
                          shape: CircleBorder(),
                        ),
                      )
                    : Icon(
                        FontAwesomeIcons.syringe,
                        size: 35.0,
                        color: Theme.of(context).primaryColor,
                      ),
                isFirst
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Text(
                          'Add event',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    : Column(
                        children: [
                          Text('Measles Vaccine'),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            DateFormat('MM.dd.yyyy')
                                .format(DateTime.now())
                                .toString(),
                            style: TextStyle(color: Colors.grey[500]),
                          )
                        ],
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
