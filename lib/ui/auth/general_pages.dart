part of 'auth.dart';

class GeneralScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 200),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome To.",
                    style: blackFontStyle3.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 28),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Manda Travel",
                    style: blackFontStyle3.copyWith(
                        color: redColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 28),
                  ),
                ],
              ),
            ),
            Text(
              "We Take Care of Your Trip",
              style: blackFontStyle3.copyWith(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 351,
              width: 375,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Logo.png"), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin + 50),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: redColor,
                ),
                child: Center(
                    child: Text("Sign In",
                        style: blackFontStyle3.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin + 50),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border: Border.all(color: redColor)),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(
                      AssetImage("assets/google-plus.png"),
                      color: redColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Sign In with Google",
                        style: blackFontStyle3.copyWith(
                            color: redColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
