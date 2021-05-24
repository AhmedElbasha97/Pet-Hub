import 'package:flutter/material.dart';

class GlobalAppbar extends StatelessWidget implements PreferredSizeWidget {
  final title;
  final hasBackBTN;
  final hasSkipBTN;

  const GlobalAppbar({Key key, this.title, this.hasBackBTN, this.hasSkipBTN}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: LayoutBuilder(
          builder: (ctx, constraints) {
            final width = constraints.maxWidth * 0.5;
            return OverflowBox(
              maxHeight: double.infinity,
              maxWidth: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: width / 2 - preferredSize.height / 2),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
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
                        hasBackBTN? Align(
                          alignment: Alignment(-0.9, 0.85),
                          child: IconButton(
                           icon: Icon(Icons.arrow_back_ios),
                            iconSize: 20.0,
                            onPressed: (){
                             Navigator.pop(context);
                            },
                          ),
                        ):Align(
                          alignment: Alignment(-0.9, 0.7),
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              '',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0, 0.7),
                          child: Text(
                            title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.black),
                          ),
                        ),
                        hasSkipBTN ?Align(
                          alignment: Alignment(0.9, 0.7),
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              'skip',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ): Align(
                          alignment: Alignment(0.9, 0.7),
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              '',
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