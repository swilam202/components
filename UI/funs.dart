import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:another_flushbar/flushbar.dart';
//import 'package:another_flushbar/flushbar_helper.dart';
//import 'package:another_flushbar/flushbar_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:marquee/marquee.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

// return Scaffold(
// body: Center(
// child: ElevatedButton(
// child: Text('press me!'),
// onPressed: () => alert(context, 'title', 'content')),
// ),
// );



// --1--
// for more featured appBarr like the height
// you copy this code to the BODY
Widget featuredAppBar() {
  return (CustomScrollView(
    slivers: [
      SliverAppBar(
        expandedHeight: 150,
        title: const Text(
          'flutter app',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.red,
                Colors.blue,
                Colors.yellow,
                Colors.teal
              ],
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Row(
            children: const [
              Icon(Icons.add),
              Icon(Icons.add),
            ],
          ),
        ),
        actions: const [
          Icon(Icons.add),
          Icon(Icons.add),
          Icon(Icons.add),
        ],
      ),
      SliverList(
        delegate: SliverChildListDelegate(
          //You code the body here\\
          [],
        ),
      ),
    ],
  ));
}

//--2--
// to use the alert dialog
void createAlertDialog(
    {required BuildContext context,
    required String title,
    required String content}) {
  showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.grey.withOpacity(0.8),
      builder: (ctx) {
        return (AlertDialog(
          backgroundColor: Colors.amberAccent,
          title: Row(
            children: [
              const Icon(Icons.warning),
              const SizedBox(
                width: 5,
              ),
              Text(title),
            ],
          ),
          content: SizedBox(
            height: 150,
            child: Column(
              children: [
                const Divider(
                  thickness: 7,
                ),
                Text(content),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: Navigator.of(context).pop,
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text('Ok!'),
                  ),
                )
              ],
            ),
          ),
        ));
      });
}

//--3--
// to use the snack bar
void createSnackBar({required BuildContext context, required String title}) {
  SnackBar snack = SnackBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      duration: const Duration(seconds: 5),
      content: Row(
        children: [
          const Icon(
            Icons.warning,
            color: Colors.red,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      backgroundColor: Colors.deepOrangeAccent,
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
        textColor: Colors.black,
      ));
  ScaffoldMessenger.of(context).showSnackBar(snack);
}

//--4--
// this column has new features to the texts like selecting and so on
Column newTextFeatures() {
  return (Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        height: 30,
        color: Colors.green,
        child: const Text(
          'alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only',
          overflow: TextOverflow.ellipsis,
        ),
      ),
      Container(
        height: 30,
        color: Colors.green,
        child: const Text(
          'alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only',
          overflow: TextOverflow.fade,
        ),
      ),
      Container(
        height: 30,
        color: Colors.green,
        child: const Text(
          'alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only',
          //softWrap: true,
        ),
      ),
      Container(
        height: 30,
        color: Colors.green,
        child: const Text(
          'alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only',
          overflow: TextOverflow.visible,
        ),
      ),
      const SelectableText(
        'alert this isa garbage text to test the cursor functions in the texts only alert this isa garbage text to test the cursor functions in the texts only alert this isa garbage text to test the cursor functions in the texts only',
        showCursor: true,
        cursorColor: Colors.black,
        cursorWidth: 3,
        cursorHeight: 4,
        toolbarOptions: ToolbarOptions(
          copy: true,
          cut: true,
          selectAll: true,
          paste: true,
        ),
      ),
    ],
  ));
}

//--9--
//to build the switch button
Switch createSwitch(bool swval) {
  return (Switch(
    value: swval,
    onChanged: (val) {},
  ));
}

//****************************************\\

class SetFuns extends StatefulWidget {
  @override
  State<SetFuns> createState() => _SetFunsState();
}

