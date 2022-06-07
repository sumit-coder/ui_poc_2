import 'package:flutter/material.dart';

import 'Models/languageDataModel.dart';
import 'Models/textDesignItemModel.dart';
import 'ui_constants.dart';

List<LanguageData> languagesData = [
  LanguageData(
    langName: 'Latin',
    smallTestTexts: 'Quick brown fox jumps over a lazy dog',
    bodyTestTexts:
        'Mattis pellentesque id nibh tortor id aliquet lectus proin. Eu augue ut lectus arcu. Erat nam at lectus urna. Parturient montes nascetur ridiculus mus mauris vitae ultricies. Morbi tristique senectus et netus. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Posuere urna nec tincidunt praesent semper. Ridiculus mus mauris vitae ultricies leo integer. Venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Ullamcorper eget nulla facilisi etiam dignissim diam quis. Id eu nisl nunc mi ipsum faucibus vitae.',
  ),
  LanguageData(
    langName: 'Devnagari',
    smallTestTexts: 'अंतरिक्ष यान से दूर नीचे पृथ्वी शानदार ढंग से जगमगा रही',
    bodyTestTexts:
        'किसी दूरवर्ती पिंड की झलक में किसी पवित्र संगीत की झंकार या किसी बेहतरीन चित्र या किसी महान कवि के वाक्यों के समान हमारे विचारों को उन्नत बनाने और परिष्कृत करने की शक्ति होती है । इससे हमेशा कुछ उचित होता है । किसी दूरवर्ती पिंड की झलक में किसी पवित्र संगीत की झंकार या किसी बेहतरीन चित्र या किसी महान कवि के वाक्यों के समान हमारे विचारों को उन्नत बनाने और परिष्कृत करने की शक्ति होती है । इससे हमेशा कुछ उचित होता है । किसी दूरवर्ती पिंड की झलक में किसी पवित्र संगीत की झंकार या किसी बेहतरीन चित्र या किसी महान कवि के वाक्यों के समान हमारे विचारों को उन्नत बनाने और परिष्कृत करने की शक्ति होती है । इससे हमेशा कुछ उचित ...',
  ),
  LanguageData(
    langName: 'Gujarati',
    smallTestTexts: 'રાજા વિક્રમના શૌર્ય અને પરાક્રમની ગાથાઓ...',
    bodyTestTexts:
        'એક તાંત્રિક બત્રીસ લક્ષણો સાથે સ્વસ્થ બ્રાહ્મણ પુત્રનો બલિદાન આપવાની તાંત્રિક વિધિ કરે છે. જેથી તેની આસુરી શક્તિઓ વધુ વધે. એટલે તેને મારવા માટે તે બ્રાહ્મણ પુત્રની પાછળ પડે છે. પરંતુ તે બ્રાહ્મણ પુત્ર ભાગી જાય છે અને જંગલમાં જાય છે અને ત્યાં તેને એક ભૂત મળે છે, જે બ્રાહ્મણ પુત્રને તે તાંત્રિકથી બચવાની શક્તિ આપે છે અને તેને ભૂતના રૂપમાં ઝાડ પર ઊંધો લટકાવવાનું કહે છે. અને એ પણ કહે છે કે જ્યાં સુધી તે ઝાડ પર રહેશે ત્યાં સુધી તાંત્રિક તેને મારી શકશે નહીં । એ જ બ્રાહ્મણ પુત્ર "બેતાલ" છે । કપટી તાંત્રિક ભિખારી યોગી તરીકે માસ્કરેડ કરે છે. અને રાજા વિક્રમના શૌર્ય અને પરાક્રમની ગાથાઓ સાંભળીને તે પોતાનું કામ કરાવવા માટે જાળ ગોઠવે છે. ',
  ),
  LanguageData(
    langName: 'Telugu',
    smallTestTexts: 'ప్రతి సంవత్సరం ఊళ్ళో వారంతా పండగ...',
    bodyTestTexts:
        'ఒక ఊరి లో ప్రతి సంవత్సరం దేవుడిని ఊరేగింపు తీసుకెళ్లే సాంప్రదాయం ఉండేది. ప్రతి సంవత్సరం ఊళ్ళో వారంతా పండగ చేసుకుని, పూజలు చేసి, ఊరేగింపు కోసం అన్ని వీధులు శుభ్రం చేసి, మూగ్గులతో, తోరణాలతో, పువ్వులతో, చాలా అందంగా అలంకరించేవారు. ఊరేగింపుకు ఒక ఎద్దు బండి కట్టేవారు. ఆ బండిని కడిగి, పసుపు రాసి, బొట్లు పెట్టి, పూలు కట్టి దాన్ని కూడా అందంగా అలంకరించేవారు. మరి ఆ బండిని తోలే ఎద్దు సంగతి చెప్పాలా? ఊళ్ళో అన్నిటికన్నా ఆరోగ్య వంతంగా, బలంగా ఉన్న ఎద్దును ఎంచుకునేవారు. ఆ ఎద్దు చర్మం నిగనిగలాడేలా దానికి స్నానం చేయించి, బొట్లు పెట్టి ...',
  ),
  LanguageData(
    langName: 'Bangla',
    smallTestTexts: 'গাধাকে দেখে হেসে গড়িয়ে পড়ল খরগোশ... ',
    bodyTestTexts:
        'এক ছিল অহংকারী খরগোশ। দেখতে বেশ নাদুস-নুদুস। কচি কচি মুলো খেত। বনবাদাড়ে ঘুরে বেড়াত। আর ধেইধেই করে নেচে নেচে গান গাইত। লাফিয়ে লাফিয়ে খুব বেগে ছুটতে পারত সে। তাই তার মনে ভারি অহংকার। অন্য খরগোশদের সে গণায় ধরত না। যাকে-তাকে সে শুধুশুধু খোচা দিত। ঘোড়াকে গিয়ে বলত, কী তোমার ঠ্যাঙের ছিরি! দাঁড়িয়ে ঘুমাতে হয়। গাধাকে দেখে হেসে গড়িয়ে পড়ল খরগোশ, ‘গাধারে গাধা । তুই এখনো হাঁদাই রয়ে গেলি। লম্বা গলা জিরাফকে দেখেও হাসি থামত না খরগোশের। হাতি তোর গোদা পায়ে লাথি’, এই বলে সে হাতি বেচারাকে খেপাত। গরু, ভেড়া, শজারু, বানর সবাই খরগোশের কথা শুনেছে। কাউকে খরগোশ পাত্তাই দিত না। সুযোগ ...',
  ),
];

