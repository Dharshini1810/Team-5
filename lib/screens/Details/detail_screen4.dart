import 'package:prescription_app/components/schedule_card.dart';
import 'package:prescription_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:prescription_app/screens/Voice/voice_screen.dart';
import 'package:prescription_app/new/doc_sign.dart';

class DetailScreen4 extends StatelessWidget {
  var _name;
  var _description;
  var _imageUrl;

  DetailScreen4(this._name, this._description, this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/detail_illustration.png'),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        'assets/icons/back.svg',
                        height: 18,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/3dots.svg',
                      height: 18,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.24,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            _imageUrl,
                            height: 120,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                _name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: kTitleTextColor,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                _description,
                                style: TextStyle(
                                  color: kTitleTextColor.withOpacity(0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: kBlueColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/phone.svg',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: kYellowColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/chat.svg',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: kOrangeColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/video.svg',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),

/////////////////////////////////////////////////////////////////////////////////////////////////////////
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Patient Details ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: kTitleTextColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Age: 10 \n Blood Group: A1+ve \n Height/Weight: 110cm/35kg \n Blood Pressure(BP): 88mmHg \n Pulse rate: 71beats/min \n Diagonised with: Typhoid(Salmonella typhi)',
                        style: TextStyle(
                          height: 1.6,
                          color: kTitleTextColor.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Text(
                        'Prescribed Medicines',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: kTitleTextColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Ciprofloxacin-250mg ; AF ; 1-0-1 \n Paracetamol-250mg ; AF ; Every 6 hours \n Azithromycin-500mg ; AF ; 0-0-1 \n Ceftriaxone-1g ; AF ; 0-0-1',
                        style: TextStyle(
                          height: 1.6,
                          color: kTitleTextColor.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Text(
                        'Previous Consultations',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: kTitleTextColor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ScheduleCard(
                        'Regular Checkup',
                        'Saturday . 10am - 12am',
                        '19',
                        'Sept',
                        kBlueColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ScheduleCard(
                        'Consultation',
                        'Wednesday . 3pm - 4pm',
                        '5',
                        'Aug',
                        kYellowColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ScheduleCard(
                        'Consultation - Severe Stomach Pain and Mild Fever',
                        'Monday . 10am - 12am',
                        '6',
                        'July',
                        kOrangeColor,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(
                      shape: StadiumBorder(),
                      color: Colors.purpleAccent,
                      onPressed: () {
                        Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DocSign();
                    },
                  ),
                );
                      },
                      child: Text("Start Consultation"),
                    )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
