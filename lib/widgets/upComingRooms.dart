import 'package:clubhouse/config/clubHouse_color.dart';
import 'package:flutter/material.dart';
import '../sampleData.dart';

class UpcomingRooms extends StatelessWidget {
  final List<Room> upcomingRooms;
  const UpcomingRooms({
    Key? key,
    required this.upcomingRooms,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ClubHouseColor.secondaryBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 4, 0, 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: upcomingRooms
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: e.club.isNotEmpty ? 2.0 : 0),
                        child: Text(e.time),
                      ),
                      const SizedBox(width: 12.0),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (e.club.isNotEmpty)
                              Flexible(
                                child: Text(
                                  "${e.club}🏠".toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .overline!
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.0,
                                      ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            Flexible(
                              child:
                                  Text(e.name, overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
