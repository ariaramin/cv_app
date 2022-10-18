import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _getApplication();
  }

  Widget _getApplication() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.blue[700],
      title: Text("آریا رامین"),
      centerTitle: true,
    );
  }

  Widget _getBody() {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            _getContent(),
          ],
        ),
      ),
    );
  }

  Widget _getContent() {
    return Column(
      children: [
        SizedBox(
          height: 28,
        ),
        CircleAvatar(
          backgroundImage: AssetImage("images/profile.jpg"),
          radius: 62,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "آریام یه برنامه نویس موبایل",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          "عاشق کامپیوتر و موبایل و هر چیزی که به تکنولوژی مربوطه",
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 12,
        ),
        _getRowIcons(),
        SizedBox(
          height: 12,
        ),
        _getSkillLabels(),
        SizedBox(
          height: 22,
        ),
        _getResume(),
      ],
    );
  }

  Widget _getResume() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      width: double.infinity,
      color: Colors.grey[200],
      child: Column(
        children: [
          Text(
            "سابقه کاری من",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          _getHistory(),
        ],
      ),
    );
  }

  Widget _getHistory() {
    var resumeList = [
      "💻 از سال ۹۸ برنامه نویسی رو از حوزه وب شروع کردم",
      "📱 از سال ۱۴۰۰ به حوزه اندروید و موبایل علاقه‌مند شدم",
      "👨‍💻 یکسال در حوزه اندروید فعالیت کردم و بعد از اون به فلاتر علاقه‌مند شدم",
      "📚 درحال حاضر هم مشغول یادگیری فلاتر هستم",
      "🔥 این داستان ادامه دارد..."
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          for (var resume in resumeList)
            Text(
              "$resume",
              textDirection: TextDirection.rtl,
            ),
        ],
      ),
    );
  }

  Widget _getRowIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedinIn),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagram),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.twitter),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.github),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
        ),
      ],
    );
  }

  Widget _getSkillLabels() {
    var skillList = ['java', 'kotlin', 'android', 'dart', 'flutter'];
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (var skill in skillList)
          Card(
            elevation: 6,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
              child: Column(
                children: [
                  Container(
                    width: 48.0,
                    height: 48.0,
                    child: Image(
                      image: AssetImage("images/$skill.png"),
                    ),
                  ),
                  Text(_getSkillName(skill)),
                ],
              ),
            ),
          ),
      ],
    );
  }

  String _getSkillName(String skill) {
    switch (skill) {
      case 'java':
        return "جاوا";
        break;

      case 'kotlin':
        return "کاتلین";
        break;

      case 'android':
        return "اندروید";
        break;

      case 'dart':
        return "دارت";
        break;

      default:
        return "فلاتر";
        break;
    }
  }
}