class _SetFunsState extends State<SetFuns> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  //--5--
//this column to create radio button
  Column createRadioButton() {
    //make the variable below global scope\\
    String result = '';
    int radioVal = 0;
    String changedVal = '';
    return (Column(
      children: [
        Row(
          children: [
            Radio(
              value: 3,
              groupValue: radioVal,
              onChanged: (val) => setState(() {
                changedVal = val.toString();
                radioVal = int.parse(changedVal);
              }),
            ),
            const Text('3'),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 4,
              groupValue: radioVal,
              onChanged: (val) => setState(() {
                changedVal = val.toString();
                radioVal = int.parse(changedVal);
              }),
            ),
            const Text('4'),
          ],
        ),
      ],
    ));
  }

  //--6--
  //this Widget to build Radio ListTile
  RadioListTile createRadioListTile(val, txt, subTxt) {
    //make the variable below global scope\\
    String result = '';
    int radioVal = 0;
    String changedVal = '';
    return (RadioListTile(
      value: val,
      groupValue: radioVal,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (val) => setState(() {
        changedVal = val.toString();
        radioVal = int.parse(changedVal);
      }),
      title: Text(
        txt,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      subtitle: Text(
        subTxt,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
    ));
  }

  //--7--
  //this widget to build check box
  //note that it doesn't work as function but it works otherwise
  Row createCheckBox(val, String title) {
    return (Row(
      children: [
        Checkbox(
            value: val,
            onChanged: (value) {
              setState(() {
                val = value;
              });
            }),
        Text(title),
      ],
    ));
  }

  //--8--
  //this widget to build check box ListTile
  //same as the above doesn't work as function but it works otherwise
  CheckboxListTile createCheckboxListTile(
      boolVal, String title, String subtitle) {
    return (CheckboxListTile(
      value: boolVal,
      onChanged: (valu) {
        setState(() {
          boolVal = valu;
        });
      },
      title: Text(title),
      controlAffinity: ListTileControlAffinity.leading,
      subtitle: Text(subtitle),
    ));
  }

  //--9--
  //to build the Drop Down Menu(Button)
  DropdownButton createDropdownButton(
      {required List item, required String dropVal, required String hintTxt}) {
    return (DropdownButton(
      //dropVal must have a value of the list or it will cause null error
      value: dropVal.toString(),
      hint: Text(hintTxt),
      items: item.map((e) {
        return (DropdownMenuItem(
          child: Text(e.toString()),
        ));
      }).toList(),
      onChanged: (val) => setState(() => dropVal = val.toString()),
    ));
  }

  //--10--
  //to build the Expansion Tile
  ExpansionTile createExpansionTile(IconData ico) {
    return (ExpansionTile(
      onExpansionChanged: (flag) => setState(() {
        ico = flag ? Icons.arrow_upward : Icons.arrow_downward;
      }),
      initiallyExpanded: false,
      tilePadding: const EdgeInsets.only(top: 15, left: 8, right: 8),
      iconColor: Colors.teal,
      textColor: Colors.teal,
      subtitle: const Text('to register into the app'),
      title: const Text('Registration'),
      leading: const Icon(Icons.app_registration),
      trailing: Icon(ico),
      children: [
        Card(
          color: Colors.lightBlueAccent,
          margin: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: const Icon(Icons.account_box),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            title: const Text('Sign Up'),
            subtitle: const Text('To sign up'),
            onTap: () {},
          ),
        ),
        Card(
          color: Colors.lightBlueAccent,
          margin: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: const Icon(Icons.login),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            title: const Text('Log In'),
            subtitle: const Text('To log in'),
            onTap: () {},
          ),
        ),
      ],
    ));
  }

  //--11--
  //to build the dismissible
  // ListView buildDismissible(
  //   List auto,
  // ) {
  //   return (ListView.builder(
  //       itemCount: auto.length,
  //       itemBuilder: (_, index) {
  //         final item = auto[index];
  //         return (Dismissible(
  //           key: UniqueKey(),
  //           child: ListTile(
  //             title: Center(
  //               child: Text(item),
  //             ),
  //           ),
  //           onDismissed: (DismissDirection dir) {
  //             setState(() => auto.removeAt(index));
  //             SnackBar s1 = SnackBar(
  //               content: Text('$item was removed'),
  //               action: SnackBarAction(
  //                 label: 'undo',
  //                 onPressed: () => setState(() => auto.insert(index, item)),
  //               ),
  //             );
  //             ScaffoldMessenger.of(context).showSnackBar(s1);
  //           },
  //           background: Container(
  //             color: Colors.red,
  //             alignment: Alignment.centerLeft,
  //             child: const Icon(Icons.thumb_down),
  //           ),
  //           secondaryBackground: Container(
  //             color: Colors.green,
  //             alignment: Alignment.centerRight,
  //             child: const Icon(Icons.thumb_up),
  //           ),
  //         ));
  //       }));
  // }

  //--12--
  //to build the toast

  //

  void createToast(String txt) {
    showToast(
      'This is normal toast with animation',
      context: context,
      animation: StyledToastAnimation.scale,
      reverseAnimation: StyledToastAnimation.fade,
      position: const StyledToastPosition(align: Alignment.bottomCenter, offset: 120),
      animDuration: const Duration(seconds: 1),
      duration: const Duration(seconds: 4),
      curve: Curves.elasticOut,
      reverseCurve: Curves.linear,
    );
  }

  //--13--
