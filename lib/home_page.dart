import 'package:express24clone/custom_data.dart';
import 'package:express24clone/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _currentTabIndex = 0;
    List<BottomNavigationBarItem> navBarItems = <BottomNavigationBarItem>[
      customNavBarItem(Icons.home_filled, 'Home', selected: true),
      customNavBarItem(Icons.search_outlined, 'Search'),
      customNavBarItem(Icons.shopping_bag_outlined, 'Orders'),
      customNavBarItem(Icons.account_circle_outlined, 'Profile'),
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Container(
            height: 130.h,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {

                  },
                  child: Row(
                    children: [
                      Text(
                        "Chilonzor tumani, Toshkent",
                        style: TextStyle(
                          fontSize: 15.sp
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  height: 40.h,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(7.r)
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              color: Colors.black,
              onRefresh: () async {
                MyWidgets().showToast("Reloading and syncing...");
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 17.h),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13.r),
                        child: Image.asset(
                          "assets/banners/main_banner.jpg",
                          width: double.infinity,
                          height: 120.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6.h),
                      height: 90.h,
                      child: ListView.builder(
                        itemCount: 12,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctxListBanner, indexBanner) {
                          return Padding(
                            padding: EdgeInsets.only(right: 13.w),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.asset("assets/banners/${indexBanner + 1}.jpg",),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 14.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shops",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25.sp
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              MyWidgets().showToast("Under development");
                            },
                            child: Row(
                              children: [
                                Text(
                                  "All",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                                SizedBox(width: 7.w),
                                Icon(Icons.arrow_forward_ios_rounded, size: 15.w)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 135.h,
                      padding: EdgeInsets.symmetric(vertical: 6.h),
                      child: ListView.builder(
                        itemCount: CustomData.shops.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctxListBanner, indexShop) {
                          Map<String, String> item = CustomData.shops[indexShop];
                          return Container(
                            margin: EdgeInsets.only(right: 13.w),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.r),
                                    topRight: Radius.circular(10.r)
                                  ),
                                  child: Image.asset(
                                    "assets/shops/${item["image"] ?? 1}.jpg",
                                    height: 85.h,
                                    width: 150.w,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  "  ${item["name"]}",
                                  style: TextStyle(
                                    fontSize: 15.sp
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      child: Text(
                        "Restaurants",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 33.sp
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6.h),
                      height: 45.h,
                      child: ListView.builder(
                        itemCount: CustomData.categories.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctxListCategories, indexCategories) {
                          return Container(
                            margin: EdgeInsets.only(right: 10.w),
                            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13.r),
                            ),
                            child: Row(
                              children: [
                                if(indexCategories == 0) Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: Icon(Icons.favorite, color: Colors.red, size: 20.w),
                                ),
                                Text(
                                  "${CustomData.categories[indexCategories]}",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: StatefulBuilder(
        builder: (ctx2, setState2) {
          return BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedItemColor: Colors.yellow,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              selectedFontSize: 11.sp,
              unselectedFontSize: 11.sp,
              items: navBarItems,
              currentIndex: _currentTabIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (int index) {
                navBarItems = <BottomNavigationBarItem>[
                  customNavBarItem(Icons.home_filled, 'Home', selected: index == 0),
                  customNavBarItem(Icons.search_outlined, 'Search', selected: index == 1),
                  customNavBarItem(Icons.shopping_bag_outlined, 'Orders', selected: index == 2),
                  customNavBarItem(Icons.account_circle_outlined, 'Profile', selected: index == 3),
                ];
                setState2(() {
                  _currentTabIndex = index;
                });
              }
          );
        },
      )
    );
  }

  BottomNavigationBarItem customNavBarItem(IconData icon, String label, {bool selected = false}) {
    return BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: Icon(icon, color: selected ? Colors.yellow : Colors.grey)
        ),
        label: label
    );
  }
}
