import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';

class NotifikasiMovie extends StatelessWidget {
  const NotifikasiMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Notifikasi",
                      style: primaryColorTextStyle.copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              listView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget listView() {
    return ListView.separated(
      shrinkWrap: true, // Added shrinkWrap property
      physics: NeverScrollableScrollPhysics(), // Added physics property
      itemBuilder: (context, index) {
        return listViewItem(index);
      },
      separatorBuilder: (context, index) {
        return Divider(height: 0);
      },
      itemCount: 15,
    );
  }

Widget listViewItem(int index) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 11, vertical: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        prefixIcon(),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 30), // Updated margin to only set left margin
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                message(index),
                timeAndDate(index),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


  Widget prefixIcon() {
    return Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
      ),
      child: Icon(
              Icons.notifications,
              color: primaryColor,
            ),
    );
  }

  Widget message(int index) {
    double textSize = 14;
    return Container(
      child: RichText(
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          text: 'message',
          style: primaryTextStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(
              text: 'message description',
              style: primaryTextStyle.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget timeAndDate(int index) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "25-01-2023",
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          Text(
            "07:00 a.m",
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