//build the dismissible
  Widget createDismissible(
    List li,
  ) {
    return (ListView.builder(
      itemCount: li.length,
      itemBuilder: (ctx, index) {
        final item = li[index];
        return (Dismissible(
            key: Key(li[index]),
            onDismissed: (DismissDirection dir) {
              setState(() {
                li.removeAt(index);
                SnackBar snack = SnackBar(
                  content: Text(dir == DismissDirection.startToEnd
                      ? '$item deleted'
                      : '$item added'),
                  action: SnackBarAction(
                    label: 'undo',
                    onPressed: () => setState(() => li.insert(index, item)),
                  ),
                );
                ScaffoldMessenger.of(ctx).showSnackBar(snack);
              });
            },
            background: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.red,
              alignment: Alignment.centerLeft,
              child: const Icon(Icons.delete),
            ),
            secondaryBackground: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.green,
              alignment: Alignment.centerRight,
              child: const Icon(Icons.add),
            ),
            child: ListTile(
              title: Center(child: Text(item.toString())),
            ),
            confirmDismiss: (DismissDirection dir) async {
              if (dir == DismissDirection.startToEnd) {
                final bool res = await showDialog(
                    context: ctx,
                    builder: (BuildContext context) {
                      return (const AlertDialog(
                        content: Text('deleted'),
                      ));
                    });
                return res;
              } else {
                final bool res = await showDialog(
                    context: ctx,
                    builder: (BuildContext context) {
                      return (const AlertDialog(
                        content: Text('added'),
                      ));
                    });
                return res;
              }
            }));
      },
    ));
  }

  //--20--
//to use camera or gallery
//note to call the get function by FAB or button
//don't forget to import dart:io library
  takePhoto() {
    ImagePicker picker = ImagePicker();
    File? ima;
    getIamage() async {
      XFile? image = await picker.pickImage(source: ImageSource.camera);
      setState(() => ima = image as File?);
    }

    return Container(
      child: ima == null ? null : Image.file(ima!),
    );
  }
}

//--14--
//to build the wheel
Widget createWheel(List li) {
  return (ListWheelScrollView(
      itemExtent: 100,
      children: li.map((e) {
        return (Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              e.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
        ));
      }).toList()));
}

//--15--
//to build the interactive viewer(play with image scale)
InteractiveViewer createInteractiveViewer() {
  return (InteractiveViewer(
    boundaryMargin: const EdgeInsets.all(50),
    panEnabled: true,
    constrained: true,
    scaleEnabled: true,
    maxScale: 3,
    minScale: 0.5,
    child: Image.asset('image/good.jpeg'),
  ));
}

//--16--
//build the flush bar
createFlushBar(BuildContext context, String title, String message) {
  return (Flushbar(
    icon: const Icon(Icons.warning),
    shouldIconPulse: false,
    mainButton: const Icon(Icons.close),
    onTap: (ctx) => Navigator.of(context).pop(),
    duration: const Duration(seconds: 3),
    borderRadius: BorderRadius.circular(10),
    borderColor: Colors.teal,
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    title: title,
    //titleText: Text(title),
    titleColor: Colors.red,
    titleSize: 20,
    message: 'message',
    //messageText: Text(message),
    messageColor: Colors.green,
    messageSize: 20,
    backgroundColor: Colors.yellowAccent,
  ).show(context));
}

//--17--
// create image slider builder
CarouselSlider createCarouselSlider(List images) {
  return (CarouselSlider.builder(
    itemCount: images.length,
    itemBuilder: (context, int index, int realIndex) {
      return Container(
        child: Image.asset(images[index].toString()),
      );
    },
    options: CarouselOptions(
        height: 200,
        initialPage: 0,
        //if you want tp play pictures reversal mode
        //reverse: true
        autoPlay: true,
        autoPlayInterval: const Duration(microseconds: 500),
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
        pauseAutoPlayOnTouch: true,
        scrollDirection: Axis.horizontal),
  ));
}