List<TextDesignItemModel> listOfFontScaleData = [
  // Display Start
  TextDesignItemModel(
    headingText: 'Display Large — 57/68 -1.25',
    bodyText: 'Quick brown fox jumps over a lazy dog',
    fontSize: 57,
    lineHeight: 68 / 57,
    letterSpacing: -1.25,
  ),
  TextDesignItemModel(
    headingText: 'Display Medium — 45/56  -1  0',
    bodyText: 'Quick brown fox jumps over a lazy dog',
    fontSize: 45,
    lineHeight: 56 / 45,
    letterSpacing: -1,
  ),
  TextDesignItemModel(
    headingText: 'Display Small — 36/44  -0.75  0',
    bodyText: 'Quick brown fox jumps over a lazy dog',
    fontSize: 36,
    lineHeight: 44 / 36,
    letterSpacing: -0.75,
  ),
  // Headline Start

  //
  TextDesignItemModel(
    headingText: 'Headline Large — 32/40  -0.5  0',
    bodyText: 'Quick brown fox jumps over a lazy dog',
    fontSize: 32,
    lineHeight: 40 / 32,
    letterSpacing: -0.5,
  ),
  TextDesignItemModel(
    headingText: 'Headline Medium — 28/36  -0.5  0',
    bodyText: 'Quick brown fox jumps over a lazy dog',
    fontSize: 28,
    lineHeight: 36 / 28,
    letterSpacing: -0.5,
  ),
  TextDesignItemModel(
    headingText: 'Headline Small — 24/32  -0.25  0',
    bodyText: 'Quick brown fox jumps over a lazy dog',
    fontSize: 24,
    lineHeight: 32 / 24,
    letterSpacing: -0.25,
  ),
  // Title Start
  TextDesignItemModel(
    headingText: 'Title Large — 22/28  0  0',
    bodyText: 'Quick brown fox jumps over a lazy dog',
    fontSize: 22,
    lineHeight: 28 / 22,
    letterSpacing: 0,
  ),
  TextDesignItemModel(
    headingText: 'Title Medium — 16/24  +0.15  0',
    bodyText: 'Quick brown fox jumps over a lazy dog',
    fontSize: 16,
    lineHeight: 24 / 16,
    letterSpacing: 0.15,
  ),
  TextDesignItemModel(
    headingText: 'Title Small — 11/16  +0.1  0',
    bodyText: 'Quick brown fox jumps over a lazy dog',
    fontSize: 11,
    lineHeight: 16 / 11,
    letterSpacing: 0.1,
  ),
  // Headline Start
  TextDesignItemModel(
    headingText: 'Lable Large — 14/20  +0.1  0',
    bodyText: 'Quick brown fox jumps over a lazy dog',
    fontSize: 14,
    lineHeight: 20 / 14,
    letterSpacing: 0.1,
  ),
  TextDesignItemModel(
    headingText: 'Lable Medium — 12/16  +0.5  0',
    bodyText: 'Quick brown fox jumps over a lazy dog',
    fontSize: 12,
    lineHeight: 16 / 12,
    letterSpacing: 0.5,
  ),
  TextDesignItemModel(
    headingText: 'Lable Small — 11/16  +0.1  0',
    bodyText: 'Quick brown fox jumps over a lazy dog',
    fontSize: 11,
    lineHeight: 16 / 11,
    letterSpacing: 0.1,
  ),
  // Body Start
  TextDesignItemModel(
    headingText: 'Body Large — 16/24  +0.15  +16',
    bodyText: bodyText,
    fontSize: 16,
    lineHeight: 24 / 16,
    letterSpacing: 0.15,
  ),
  TextDesignItemModel(
    headingText: 'Body Medium — 14/20  +0.25  +12',
    bodyText: bodyText,
    fontSize: 14,
    lineHeight: 20 / 14,
    letterSpacing: 0.25,
  ),
  TextDesignItemModel(
    headingText: 'Body Small — 12/20  +0.25  +8',
    bodyText: bodyText,
    fontSize: 12,
    lineHeight: 20 / 12,
    letterSpacing: 0.25,
  ),
];




