import 'package:capstone3/utilities/global_constants.dart';
import 'package:capstone3/widgets/business_card_section.dart';
import 'package:capstone3/widgets/selection_tab.dart';
import 'package:capstone3/widgets/profile_drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {
  final bool isDisplayingMyBusinessCard;
  final int employeeNumber;
  final VoidCallback onChangeMyBusinessCardDisplayAction;
  BusinessCardScreen(
      {Key? key,
      required this.isDisplayingMyBusinessCard,
      required this.employeeNumber,
      required this.onChangeMyBusinessCardDisplayAction,
      })
      : super(key: key);

  final CollectionReference _employees =
      FirebaseFirestore.instance.collection('employees');
  @override
  Widget build(BuildContext context) {
 

    return Scaffold(
        appBar: AppBar(),
        drawer: const ProfileDrawerConnector(),
        body: StreamBuilder(
          stream: _employees.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              DocumentSnapshot? documentSnapshot;
              streamSnapshot.data!.docs.forEach((employee) {
                if (employee['id'] == employeeNumber) {
                  if (isDisplayingMyBusinessCard == true) {
                    documentSnapshot = employee;
                  } else {
                    streamSnapshot.data!.docs.forEach((supervisor) {
                      if (supervisor['id'] == employee['supervisorId']) {
                        documentSnapshot = supervisor;
                      }
                    });
                  }
                }
             
              });

              return SingleChildScrollView(
                child: Container(
                  padding: kBusinessCardPadding,
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectionTab(
                        tabNames: businessScreenSelection,
                        onChangeMyBusinessCardDisplayAction:
                            onChangeMyBusinessCardDisplayAction,
                      ),
                      BusinessCardSection(
                        documentSnapshot: documentSnapshot,
                      ),
                    ],
                  ),
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        )

        );
  }
}
