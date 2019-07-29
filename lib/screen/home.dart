import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _body(context),
    );
  }
}

Widget _body(context) {
  return Container(
    padding: EdgeInsets.only(top: 16),
    child: Column(
      children: <Widget>[
        Text(
          'Category of University',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
            child: Divider(),
          ),
          height: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => _PublicUniversity(),
                    ),
                  );
                },
                child: _BoxHomeScreen('public.png', 'PUBLIC')),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => _PrivateUniversity(),
                    ),
                  );
                },
                child: _BoxHomeScreen('private.png', 'PRIVATE'))
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => _LocationUniversity(),
                    ),
                  );
                },
                child: _BoxHomeScreen('location.png', 'LOCATION')),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => _SubjectUniversity(),
                    ),
                  );
                },
                child: _BoxHomeScreen('subject.png', 'SUBJECT'))
          ],
        )
      ],
    ),
  );
}

Widget _BoxHomeScreen(String imagename, String title) {
  return Container(
    height: 180,
    width: 170,
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: <BoxShadow>[
          BoxShadow(offset: Offset(0, 3), color: Colors.black12, blurRadius: 6)
        ]),
    child: Column(
      children: <Widget>[
        Image.asset(
          'images/' + imagename,
          height: 100,
          width: 100,
        ),
        Divider(),
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}

//this class for view all Public University
class _PublicUniversity extends StatefulWidget {
  @override
  _Public createState() {
    // TODO: implement createState
    return _Public();
  }
}

class _Public extends State<_PublicUniversity> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.teal),
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Public University',
              style: TextStyle(color: Colors.teal),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.teal,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('CheaSimUniversityofKamchaymear','CheaSim University of\nKamchaymear'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('ÉcoleRoyaled’Administration','École Royaled Administration'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('EconomicsandFinanceInstitute','Economics and Finance\nInstitute'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('InstituteofTechnologyofCambodia','Institute of Technology of\nCambodia'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('KampongChamNationalSchoolofAgriculture','Kampong Cham National\nSchool of Agriculture'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('MeanCheyUniversity','MeanChey University'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('NationalInstituteofBusiness','National Institute of Business'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('NationalInstituteofEducation','National Institute of Education'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('NationalInstituteofPostsTelecommunicatonsandInformationCommunicationTechnology','National Institute of Posts\nTelecommunicatons and\nInformation Communication\nTechnology'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('NationalPolytechnicInstituteofCambodia','National Polytechnic\nInstitute of Cambodia'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('NationalUniversityofManagement','National University of\nManagement'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('PreahSihanoukRajaBuddhistUniversity','Preah Sihanouk Raja\nBuddhist University'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('PrekLeapNationalCollegeofAgriculture','PrekLeap National College\nof Agriculture'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('RoyalAcademyofCambodia','Royal Academy of Cambodia'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('RoyalUniversityofAgriculture','Royal University of Agriculture'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('RoyalUniversityofFineArts','Royal University of Fine Arts'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('RoyalUniversityofLawandEconomics','Royal University of Law\nand Economics'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('RoyalUniversityofPhnomPenh','Royal University of Phnom Penh'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('SvayRiengUniversity','Svay Rieng University'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('UniversitédesSciencesdlaSanté','Université des Sciencesdla Santé'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPublic('UniversityofBattambang','University of Battambang'),
                  ),
                  Divider(),
                ],
              ),
            )
          ],
        ));
  }
}

Widget _SubWidgetPublic(String imagename, String name) {
  return Container(
    padding: EdgeInsets.only(top: 16, bottom: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 3), color: Colors.black12, blurRadius: 6)
            ],
          ),
          child: Image.asset('images/public/' + imagename + '.png'),
        ),
        SizedBox(
          width: 40,
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0, 3),
                  color: Colors.black12,
                  blurRadius: 6,
                ),
              ]),
        ),
      ],
    ),
  );
}

//this class for view all Private University
class _PrivateUniversity extends StatefulWidget {
  @override
  _Private createState() {
    // TODO: implement createState
    return _Private();
  }
}

class _Private extends State<_PrivateUniversity> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.teal),
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Private University',
              style: TextStyle(color: Colors.teal),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.teal,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate('americanuniversityofphnompenh',
                        'American University of\nPhnompenh'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'angkorkhemarauniversity', 'Angkor Khemara University'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'angkoruniversity', 'Angkor University'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'angkorunivesity', 'Angkor Univesity'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'asiaeurouniversity', 'Asia Euro University'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate('belteiinterntionaluniversity',
                        'Beltei Interntional University'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'buildbrightuniversity', 'BuildBright University'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate('cambodiamekonguniversity',
                        'Cambodia Mekong University'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate('cambodiauniversityforspecialties',
                        'Cambodia University for\nSpecialties'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'camedbusinessschool', 'CamEd Business School'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'chamroeununiversityofpolytechnology',
                        'Chamroeun University of\nPolytechnology'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'chanlauniversity', 'Chanla University'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate('deweyinternationaluniversity',
                        'Dewey International University'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child:
                        _SubWidgetPrivate('humanresources', 'Human Resources'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate('iicuniversityoftechnology',
                        'IIC University of Technology'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'khemarakuniversity', 'Khemarak University'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'khmeruniversityoftechnologyandmanagement',
                        'Khmer University of\nTechnology and Management'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'lifeunivesitycambodia', 'Life Univesity Cambodia'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'limkokwinguniversityofcreativetechnologycambodia',
                        'Limkok Wing University of\nCreative Technology\nCambodia'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'nortonuniversity', 'Norton University'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'panhachietunivesity', 'Panhachiet Univesity'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate('pannasastrauniversityofcambodia',
                        'Pannasastra University of\nCambodia'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate('phnompenhinstituteoftechnology',
                        'Phnompenh Institute of\nTechnology'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate('phnompenhinternationalunivesity',
                        'Phnompenh International\nUnivesity'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'universityofcambodia', 'University of Cambodia'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'universityofmanagementandeconomics',
                        'University of Management\nand Economics'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'universityofputhisastra', 'University of Puthisastra'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'universityofsoutheast', 'University of Southeast'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child:
                        _SubWidgetPrivate('vandainstitute', 'Vanda Institute'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate('westernuniversitycambodia',
                        'Western University Cambodia'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetPrivate(
                        'zamanuniversity', 'Zaman University'),
                  ),
                  Divider(),
                ],
              ),
            )
          ],
        ));
  }
}

Widget _SubWidgetPrivate(String imagename, String name) {
  return Container(
    padding: EdgeInsets.only(top: 16, bottom: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 3), color: Colors.black12, blurRadius: 6)
            ],
          ),
          child: Image.asset('images/private/' + imagename + '.png'),
        ),
        SizedBox(
          width: 40,
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0, 3),
                  color: Colors.black12,
                  blurRadius: 6,
                ),
              ]),
        ),
      ],
    ),
  );
}

