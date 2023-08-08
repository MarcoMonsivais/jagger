import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:intl/intl.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var kToday;

  DateTime _focusedDay = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day +2);
  DateTime? _selectedDay;

  late DateTime tomorrow;
  late int day, month;

  String mesa = 'Elige tu mesa', nombre = 'A nombre de', hora = 'Hora', fecha = 'Fecha';
  int hour = 8, minute = 00;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _otherNameController = TextEditingController();
  final TextEditingController _CommentsController = TextEditingController();

  int val = 0, val_mesa = 0, val_nombre = 0, val_fecha = 0, val_hora = 0;

  @override
  void initState() {
    super.initState();
    day = DateTime.now().day + 2;
    month = DateTime.now().month;
    kToday = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  // color: Colors.blue,
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(borderRadius: BorderRadius.circular(35.0),child:
                    PhotoView(
                      imageProvider: AssetImage('assets/imagen 1.jpg'),
                      maxScale: PhotoViewComputedScale.covered * 2.0,
                      minScale: PhotoViewComputedScale.contained * 0.8,
                      initialScale: PhotoViewComputedScale.covered,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40.0))
                  ),
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children:  [

                          ExpansionTile(
                            textColor: Colors.black,
                            iconColor: Colors.black,
                            leading: const Icon(Icons.table_chart),
                            title: Text(mesa),
                            children: <Widget>[

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  const Text('Mesas disponibles: '),

                                  Expanded(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [

                                          GestureDetector(
                                            child: SizedBox(
                                              height: MediaQuery.of(context).size.height * 0.07,
                                              child: const Card(
                                                clipBehavior: Clip.hardEdge,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Text('Mesa 1'),
                                                ),
                                              ),
                                            ),
                                            onTap: () {

                                              if(val_mesa==0) {
                                                setState(() {
                                                  val_mesa = 1;
                                                  mesa = 'Mesa 1';
                                                });
                                              } else {
                                                setState(() {
                                                  mesa = 'Mesa 1';
                                                });
                                              }

                                            },
                                          ),

                                          GestureDetector(
                                            child: SizedBox(
                                              height: MediaQuery.of(context).size.height * 0.07,
                                              child: const Card(
                                                clipBehavior: Clip.hardEdge,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Text('Mesa 2'),
                                                ),
                                              ),
                                            ),
                                            onTap: () {

                                              if(val_mesa==0) {
                                                setState(() {
                                                  val_mesa = 1;
                                                  mesa = 'Mesa 2';
                                                });
                                              } else {
                                                setState(() {
                                                  mesa = 'Mesa 2';
                                                });
                                              }

                                            },
                                          ),

                                          GestureDetector(
                                            child: SizedBox(
                                              height: MediaQuery.of(context).size.height * 0.07,
                                              child: const Card(
                                                clipBehavior: Clip.hardEdge,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Text('Mesa 3'),
                                                ),
                                              ),
                                            ),
                                            onTap: () {

                                              if(val_mesa==0) {
                                                setState(() {
                                                  val_mesa = 1;
                                                  mesa = 'Mesa 3';
                                                });
                                              } else {
                                                setState(() {
                                                  mesa = 'Mesa 3';
                                                });
                                              }

                                            },
                                          ),

                                          GestureDetector(
                                            child: SizedBox(
                                              height: MediaQuery.of(context).size.height * 0.07,
                                              child: const Card(
                                                clipBehavior: Clip.hardEdge,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Text('Mesa 4'),
                                                ),
                                              ),
                                            ),
                                            onTap: () {

                                              if(val_mesa==0) {
                                                setState(() {
                                                  val_mesa = 1;
                                                  mesa = 'Mesa 4';
                                                });
                                              } else {
                                                setState(() {
                                                  mesa = 'Mesa 4';
                                                });
                                              }

                                            },
                                          ),

                                          GestureDetector(
                                            child: SizedBox(
                                              height: MediaQuery.of(context).size.height * 0.07,
                                              child: const Card(
                                                clipBehavior: Clip.hardEdge,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Text('Mesa 5'),
                                                ),
                                              ),
                                            ),
                                            onTap: () {

                                              if(val_mesa==0) {
                                                setState(() {
                                                  val_mesa = 1;
                                                  mesa = 'Mesa 5';
                                                });
                                              } else {
                                                setState(() {
                                                  mesa = 'Mesa 5';
                                                });
                                              }

                                            },
                                          ),

                                          GestureDetector(
                                            child: SizedBox(
                                              height: MediaQuery.of(context).size.height * 0.07,
                                              child: const Card(
                                                clipBehavior: Clip.hardEdge,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Text('Mesa 6'),
                                                ),
                                              ),
                                            ),
                                            onTap: () {

                                              if(val_mesa==0) {
                                                setState(() {
                                                  val_mesa = 1;
                                                  mesa = 'Mesa 6';
                                                });
                                              } else {
                                                setState(() {
                                                  mesa = 'Mesa 6';
                                                });
                                              }

                                            },
                                          ),

                                          GestureDetector(
                                            child: SizedBox(
                                              height: MediaQuery.of(context).size.height * 0.07,
                                              child: const Card(
                                                clipBehavior: Clip.hardEdge,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Text('Mesa 7'),
                                                ),
                                              ),
                                            ),
                                            onTap: () {

                                              if(val_mesa==0) {
                                                setState(() {
                                                  val_mesa = 1;
                                                  mesa = 'Mesa 7';
                                                });
                                              } else {
                                                setState(() {
                                                  mesa = 'Mesa 7';
                                                });
                                              }

                                            },
                                          ),

                                          GestureDetector(
                                            child: SizedBox(
                                              height: MediaQuery.of(context).size.height * 0.07,
                                              child: const Card(
                                                clipBehavior: Clip.hardEdge,
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Text('Mesa 8'),
                                                ),
                                              ),
                                            ),
                                            onTap: () {

                                              if(val_mesa==0) {
                                                setState(() {
                                                  val_mesa = 1;
                                                  mesa = 'Mesa 8';
                                                });
                                              } else {
                                                setState(() {
                                                  mesa = 'Mesa 8';
                                                });
                                              }

                                            },
                                          ),


                                        ],
                                      ),
                                    ),
                                  ),


                              ],),

                            ],
                          ),

                          ExpansionTile(
                            textColor: Colors.black,
                            iconColor: Colors.black,
                            leading: const Icon(Icons.person),
                            title: Text(nombre),
                            children: <Widget>[

                              Row(children: [
                                Text('Nombre: '),
                                Expanded(child: TextField(
                                  controller: _nameController,
                                  keyboardType: TextInputType.name,
                                  textCapitalization: TextCapitalization.sentences,
                                  // onChanged: (value) {
                                  //   if(val_nombre==0) {
                                  //     setState(() {
                                  //       val_nombre = 1;
                                  //       nombre = _nameController.text;
                                  //     });
                                  //   } else {
                                  //     setState(() {
                                  //       nombre = _nameController.text;
                                  //     });
                                  //   }
                                  // },
                                  onEditingComplete: (){

                                    if(val_nombre==0) {
                                      setState(() {
                                        val_nombre = 1;
                                        nombre = _nameController.text;
                                      });
                                    } else {
                                      setState(() {
                                        nombre = _nameController.text;
                                      });
                                    }

                                  },
                                ))
                              ],),

                              Row(children: [
                                Text('Telefono: '),
                                Expanded(child: TextField(
                                  controller: _phoneController,
                                  keyboardType: TextInputType.phone,
                                  textCapitalization: TextCapitalization.sentences,
                                  onTap: (){
                                    if(val_nombre==0) {
                                      setState(() {
                                        val_nombre = 1;
                                        nombre = _nameController.text;
                                      });
                                    } else {
                                      setState(() {
                                        nombre = _nameController.text;
                                      });
                                    }
                                  },
                                ))
                              ],),

                              Row(children: [
                                Text('Contacto secundario: '),
                                Expanded(child: TextField(
                                  controller: _otherNameController,
                                  keyboardType: TextInputType.name,
                                  textCapitalization: TextCapitalization.sentences,
                                ))
                              ],),

                            ],
                          ),

                          ExpansionTile(
                            textColor: Colors.black,
                            iconColor: Colors.black,
                            leading: const Icon(Icons.event),
                            title: Text(fecha),
                            children: <Widget>[
                              TableCalendar(
                                calendarFormat: CalendarFormat.week,
                                locale: Localizations.localeOf(context).languageCode,
                                firstDay: DateTime.now(),
                                lastDay: kLastDay,
                                focusedDay: _focusedDay,
                                calendarStyle: const CalendarStyle(
                                  isTodayHighlighted: true,
                                  outsideDaysVisible: false,
                                ),
                                selectedDayPredicate: (day) {
                                  return isSameDay(_selectedDay, day);
                                },
                                onDaySelected: (selectedDay, focusedDay) {
                                  if(val_fecha==0) {
                                    setState(() {
                                      val_fecha = 1;
                                      _selectedDay = selectedDay;
                                      _focusedDay = focusedDay; // update `_focusedDay` here as well
                                      fecha = DateFormat('EEEE d', Localizations.localeOf(context).languageCode).format(selectedDay);
                                    });
                                  } else {
                                    setState(() {
                                      _selectedDay = selectedDay;
                                      _focusedDay = focusedDay; // update `_focusedDay` here as well
                                      fecha = DateFormat('EEEE d', Localizations.localeOf(context).languageCode).format(selectedDay);
                                    });
                                  }
                                },

                              ),
                            ],
                          ),

                          ExpansionTile(
                            textColor: Colors.black,
                            iconColor: Colors.black,
                            leading: const Icon(Icons.timer),
                            title: Text(hora),
                            children: <Widget>[
                              SizedBox(
                                // color: Colors.blue,
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.height * 0.2,
                                child: Row(
                                  children: [
                                    Expanded(child: NumberPicker(
                                      step: 1,
                                      selectedTextStyle: const TextStyle(fontSize: 20),
                                      infiniteLoop: true,
                                      value: hour,
                                      minValue: 0,
                                      maxValue: 11,
                                      onChanged: (value) => setState(() {
                                        hour = value;
                                        hora = hour.toString() + ':' + minute.toString() + ' PM';
                                      }),
                                    ),),
                                    const Expanded(child: Text(':', style: TextStyle(fontSize: 20),),),
                                    Expanded(child: NumberPicker(
                                      step: 10,
                                      selectedTextStyle: const TextStyle(fontSize: 20),
                                      infiniteLoop: true,
                                      value: minute,
                                      minValue: 0,
                                      maxValue: 59,
                                      onChanged: (value) => setState(() {
                                        minute = value;
                                        hora = hour.toString() + ':' + minute.toString() + ' PM';
                                      }),
                                    ),),
                                    const Expanded(child: Padding(
                                      padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0),
                                      child: Text('PM', style: TextStyle(fontSize: 20),),
                                    ),),

                                    // Expanded(child: NumberPicker(
                                    //   step: 1,
                                    //   selectedTextStyle: const TextStyle(fontSize: 20),
                                    //   infiniteLoop: true,
                                    //   value: paam,
                                    //   minValue: 0,
                                    //   maxValue: 1,
                                    //   onChanged: (value) => setState(() => paam = value),
                                    // ),),
                                  ],
                                ),
                              )
                            ],
                          ),

                          ExpansionTile(
                            textColor: Colors.black,
                            iconColor: Colors.black,
                            title: const Text('Comentarios'),
                            children: <Widget>[
                              ListTile(
                                title: TextField(
                                  controller: _CommentsController,
                                  maxLines: 3,
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}