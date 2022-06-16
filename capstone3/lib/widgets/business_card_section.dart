import 'package:capstone3/utilities/global_constants.dart';
import 'package:capstone3/widgets/business_card_address_tile.dart';
import 'package:capstone3/widgets/business_card_contact_tile.dart';
import 'package:capstone3/widgets/profile_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BusinessCardSection extends StatelessWidget {
  final DocumentSnapshot? documentSnapshot;
  const BusinessCardSection({Key? key,  this.documentSnapshot})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: kBusinessCardSectionMargin,
      padding: kBusinessCardSectionPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            kBusinessCard,
            style: ktextTheme.headline2,
          ),
          ProfileTile(
            name: documentSnapshot!['name'],
            email: documentSnapshot!['email'],
            position: documentSnapshot!['position'],
            imageUrl: documentSnapshot!['imageUrl'],
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Image.asset(kQRCode),
          ),
          BusinessCardAddressTile(
            location: documentSnapshot!['location'],
            locationAddress: documentSnapshot!['locationAddress'],
          ),
          BusinessCardContactTile(
            phone: documentSnapshot!['phone'],
            fax: documentSnapshot!['fax'],
            mobile: documentSnapshot!['mobile'],
            email: documentSnapshot!['email'],
          )
        ],
      ),
    );
  }
}
