import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'There is no weather 🌦🚫',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(221, 63, 63, 63),
              ),
            ),
            Text(
              'Start searching now 🔍',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(221, 63, 63, 63),
              ),
            )
          ],
        ),
      ),
    );
  }
}
