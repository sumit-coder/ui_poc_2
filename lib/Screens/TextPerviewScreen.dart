import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Models/languageDataModel.dart';
import '../data.dart';
import '../ui_constants.dart';

class TextPreviewScreen extends StatefulWidget {
  const TextPreviewScreen({Key? key}) : super(key: key);

  @override
  State<TextPreviewScreen> createState() => _TextPreviewScreenState();
}

class _TextPreviewScreenState extends State<TextPreviewScreen> {
  int selectedIndex = 0;

  List<String> appBarTitle = [
    'Latin',
    'Kohinoor',
    'Gujarati',
    'Telugu',
    'Bangla',
  ];

  bool otherfontFamily = false;
  bool otherGridLines = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4,
        onPressed: () {
          setState(() {
            otherGridLines = otherGridLines == true ? false : true;
          });
        },
        label: Text(
          otherGridLines == true ? 'Enabled' : 'Enable',
          style: TextStyle(
            fontSize: 14,
            height: 0.7, // fontsize / lineheight
            letterSpacing: 0.1,
            color: tertiaryColor,
          ),
        ),
        icon: Icon(
          Icons.edit_rounded,
          color: tertiaryColor,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        selectedIndex: selectedIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'English ',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Hindi',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Gujarati',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Telugu',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Bangla',
          ),
        ],
      ),
      appBar: AppBar(
        toolbarHeight: 64,
        backgroundColor: const Color(0xffFFFBFE),
        actions: [
          // Switch(
          //   value: otherfontFamily,
          //   onChanged: (value) {
          //     setState(() {
          //       otherfontFamily = value;
          //       // isSwitched = value;
          //       // print(isSwitched);
          //     });
          //   },
          //   activeTrackColor: Colors.lightGreenAccent,
          //   activeColor: Colors.green,
          // ),
        ],
        title: Center(
          child: Text(
            appBarTitle[selectedIndex],
            style: const TextStyle(
              fontSize: 21,
              height: 0.56, // 1 == 50px
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            otherGridLines == true
                ? Column(
                    children: retrunGridLines(MediaQuery.of(context).size.height - 168),
                  )
                : Container(),
            Container(
              padding: EdgeInsets.all(10),
              child: ListView(
                children: [
                  ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: listOfFontScaleData.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(top: 4),
                        // color: Colors.red,
                        margin: EdgeInsets.only(bottom: 58),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              listOfFontScaleData[index].headingText,
                              style: const TextStyle(
                                fontSize: 12,
                                height: 1.33,
                              ),
                            ),
                            const SizedBox(height: 8),
                            listOfFontScaleData.length - 4 >= index
                                ? Stack(
                                    children: [
                                      Container(
                                        height: 1,
                                        margin: EdgeInsets.only(
                                          top: listOfFontScaleData[index].fontSize,
                                        ),
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        languagesData[selectedIndex].smallTestTexts,
                                        style: TextStyle(
                                          backgroundColor: otherGridLines == true
                                              ? Color.fromARGB(75, 39, 154, 248)
                                              : Color.fromARGB(0, 255, 255, 255),
                                          fontSize: listOfFontScaleData[index].fontSize,
                                          height: listOfFontScaleData[index].lineHeight,
                                          letterSpacing: listOfFontScaleData[index].letterSpacing,
                                          // fontWeight: FontWeight.w400,
                                          fontFamily: getFontFamily(
                                            languageIndex: selectedIndex,
                                            otherFontsFamilys: otherfontFamily,
                                          ),
                                          // fontFamily: 'KohinoorGujarati',
                                          // height: 0.56,
                                        ),
                                      ),
                                    ],
                                  )
                                : Stack(
                                    children: [
                                      Container(
                                        height: 1,
                                        margin: EdgeInsets.only(
                                            top: listOfFontScaleData[index].fontSize),
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        languagesData[selectedIndex].bodyTestTexts,
                                        style: TextStyle(
                                          backgroundColor: otherGridLines == true
                                              ? Color.fromARGB(75, 39, 154, 248)
                                              : Color.fromARGB(0, 255, 255, 255),
                                          fontSize: listOfFontScaleData[index].fontSize,
                                          height: listOfFontScaleData[index].lineHeight,
                                          letterSpacing: listOfFontScaleData[index].letterSpacing,
                                          fontFamily: getFontFamily(
                                              languageIndex: selectedIndex,
                                              otherFontsFamilys: otherfontFamily),
                                          // height: 0.56,
                                        ),
                                      ),
                                    ],
                                  ),
                            if ((1 + index) % 3 == 0) Divider(thickness: 2),
                          ],
                        ),
                      );
                    },
                  ),
                  OtherDesignWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OtherDesignWidget extends StatelessWidget {
  const OtherDesignWidget({Key? key}) : super(key: key);

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          alignment: Alignment.center,
          content: Container(
            height: 200,
            child: Column(
              children: [
                Icon(
                  Icons.help_rounded,
                  size: 30,
                ),
                SizedBox(height: 20),
                Text(
                  'Dialog with hero icon',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Action 2'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Action 1'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // onTapFunctin();
              _showMyDialog(context);
            },
            child: Text(
              'Show Alert ',
              style: TextStyle(
                fontSize: 14,
                height: 0.4,
                letterSpacing: 0.1,
                color: Color(0xFF49454F),
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TextTitleAndBodyViewContainer extends StatelessWidget {
  const TextTitleAndBodyViewContainer({
    Key? key,
    required this.titleText,
    required this.bodyTextStyle,
    this.bodyText,
  }) : super(key: key);

  final String titleText;
  final String? bodyText;
  final TextStyle? bodyTextStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      // color: Colors.red,
      margin: EdgeInsets.only(bottom: 58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleText,
            style: const TextStyle(
              fontSize: 12,
              height: 0.56, // 1 == 50px
            ),
          ),
          const SizedBox(height: 10),
          bodyText == null
              ? Text(
                  'Quick brown fox jumps over a lazy dog',
                  style: bodyTextStyle,
                )
              : Text(
                  bodyText!,
                  style: bodyTextStyle,
                ),
        ],
      ),
    );
  }
}