//--18--
// create image slider
CarouselSlider createCarouselSliderBuilder(List images) {
  return (CarouselSlider(
    items: images.map((e) {
      return Container(
        child: Image.asset(e.toString()),
      );
    }).toList(),
    options: CarouselOptions(
        onPageChanged: null,
        height: 200,
        initialPage: 0,
        //if you want tp play pictures reversal mode
        //reverse: true
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 1),
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
        pauseAutoPlayOnTouch: true,
        scrollDirection: Axis.vertical),
  ));
}

//--19--
//create the marquee
Marquee createMarquee(String txt) {
  return Marquee(
    text: txt,
    textScaleFactor: 2,
    blankSpace: 200,
    scrollAxis: Axis.horizontal,
    textDirection: TextDirection.rtl,
    crossAxisAlignment: CrossAxisAlignment.start,
    velocity: 100,
    fadingEdgeEndFraction: 0.9,
    startAfter: const Duration(seconds: 1),
    pauseAfterRound: const Duration(seconds: 5),
    numberOfRounds: 3,
  );
}

//--21--
//Colors App
class ColorApp extends StatefulWidget {
  const ColorApp({Key? key}) : super(key: key);

  @override
  State<ColorApp> createState() => _ColorAppState();
}

class _ColorAppState extends State<ColorApp> {
  Color chosenColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: chosenColor,
            title: Text(
              'Colors',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: useWhiteForeground(chosenColor)
                      ? Colors.white
                      : Colors.black),
            ),
            centerTitle: true,
            bottom: TabBar(
              labelColor:
                  useWhiteForeground(chosenColor) ? Colors.white : Colors.black,
              tabs: const [
                Tab(text: 'Block Picker'),
                Tab(text: 'Slider Picker'),
                Tab(text: 'Material Picker'),
                Tab(text: 'Color Picker'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              BlockPicker(
                pickerColor: chosenColor,
                onColorChanged: (color) => setState(() => chosenColor = color),
              ),
              SlidePicker(
                pickerColor: chosenColor,
                onColorChanged: (color) => setState(() => chosenColor = color),
                enableAlpha: true,
                showSliderText: true,
                showParams: true,
                showLabel: true,
                showIndicator: true,
                displayThumbColor: true,
              ),
              MaterialPicker(
                pickerColor: chosenColor,
                onColorChanged: (color) => setState(() => chosenColor = color),
                enableLabel: true,
                portraitOnly: true,
              ),
              ColorPicker(
                pickerColor: chosenColor,
                onColorChanged: (color) => setState(() => chosenColor = color),
                enableAlpha: true,
                showLabel: true,
                displayThumbColor: false,
                portraitOnly: true,
                hexInputBar: true,
              ),
            ],
          )),
    );
  }
}

//--22--
//percent indecator(linear,circular)
Column createPercentIndicator() {
  return Column(
    children: [
      CircularPercentIndicator(
        radius: 100,
        lineWidth: 10,
        percent: 0.417,
        backgroundColor: Colors.grey,
        progressColor: Colors.green,
        animation: true,
        animationDuration: 2000,
        center: Icon(Icons.add),
        header: Text('hi'),
        footer: Text('do'),
      ),
      LinearPercentIndicator(
        lineHeight: 25,
        width: 100,
        percent: 0.417,
        backgroundColor: Colors.grey,
        progressColor: Colors.green,
        animation: true,
        animationDuration: 2000,
        center: Icon(Icons.add),
        leading: Text('hi'),
        trailing: Text('do'),
      )
    ],
  );
}

//--23--
//loading Screen
EasySplashScreen createEasySplashScreen() {
  return EasySplashScreen(
    logo: Image.asset('image/ima.jpeg'),
    logoWidth: 100,
    loaderColor: Colors.red,
    loadingText: const Text('Loading...'),
    title: const Text('Please wait'),
    durationInSeconds: 5,
    backgroundColor: Colors.grey,
    // navigator: App(),
  );
}

//--24--
// log in page
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

enum auth { login, signup }

class _MyappState extends State<Myapp> {
  GlobalKey<FormState> formKey = GlobalKey();
  Map data = {'email': '', 'password': ''};

