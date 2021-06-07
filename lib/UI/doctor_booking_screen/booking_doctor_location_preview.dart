import 'package:flutter/material.dart';

class DoctorBookingLocationPreview extends StatefulWidget {
  @override
  _DoctorBookingLocationPreviewState createState() =>
      _DoctorBookingLocationPreviewState();
}

class _DoctorBookingLocationPreviewState
    extends State<DoctorBookingLocationPreview> {
  String _previewImageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 10,
              blurRadius: 10,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF8F7FB),
                    ),
                    child: Icon(Icons.calendar_today),
                  ),
                ),
                Column(
                  children: [
                    Text('Veterinary clinic "Aldeb-Clinic"'),
                    Text('141 Nasr City, Cairo'),
                  ],
                )
              ],
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                  )),
              child: Center(
                child: _previewImageUrl == null
                    ? Text('Select a Location to Preview')
                    : Image.network(
                        _previewImageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
