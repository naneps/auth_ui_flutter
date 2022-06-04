import 'package:auth_ui_flutter/data/dumy.dart';
import 'package:auth_ui_flutter/page/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HakAksesPage extends StatefulWidget {
  const HakAksesPage({Key? key}) : super(key: key);

  @override
  State<HakAksesPage> createState() => _HakAksesPageState();
}

class _HakAksesPageState extends State<HakAksesPage> {
  bool iSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 20, top: 20),
              child: Text(
                "RTQ APP",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: kFontColor,
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 20),
              child: Text("Pilih Hak Akses",
                  style: GoogleFonts.poppins(
                      color: kFontColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w800)),
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                "Masuk Sebagai apakah Adna hayoo???",
                style: GoogleFonts.poppins(
                  color: kFontColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: datahakAkses.length,
                itemBuilder: (context, index) {
                  datahakAkses[index]['id'];
                  return WidgetHakAkses(
                    // isSelected: true,
                    onTap: () {
                      if (datahakAkses[index]['id'] ==
                          datahakAkses[index]['id']) {}

                      if (iSelected == false) {
                        setState(() {
                          iSelected = true;
                        });
                      } else {
                        setState(() {
                          iSelected = false;
                        });
                      }

                      print(iSelected);
                      // print(datahakAkses[index]['id']);
                    },
                    isSelected: iSelected,
                    id: datahakAkses[index]['id'],
                    title: datahakAkses[index]['hakAkses'],
                  );
                },
              ),
            )
            // Text("Pilih HakAkses),
          ],
        ),
      ),
    );
  }
}

class WidgetHakAkses extends StatefulWidget {
  WidgetHakAkses({Key? key, this.title, this.id, this.onTap, this.isSelected})
      : super(key: key);

  String? title;
  String? id;
  bool? isSelected = false;
  VoidCallback? onTap;
  @override
  State<WidgetHakAkses> createState() => _WidgetHakAksesState();
}

class _WidgetHakAksesState extends State<WidgetHakAkses> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        width: 150,
        height: 180,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: widget.isSelected! ? kMainColor : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 49,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.title!,
              style: GoogleFonts.poppins(
                color: kFontColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
