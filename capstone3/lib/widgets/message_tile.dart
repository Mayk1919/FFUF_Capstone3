import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kAddLeaveModalBottomSheetMessageTilePadding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(kMyAccountImageUrl),
          ),
          SizedBox(
            width: kAddLeaveModalBottomSheetIconAndTextFieldDistance,
          ),
          Container(
            width: kAddLeaveModalBottomSheetMessageTileWidth,
            child: const TextField(
              //controller: nameController,
              decoration: InputDecoration(
                hintText: kMessageHint,
                fillColor: kMessageTextFieldBackgroundColor,
                filled: true,
              ),
              minLines: 5,
              maxLines: 5,
            ),
          ),
        ],
      ),
    );
  }
}
