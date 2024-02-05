import 'package:flutter/material.dart';

import '../../Theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Profile',
            style: TextStyle(
                fontSize: 24, color: blackPrimary, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 8,
          ),
        ]),
      ),
      body: BodyScreenProfile(),
    );
  }
}

class BodyScreenProfile extends StatefulWidget {
  const BodyScreenProfile({super.key});

  @override
  State<BodyScreenProfile> createState() => _BodyScreenProfileState();
}

class _BodyScreenProfileState extends State<BodyScreenProfile> {
  bool selectSwith = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            ProfileInfoHeader(),
            SizedBox(
              height: 32,
            ),
            ListTitleCustom(
              text: 'Notifications',
              body: Switch(
                activeColor: Colors.white,
                activeTrackColor: purplePrimary,
                value: selectSwith,
                onChanged: (bool value) {
                  setState(() {
                    selectSwith = value;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListTitleCustom(
              text: 'Language',
              body: Icon(
                Icons.arrow_forward_ios_outlined,
                color: greyDarker,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListTitleCustom(
              text: 'Change Password',
              body: Icon(
                Icons.arrow_forward_ios_outlined,
                color: greyDarker,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            ListTitleCustom(
              text: 'Privacy',
              body: Icon(
                Icons.arrow_forward_ios_outlined,
                color: greyDarker,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ListTitleCustom(
              text: 'Terms & Conditions',
              body: Icon(
                Icons.arrow_forward_ios_outlined,
                color: greyDarker,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            ListTitleCustom(text: 'Sign Out', body: Icon(
              Icons.exit_to_app,
              color: greyDarker,
            ),)
          ],
        ),
      ),
    );
  }
}

class ProfileInfoHeader extends StatelessWidget {
  const ProfileInfoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(color: greyPrimary, shape: BoxShape.circle),
          width: 72,
          height: 72,
        ),
        const SizedBox(
          width: 24,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(
                color: blackPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'name@gmail.com',
              style: TextStyle(
                color: greyPrimary,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        )
      ],
    );
  }
}

class ListTitleCustom extends StatefulWidget {
  String text;
  Widget? body;

  ListTitleCustom({
    super.key,
    required this.text,
    required this.body,
  });

  @override
  State<ListTitleCustom> createState() => _ListTitleCustomState();
}

class _ListTitleCustomState extends State<ListTitleCustom> {
  bool selectSwith = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        tileColor: greyLighter,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Text(
          widget.text,
          style: TextStyle(
            color: greyDarker,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: widget.body);
  }
}
