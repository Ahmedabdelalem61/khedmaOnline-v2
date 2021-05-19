import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchFiltrationScreen extends StatefulWidget {
  @override
  _SearchFiltrationScreenState createState() => _SearchFiltrationScreenState();
}

class _SearchFiltrationScreenState extends State<SearchFiltrationScreen> {
  var services = ["بى ام", "تيةةتا ", "هوندا", "بيجوتى"];
  String currentSelectedService;

  RangeValues currentRangeValues = const RangeValues(20, 100);
  String carChoose;

  List<String> carItems = ["بى ام", "تيةةتا ", "هوندا", "بيجوتى"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 600,
        width: 300,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.close,
                      color: HexColor('#B2B2B2'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Search filtration",
                      style:
                          TextStyle(fontSize: 33, color: HexColor('#616161')),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 450,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "The type of service to be performed",
                            style: TextStyle(color: HexColor('#B0B0B0')),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: HexColor('#B0B0B0'), width: 1)),
                          // padding: EdgeInsets.only(left: 16,right: 16),
                          child: DropdownButton(
                            hint: Text("choose the service",
                                style: TextStyle(color: HexColor('#B0B0B0'))),
                            underline: SizedBox(),
                            style: TextStyle(color: HexColor('#B0B0B0')),
                            icon: Icon(Icons.keyboard_arrow_down,
                                color: HexColor('#B0B0B0')),
                            iconSize: 30,
                            value: currentSelectedService,
                            isExpanded: true,
                            onChanged: (newValue) {
                              setState(() {
                                currentSelectedService = newValue;
                              });
                            },
                            items: services.map((valueItem) {
                              return DropdownMenuItem(
                                child: Text(
                                  valueItem,
                                ),
                                value: valueItem,
                              );
                            }).toList(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "the region",
                            style: TextStyle(color: HexColor('#B0B0B0')),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: HexColor('#B0B0B0'), width: 1)),
                          // padding: EdgeInsets.only(left: 16,right: 16),
                          child: DropdownButton(
                            hint: Text('choose the region',
                                style: TextStyle(color: HexColor('#B0B0B0'))),
                            underline: SizedBox(),
                            style: TextStyle(color: HexColor('#B0B0B0')),
                            icon: Icon(Icons.keyboard_arrow_down,
                                color: HexColor('#B0B0B0')),
                            iconSize: 30,
                            value: currentSelectedService,
                            isExpanded: true,
                            onChanged: (newValue) {
                              setState(() {
                                currentSelectedService = newValue;
                              });
                            },
                            items: services.map((valueItem) {
                              return DropdownMenuItem(
                                child: Text(
                                  valueItem,
                                ),
                                value: valueItem,
                              );
                            }).toList(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "select data and time",
                            style: TextStyle(color: HexColor('#B0B0B0')),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 120,
                              height: 50,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: HexColor('#B0B0B0'), width: 1)),
                              // padding: EdgeInsets.only(left: 16,right: 16),
                              child: Text('date'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 120,
                              height: 50,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: HexColor('#B0B0B0'), width: 1)),
                              // padding: EdgeInsets.only(left: 16,right: 16),
                              child: Text('time'),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "paying ways",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(color: HexColor('#B0B0B0')),
                          ),
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.start,

                          alignment: WrapAlignment.end,
                          // Gap between adjacent chips.
                          spacing: -5.0,
                          // Gap between lines.
                          runSpacing: 4.0,

                          children: [
                            'all',
                            'cash',
                            'card',
                          ]
                              .map((String name) => Container(
                                    child: Transform(
                                      transform: new Matrix4.identity()
                                        ..scale(0.8),
                                      child: Chip(
                                        backgroundColor: HexColor('#E5E5E5'),
                                        label: Text(
                                          name,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                        Text(
                          "rating",
                          style: TextStyle(color: HexColor('#B0B0B0')),
                        ),
                        RatingBar.builder(
                          glowColor: Colors.grey,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Text(
                          "price",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(color: HexColor('#B0B0B0')),
                        ),
                        RangeSlider(
                          activeColor: HexColor("#6E8AD5"),
                          inactiveColor: Colors.grey,
                          values: currentRangeValues,
                          min: 0,
                          max: 100,
                          divisions: 100,
                          labels: RangeLabels(
                            currentRangeValues.start.round().toString(),
                            currentRangeValues.end.round().toString(),
                          ),
                          onChanged: (RangeValues values) {
                            setState(() {
                              currentRangeValues = values;
                            });
                          },
                        ),
                        Row(
                          children: [
                            Text(
                              '${currentRangeValues.start.toInt()} usd',
                              style: TextStyle(color: HexColor('#B0B0B0')),
                            ),
                            Spacer(),
                            Text(
                              '${currentRangeValues.end.toInt()} usd',
                              style: TextStyle(color: HexColor('#B0B0B0')),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 18, bottom: 14, right: 40, left: 40),
                  child: FlatButton(
                    minWidth: 200,
                    height: 45,
                    onPressed: () {},
                    child: Text(
                      'OK',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: HexColor("#6E8AD5"),
                    splashColor: HexColor("#6E8AD5"),
                    textColor: Colors.white,
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
