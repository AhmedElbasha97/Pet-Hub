import 'package:flutter/material.dart';

class GlobalAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: LayoutBuilder(
          builder: (ctx, constraints) {
            final width = constraints.maxWidth * 0.3;
            return OverflowBox(
              maxHeight: double.infinity,
              maxWidth: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: width / 2 - preferredSize.height / 2),
                child: SizedBox(
                  height: width,
                  width: width,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[200],
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: Offset(1, 1))
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(0, 0.5),
                          child: Text(
                            'Add Pet Details',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.black),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.9, 0.5),
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              'skip',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        preferredSize: preferredSize);
  }
}
