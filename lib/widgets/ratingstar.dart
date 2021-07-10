part of 'widget.dart';

class RatingStars extends StatelessWidget {
  final double rate;
  RatingStars({this.rate});

  @override
  Widget build(BuildContext context) {
    int numberofStars = rate.round();

    return Row(
      children: List<Widget>.generate(
            5,
            (index) => Icon(
                (index < numberofStars) ? MdiIcons.star : MdiIcons.starOutline,
                size: 20,
                color: Colors.yellow),
          ) +
          [
            SizedBox(
              width: 4,
            ),
            Text(
              rate.toString(),
              style: TextStyle(fontSize: 12),
            )
          ],
    );
  }
}