  auth mode = auth.login;
  var passwordControl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Colors',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'enter email address', labelText: 'E-mail'),
                      validator: (valu) {
                        if (valu!.isEmpty == true || !valu.contains('@'))
                          return 'Invalid Email';
                        else
                          return null;
                      },
                      onSaved: (val) {
                        data['email'] = val!;
                        print(data['email']);
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'enter Password', labelText: 'Password'),
                      validator: (valu) {
                        if (valu!.isEmpty == true || valu.length < 6)
                          return 'Invalid Password';
                        else
                          return null;
                      },
                      controller: passwordControl,
                      onSaved: (val) {
                        data['password'] = val!;
                        print(data['password']);
                      },
                    ),
                    if (mode == auth.signup)
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Re Enter Password',
                            labelText: 'Password Confirm'),
                        validator: (valu) {
                          if (valu != passwordControl!.text)
                            return "Password Doesn't Match";
                          else
                            return null;
                        },
                        onSaved: (val) {
                          data['password'] = val!;
                          print(data['password']);
                        },
                      ),
                    ElevatedButton(
                      onPressed: () {
                        if (!formKey.currentState!.validate()) return null;
                        formKey.currentState!.save();
                      },
                      child: Text(mode == auth.login ? 'Log In' : 'Sign UP'),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (mode == auth.login)
                            mode = auth.signup;
                          else
                            mode = auth.login;
                        });
                      },
                      child: Text(
                          'Switch to ${mode == auth.login ? 'Sign UP' : 'Log In'}'),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}



// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   PageController pageControl = PageController();
//
//   int current = 0;
//
//   @override
//   void initState() {
//     Timer.periodic(const Duration(seconds: 3), (_) {
//       if (current < 3) current++;
//       pageControl.animateToPage(current,
//           duration: const Duration(microseconds: 500), curve: Curves.easeIn);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           PageView(
//             controller: pageControl,
//             onPageChanged: (val) {
//               setState(() => current = val);
//               if (val == 3) {
//                 Future.delayed(const Duration(seconds: 3),
//                     () => Navigator.pushReplacementNamed(context, 'home'));
//               }
//             },
//             children: li.map((e) {
//               return Container(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: ExactAssetImage(e.imageLink),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       e.icon,
//                       size: 100,
//                       color: Colors.white,
//                     ),
//                     const SizedBox(
//                       height: 50,
//                     ),
//                     Text(
//                       e.title,
//                       style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 40,
//                           color: Colors.white),
//                     ),
//                     Text(
//                       e.description,
//                       style: const TextStyle(fontSize: 20, color: Colors.white),
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//               );
//             }).toList(),
//           ),
//           Align(
//             alignment: const Alignment(0, 0.7),
//             child: indicate(current),
//           ),
//           Align(
//             alignment: const Alignment(0, 0.90),
//             child: FlatButton(
//               onPressed: () =>
//                   Navigator.of(context).pushReplacementNamed('home'),
//               color: Colors.orange,
//               child: const Text('Skip all'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
// Widget indicate(int c) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Container(
//         width: 12,
//         height: 12,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: c == 0 ? Colors.green : Colors.grey,
//         ),
//       ),
//       Container(
//         width: 12,
//         height: 12,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: c == 1 ? Colors.green : Colors.grey,
//         ),
//       ),
//       Container(
//         width: 12,
//         height: 12,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: c == 2 ? Colors.green : Colors.grey,
//         ),
//       ),
//       Container(
//         width: 12,
//         height: 12,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: c == 3 ? Colors.green : Colors.grey,
//         ),
//       ),
//     ],
//   );
// }
//
// class Data {
//   String title;
//   String description;
//   IconData icon;
//   String imageLink;
//
//   Data({
//     required this.title,
//     required this.description,
//     required this.icon,
//     required this.imageLink,
//   });
// }

// List li = [
//   'vd,.l.c',
//   'wdljlwdkwkd',
//   'wflnwldm.',
//   'sdjm,mddkwk',
// ];
//
// show(context) {
//   showBottomSheet(
//       context: context,
//       builder: (_) {
//         return ListView.builder(
//             itemCount: li.length,
//             itemBuilder: (_, index) {
//               return Container(
//                 child: Column(
//                   children: [
//                     Text(li[index]),
//                   ],
//                 ),
//               );
//             });
//       });
// }
//
// class HomePage extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: null,
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: ()=>show(context),
//       ),
//     );
//   }
// }
