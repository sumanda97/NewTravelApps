part of 'auth.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultMargin + 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: blackFontStyle3.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 80),
                  ),
                  Row(
                    children: [
                      Text(
                        "There",
                        style: blackFontStyle3.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 80),
                      ),
                      Text(
                        ".",
                        style: blackFontStyle3.copyWith(
                            color: redColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 80),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin + 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: greyFontStyle.copyWith(color: blackColor),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: redColor))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin + 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: greyFontStyle.copyWith(color: blackColor),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      child: Icon(
                        showPassword ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: redColor))),
                obscureText: showPassword,
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment(1.0, 0.0),
              padding: EdgeInsets.symmetric(horizontal: 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Forgot Password?",
                      style: blackFontStyle3.copyWith(
                          color: redColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
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
                    Text("Create New Account",
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
