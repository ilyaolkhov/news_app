import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Theme.dart';

class BookMarkScreen extends StatefulWidget {
  const BookMarkScreen({super.key});

  @override
  State<BookMarkScreen> createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Bookmarks',
          style: TextStyle(
              fontSize: 24, color: blackPrimary, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Saved articles to the library',
          style: TextStyle(
              color: greyPrimary, fontSize: 16, fontWeight: FontWeight.w400),
        )
      ])),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 60.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: greyLighter),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset('lib/assets/svg/book-alt.svg',
                      color: purplePrimary, fit: BoxFit.fill),
                ),
              ),
              SizedBox(height: 24,),
              Text(
                'You haven\'t saved any articles yet. Start reading and bookmarking them now',
                style: TextStyle(
                  fontSize: 16,
                  color: blackPrimary,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
