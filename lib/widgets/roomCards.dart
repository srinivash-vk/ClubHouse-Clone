import 'package:clubhouse/sampleData.dart';
import 'package:clubhouse/screens/roomScreen.dart';
import 'package:clubhouse/widgets/userProfileImages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomCards extends StatelessWidget {
  final Room room;
  const RoomCards({
    Key? key,
    required this.room,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        fullscreenDialog: true,
        builder: (_) => RoomScreen(room: room),
      )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Card(
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${room.club} 🗣",
                  style: Theme.of(context).textTheme.overline!.copyWith(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.0,
                      ),
                ),
                Text(
                  '${room.name}',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 12.0),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100.0,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 28.0,
                              top: 20.0,
                              child: UserProfileImage(
                                imageUrl: room.speakers[1].imageUrl,
                                size: 48.0,
                              ),
                            ),
                            UserProfileImage(
                              imageUrl: room.speakers[0].imageUrl,
                              size: 48.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...room.speakers.map(
                            (e) => Text(
                              '${e.firstName} ${e.lastName} 💬',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 16.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        '${room.speakers.length + room.followedBySpeakers.length + room.others.length} ',
                                  ),
                                  const WidgetSpan(
                                    child: Icon(
                                      CupertinoIcons.person_fill,
                                      size: 18.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  TextSpan(text: ' / ${room.speakers.length} '),
                                  const WidgetSpan(
                                    child: Icon(
                                      CupertinoIcons.chat_bubble_text_fill,
                                      size: 18.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