//this class for view all Location University
class _LocationUniversity extends StatefulWidget {
  @override
  _Location createState() {
    // TODO: implement createState
    return _Location();
  }
}

class _Location extends State<_LocationUniversity> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.teal),
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Location University',
              style: TextStyle(color: Colors.teal),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.teal,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetLocation(
                        'banteaymeanchey', 'BanTeay MeanChey'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetLocation('battambang', 'Battambang'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetLocation('kampongcham', 'Kampong Cham'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetLocation('phnompenh', 'Phnom Penh'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetLocation('preyveng', 'Prey Veng'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetLocation('siemreap', 'Siem Raep'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetLocation('sihanoukville', 'SihanoukVille'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetLocation('svayreang', 'Svay Reang'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

Widget _SubWidgetLocation(String imagename, String name) {
  return Container(
    padding: EdgeInsets.only(top: 16, bottom: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 3), color: Colors.black12, blurRadius: 6)
            ],
          ),
          child: Image.asset('images/location/' + imagename + '.png'),
        ),
        SizedBox(
          width: 40,
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0, 3),
                  color: Colors.black12,
                  blurRadius: 6,
                ),
              ]),
        ),
      ],
    ),
  );
}

//this class for view all Subject University
class _SubjectUniversity extends StatefulWidget {
  @override
  _Subject createState() {
    // TODO: implement createState
    return _Subject();
  }
}

class _Subject extends State<_SubjectUniversity> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.teal),
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Subject University',
              style: TextStyle(color: Colors.teal),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.teal,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child:
                        _SubWidgetSubject('administration', 'Administration'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetSubject('agriculture', 'Agriculture'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetSubject('architecture', 'Architecture'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetSubject('art', 'Art And Music'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetSubject('business', 'Business'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetSubject('communication', 'Communication'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetSubject('education', 'Education'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetSubject('engineering', 'Engineering'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetSubject('hospital', 'Hospital'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetSubject(
                        'informationoftechnology', 'Infomation Of Technology'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetSubject('language', 'Language'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetSubject('law', 'Law'),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: _SubWidgetSubject('tourism', 'Tourism'),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

Widget _SubWidgetSubject(String imagename, String name) {
  return Container(
    padding: EdgeInsets.only(top: 16, bottom: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 3), color: Colors.black12, blurRadius: 6)
            ],
          ),
          child: Image.asset('images/subject/' + imagename + '.png'),
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0, 3),
                  color: Colors.black12,
                  blurRadius: 6,
                ),
              ]),
        ),
      ],
    ),
  );
}
