import 'package:flutter/material.dart';
import 'package:khadamat_blue_coller/localization/localization_constants.dart';

import '../color.dart';
import '../styling.dart';

class WorkerCardWithOrder extends StatelessWidget {
  const WorkerCardWithOrder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Image.asset(
              "assets/worker.png",
              width: mediaQuery.size.width * 0.25,
              height: mediaQuery.size.width * 0.25,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: skillContainerColor,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              getTranslated(context, "Carpenter"),
                              style: skillTextStyle,
                            ),
                          ),
                        ),
                        SizedBox(width: 7),
                        Container(
                          decoration: BoxDecoration(
                            color: skillContainerColor,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              getTranslated(context, "plumber"),
                              style: skillTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 4.0),
                Text(
                 "service provider",
                  style: blackLargeTextStyle,
                ),
                SizedBox(height: 4.0),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                           "time",
                          style: contextTextStyle,
                        ),
                        Text(
                          "1m - 12m",
                          style: blackSmallTextStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                         "date",
                          style: contextTextStyle,
                        ),
                        Text(
                          "12/4/2020,tody",
                          style: blackSmallTextStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
