import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class BookingNearbyVets extends StatelessWidget {
  final Size mediaQuery;

  BookingNearbyVets(this.mediaQuery);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nearby Vets',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Container(
            height: mediaQuery.height * 0.22,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      right: 15.0,
                      top: 15.0,
                      bottom: 15.0,
                      left: index == 0 ? 10.0 : 0.0),
                  child: Container(
                    height: mediaQuery.height * 0.2,
                    width: mediaQuery.width * 0.75,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/dog_add.jpg')),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  color: Colors.redAccent,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    height: 55,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Dr. David Eisa'),
                                        Text('Veterinary Dermatologist'),
                                        Row(
                                          children: [
                                            SmoothStarRating(
                                                allowHalfRating: false,
                                                onRated: (v) {},
                                                starCount: 5,
                                                rating: 5.0,
                                                size: 15.0,
                                                isReadOnly: true,
                                                filledIconData: Icons.star,
                                                halfFilledIconData:
                                                    Icons.star_half,
                                                color: Colors.orangeAccent,
                                                borderColor:
                                                    Colors.orangeAccent,
                                                spacing: 0.0),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Text(
                                              '23 Reviews',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10.0),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '15 years of experience',
                                style: TextStyle(fontSize: 12.0),
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFF8F7FB),
                                ),
                                child: Icon(
                                  Icons.location_on_outlined,
                                  size: 20.0,
                                ),
                              ),
                              Text(
                                '1.5 km',
                                style: TextStyle(fontSize: 12.0),
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFF8F7FB),
                                ),
                                child: Icon(
                                  Icons.account_balance_wallet_outlined,
                                  size: 20.0,
                                ),
                              ),
                              Text(
                                '\$20',
                                style: TextStyle(fontSize: 12.0),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
