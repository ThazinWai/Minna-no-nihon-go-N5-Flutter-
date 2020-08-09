import 'package:flutter/material.dart';
import 'category.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'わたし  (watashi)                                                              ကၽြန္ေတာ္၊ ကၽြန္မ',
    'わたしたち  (watashi tachi)                            ကၽြန္ေတာ္တို႔၊ ကၽြန္မတို႔ ',
    'あなた (anata)	                                                 ခင္ဗ်ား၊ မင္း၊ နင္',
    'あの人（ひと） (ano hito)	                                     ဟိုလူ (ရိုးရိုးအသံုး)',
    'あの方（かた） (ano kata)	                                     ဟိုလူ (ယဥ္ေက်းေသာအသံုး)',
    '皆（みな）さん (minasan)	                                   အားလံုး',
    '～さん (~san)                                                     	ကို--၊ မ--',
    '～ちゃん (~chan)မ--(၁၀ႏွစ္ေအာက္ မိန္းခေလးငယ္မ်ားကို ေခၚေသာအခါတြင္သံုးသည္)',
    '～くん (~kun)ကို--( ၁၀ႏွစ္ေအာက္ ေယာက္က်ားခေလးငယ္မ်ားကို ေခၚေသာအခါတြင္သံုးသည္)',
    '～じん (~jin)	--လူမ်ိဳး',
    '先生（せんせい） (sensei)	                       ဆရာ၊ ဆရာမ (ရိုးရိုးအသံုး)',
    '教師 （きょうし） (kyoushi)	                       ဆရာ၊ ဆရာမ(ယဥ္ေက်းေသာအသံုး)',
    '学生（がくせい） (gakusei)	ေက်ာင္းသား၊ ေက်ာင္းသူ',
    '会社員（かいしゃいん） (kaishain)	ကုမၸဏီ၀န္ထမ္း',
    '社員（しゃいん） (shain)	၀န္ထမ္း',
    '銀行員（ぎんこういん） (ginkouin)	ဘဏ္၀န္ထမ္း',
    '医者（いしゃ） ( isha)	ဆရာ၀န္',
    '研究者（けんきゅうしゃ） (kenkyuusha)	သုေသသနျပဳသူ',
    'エンジニア（えんじにあ） (enjinnia)	အင္ဂ်င္နီယာ',
    '大学（だいがく） (daigaku)	တကၠသိုလ္',
    '病院（びょういん） (byouin)	ေဆးရံု',
    '電気（でんき） (denki)	လွ်ပ္စစ္၊ မီး',
    'だれ (dare)	ဘယ္သူ(ရိုးရိုးအသံုး)',
    'どなた (donata)	ဘယ္သူ(ယဥ္ေက်းေသာအသံုး)',
    '～歳（さい） (~sai)	--ႏွစ္(အသက္)',
    '何歳（なんさい） (nansai)	အသက္ဘယ္ႏွစ္နစ္လဲ (ရိုးရိုးအသံုး)',
    'おいくつ (oikutsu)	အသက္ဘယ္ႏွစ္နစ္လဲ (ယဥ္ေက်းေသာအသံုး)',
    '．．．はい (…hai)	ဟုတ္ကဲ့',
    '．．．いいえ (…iie)	ဟင့္အင္း',
    '失礼（しつれい）ですが、お名前（なまえ）は (shitsureidesuga, onamaewa)	စိတ္မရွိပါနဲ႔၊ နာမည္ဘယ္လိုေခၚပါသလဲ။',
    '初（はじ）めまして、 (hajimemashite)	ေတြ႕ရတာ၀မ္းသာပါတယ္',
    'どうぞ、よろしくお願（ねが）いします (douzo,yoroshiku onegaishimasu)	မိတ္ေဆြအျဖစ္ ခင္ခင္မင္မင္ဆက္ဆံပါ',
    'こちらは、～さんです (kochirawa, ~sandesu)	သူက ကို--၊မ--ျဖစ္ပါတယ္။',
    '～から来（き）ました (~kara kimashita)	--ကေနလာပါတယ္။',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
    Colors.teal,
    Colors.teal,

  ];

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) => categories[index],
        separatorBuilder:  (context, index) {
          return Divider();},
        itemCount: categories.length,);

      ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconLocation: Icons.cake,
      ));
    }

    final listView = Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFff94a9), Color(0xFF2B2C4E)])),
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidgets(categories),
    );



//    final body =new Container(
//      decoration: BoxDecoration(
//          gradient: LinearGradient(
//              begin: Alignment.topLeft,
//              end: Alignment.bottomRight,
//              colors: [Color(0xFFC9D9FF), Color(0xFFF89B9E)])),
//
//
//        child: new Center(
//          child: ListView(
//            //color: _backgroundColor,
//            padding: EdgeInsets.symmetric(horizontal: 8.0),
//            shrinkWrap: true,
//            children: <Widget>[
//              _buildCategoryWidgets(categories)],
//          )
//        )
//    );



    return new Scaffold(
      appBar: GradientAppBar(
        title: Text('N5 Vocabulary'),
        backgroundColorStart: Color(0xFFff94a9),
        backgroundColorEnd: Color(0xFF2B2C4E),
    leading: Builder(
    builder: (BuildContext context) {
    return IconButton(
    icon: const Icon(Icons.chevron_left),
    //iconSize: (0.06 * ratio) * width,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    onPressed: () => Navigator.of(context).pop(),
    );
    },
    ),
    ),
        body: listView);
  }
}