// TextTitleAndBodyViewContainer(
//                 titleText: 'Display Large — 57/68  -1.25   0',
//                 bodyTextStyle: Theme.of(context).textTheme.displayLarge,
//               ),
//               TextTitleAndBodyViewContainer(
//                 titleText: 'Display Medium — 45/56  -1  0',
//                 bodyTextStyle: Theme.of(context).textTheme.displayMedium,
//               ),
//               TextTitleAndBodyViewContainer(
//                 titleText: 'Display Small — 36/44  -0.75  0',
//                 bodyTextStyle: Theme.of(context).textTheme.displaySmall,
//               ),
//               Divider(thickness: 2), // Devider Headlines
//               TextTitleAndBodyViewContainer(
//                 titleText: 'Headline Large — 32/40  -0.5  0',
//                 bodyTextStyle: Theme.of(context).textTheme.headlineLarge,
//               ),
//               TextTitleAndBodyViewContainer(
//                 titleText: 'Headline Medium — 28/36  -0.5  0',
//                 bodyTextStyle: Theme.of(context).textTheme.headlineMedium,
//               ),
//               TextTitleAndBodyViewContainer(
//                 titleText: 'Headline Small — 24/32  -0.25  0',
//                 bodyTextStyle: Theme.of(context).textTheme.headlineSmall,
//               ),
//               Divider(thickness: 2), // Devider Title
//               TextTitleAndBodyViewContainer(
//                 titleText: 'Title Large — 22/28  0  0',
//                 bodyTextStyle: Theme.of(context).textTheme.titleLarge,
//               ),
//               TextTitleAndBodyViewContainer(
//                 titleText: 'Title Medium — 16/24  +0.15  0',
//                 bodyTextStyle: Theme.of(context).textTheme.titleMedium,
//               ),
//               TextTitleAndBodyViewContainer(
//                 titleText: 'Title Small — 11/16  +0.1  0',
//                 bodyTextStyle: Theme.of(context).textTheme.titleSmall,
//               ),
//               Divider(thickness: 2), // Devider Lables
//               TextTitleAndBodyViewContainer(
//                 titleText: 'Lable Large — 14/20  +0.1  0',
//                 bodyTextStyle: Theme.of(context).textTheme.labelLarge,
//               ),
//               TextTitleAndBodyViewContainer(
//                 titleText: 'Lable Medium — 12/16  +0.5  0',
//                 bodyTextStyle: Theme.of(context).textTheme.labelMedium,
//               ),
//               TextTitleAndBodyViewContainer(
//                 titleText: 'Lable Small — 11/16  +0.1  0',
//                 bodyTextStyle: Theme.of(context).textTheme.labelSmall,
//               ),
//               Divider(thickness: 2), // Devider Bodys
//               TextTitleAndBodyViewContainer(
//                 titleText: 'Body Large — 16/24  +0.15  +16',
//                 bodyText: bodyText,
//                 bodyTextStyle: Theme.of(context).textTheme.bodyLarge,
//               ),
//               TextTitleAndBodyViewContainer(
//                 titleText: 'Body Medium — 14/20  +0.25  +12',
//                 bodyText: bodyText,
//                 bodyTextStyle: Theme.of(context).textTheme.bodyMedium,
//               ),
//               TextTitleAndBodyViewContainer(
//                 titleText: 'Body Small — 12/20  +0.25  +8',
//                 bodyText: bodyText,
//                 bodyTextStyle: Theme.of(context).textTheme.bodySmall,
//               ),