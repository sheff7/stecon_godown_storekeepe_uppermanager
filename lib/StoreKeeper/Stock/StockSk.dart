import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../CustomFont/Header.dart';
import 'MaterialStockSk.dart';
import 'UpperStocksk.dart';

class StockSk extends StatelessWidget {
  const StockSk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
          backgroundColor: const Color(0xFFF7FBFC),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Header(
              text: 'Stock',
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 17,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 2.h),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.white,
                      indicator: BoxDecoration(
                          color:Color(0xFFEC4E52),
                          borderRadius: BorderRadius.circular(8)),
                      tabs: [
                        Tab(
                          text: 'Upper Stock',
                        ),
                        Tab(
                          text: 'Material Stock',
                        )
                      ]),
                ),
              ),
            ),
            Container(
              height: 232.h,
              child: TabBarView(children: [
                UpperStockSk(),
                MaterialStockSk()
              ]),
            )

          ],
        ),
      ),
    );
  }
}
