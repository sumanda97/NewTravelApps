part of "widget.dart";

class CostumCategoriesTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;

  CostumCategoriesTabBar(
      {@required this.titles, this.selectedIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 48),
            height: 1,
            color: Color(0xFFEDEDED),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: titles
                  .map((e) => Padding(
                        padding: EdgeInsets.only(left: defaultMargin),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (onTap != null) {
                                  onTap(titles.indexOf(e));
                                }
                              },
                              child: Text(
                                e,
                                style: (titles.indexOf(e) == selectedIndex)
                                    ? blackFontStyle3.copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: redColor)
                                    : blackFontStyle3.copyWith(
                                        color: Color(0xFF8a8a8a)),
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 3,
                              margin: EdgeInsets.only(top: 13),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1.5),
                                  color: (titles.indexOf(e) == selectedIndex)
                                      ? redColor
                                      : Colors.transparent),
                            )
                          ],
                        ),
                      ))
                  .toList())
        ],
      ),
    );
  }
}
