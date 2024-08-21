import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const FinalView(),
    );
  }
}

class FinalView extends StatefulWidget {
  const FinalView({super.key});

  @override
  State<FinalView> createState() => _FinalViewState();
}

class _FinalViewState extends State<FinalView> {
  int selectedItem = 0;
  double man = 48, women = 52;
  double baby = 5, kid = 15, boy = 20, adult = 30, middleAge = 20, old = 10;
  double genderTotal = 0, ageTotal = 0;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    genderTotal = man + women;
    ageTotal = baby + kid + boy + adult + middleAge + old;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(title: const Text("แถบล่างแบบเบลอ")),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // Chart 1
                Row(
                  children: [
                    Container(
                      height: 300,
                      width: 490,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: PieChart(
                              PieChartData(
                                  sections: [
                                    PieChartSectionData(
                                      color: const Color.fromRGBO(
                                          110, 172, 218, 1),
                                      value: man,
                                      title: '$man %',
                                      titleStyle: const TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                      titlePositionPercentageOffset: 1,
                                      radius: 50,
                                    ),
                                    PieChartSectionData(
                                      color: const Color.fromRGBO(
                                          240, 168, 208, 1),
                                      value: women,
                                      title: '$women %',
                                      titleStyle: const TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                      titlePositionPercentageOffset: 1,
                                      radius: 50,
                                    ),
                                  ],
                                  borderData: FlBorderData(show: true),
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 40,
                                  startDegreeOffset: 52),
                            ),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'ข้อมูลเพศสภาพ',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin:
                                              const EdgeInsets.only(right: 8),
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(
                                                110, 172, 218, 1),
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                        Text(
                                          'จำนวนผู้ชาย: $man คน',
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin:
                                              const EdgeInsets.only(right: 8),
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(
                                                240, 168, 208, 1),
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                        Text(
                                          'จำนวนผู้หญิง: $women คน',
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'รวมจำนวนทั้งหมด $genderTotal คน',
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),

                // Chart 2
                Row(
                  children: [
                    Container(
                      height: 300,
                      width: 490,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: PieChart(
                              PieChartData(
                                  sections: [
                                    PieChartSectionData(
                                      color: const Color.fromRGBO(
                                          255, 199, 158, 1),
                                      value: baby,
                                      title: '$baby %',
                                      titleStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                      titlePositionPercentageOffset: 0.75,
                                      radius: 100,
                                    ),
                                    PieChartSectionData(
                                      color: const Color.fromRGBO(
                                          255, 208, 167, 1),
                                      value: kid,
                                      title: '$kid %',
                                      titleStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                      titlePositionPercentageOffset: 0.75,
                                      radius: 100,
                                    ),
                                    PieChartSectionData(
                                      color: const Color.fromRGBO(
                                          255, 167, 120, 1),
                                      value: boy,
                                      title: '$boy %',
                                      titleStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                      titlePositionPercentageOffset: 0.75,
                                      radius: 100,
                                    ),
                                    PieChartSectionData(
                                      color: const Color.fromRGBO(
                                          255, 153, 103, 1),
                                      value: adult,
                                      title: '$adult %',
                                      titleStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                      titlePositionPercentageOffset: 0.75,
                                      radius: 100,
                                    ),
                                    PieChartSectionData(
                                      color: const Color.fromRGBO(
                                          255, 167, 120, 1),
                                      value: middleAge,
                                      title: '$middleAge %',
                                      titleStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                      titlePositionPercentageOffset: 0.75,
                                      radius: 100,
                                    ),
                                    PieChartSectionData(
                                      color: const Color.fromRGBO(
                                          255, 171, 122, 1),
                                      value: old,
                                      title: '$old %',
                                      titleStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                      titlePositionPercentageOffset: 0.75,
                                      radius: 100,
                                    ),
                                  ],
                                  borderData: FlBorderData(show: true),
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 0,
                                  startDegreeOffset: 175),
                            ),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'ข้อมูลอายุ',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin:
                                              const EdgeInsets.only(right: 8),
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 208, 167, 1),
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                        Text(
                                          '2ปี - 12ปี จำนวน $kid คน',
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin:
                                              const EdgeInsets.only(right: 8),
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 167, 120, 1),
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                        Text(
                                          '12ปี - 21ปี จำนวน $boy คน',
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin:
                                              const EdgeInsets.only(right: 8),
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 153, 103, 1),
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                        Text(
                                          '21ปี - 40ปี จำนวน $adult คน',
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin:
                                              const EdgeInsets.only(right: 8),
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 167, 120, 1),
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                        Text(
                                          '40ปี - 60ปี จำนวน $middleAge คน',
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin:
                                              const EdgeInsets.only(right: 8),
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 171, 122, 1),
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                        Text(
                                          '60ปีขึ้นไป จำนวน $old คน',
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'รวมจำนวนทั้งหมด $genderTotal คน',
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),

                // Chart 3
                Column(
                  children: [
                    Container(
                      height: 400,
                      width: 490,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Flexible(
                            flex: 6,
                            child: BarChart(
                              BarChartData(
                                  titlesData: FlTitlesData(
                                    bottomTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 40,
                                        getTitlesWidget: (value, meta) {
                                          const style = TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          );
                                          Widget text;
                                          switch (value.toInt()) {
                                            case 0:
                                              text = const Text('โรคความดัน',
                                                  style: style);
                                              break;
                                            case 1:
                                              text = const Text('โรคเบาหวาน',
                                                  style: style);
                                              break;
                                            case 2:
                                              text = const Text(
                                                  'โรคไข้เลือดออก',
                                                  style: style);
                                              break;
                                            default:
                                              text =
                                                  const Text('', style: style);
                                              break;
                                          }
                                          return SideTitleWidget(
                                            axisSide: meta.axisSide,
                                            child: text,
                                          );
                                        },
                                      ),
                                    ),
                                    leftTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 40,
                                        getTitlesWidget: (value, meta) {
                                          return SideTitleWidget(
                                            axisSide: meta.axisSide,
                                            child: Text(
                                              value.toInt().toString(),
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  borderData: FlBorderData(
                                    show: true,
                                    border: const Border(
                                      left: BorderSide(width: 2),
                                      bottom: BorderSide(width: 2),
                                    ),
                                  ),
                                  barGroups: [
                                    // ข้อมูลสำหรับ "โรคความดัน"
                                    BarChartGroupData(x: 0, barRods: [
                                      BarChartRodData(
                                        toY: 3,
                                        color: const Color.fromRGBO(
                                            107, 160, 138, 1),
                                        width: 20,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      BarChartRodData(
                                        toY: 8,
                                        color: const Color.fromRGBO(
                                            169, 181, 227, 1),
                                        width: 20,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      BarChartRodData(
                                        toY: 5,
                                        color: const Color.fromRGBO(
                                            204, 155, 113, 1),
                                        width: 20,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                    ]),
                                    // ข้อมูลสำหรับ "โรคเบาหวาน"
                                    BarChartGroupData(x: 1, barRods: [
                                      BarChartRodData(
                                        toY: 1,
                                        color: const Color.fromRGBO(
                                            188, 143, 143, 1),
                                        width: 20,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      BarChartRodData(
                                        toY: 3,
                                        color: const Color.fromRGBO(
                                            107, 160, 138, 1),
                                        width: 20,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      BarChartRodData(
                                        toY: 5,
                                        color: const Color.fromRGBO(
                                            169, 181, 227, 1),
                                        width: 20,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      BarChartRodData(
                                        toY: 5,
                                        color: const Color.fromRGBO(
                                            204, 155, 113, 1),
                                        width: 20,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                    ]),
                                    // ข้อมูลสำหรับ "โรคไข้เลือดออก"
                                    BarChartGroupData(x: 2, barRods: [
                                      BarChartRodData(
                                        toY: 1,
                                        color: const Color.fromRGBO(
                                            169, 181, 227, 1),
                                        width: 20,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      BarChartRodData(
                                        toY: 1,
                                        color: const Color.fromRGBO(
                                            204, 155, 113, 1),
                                        width: 20,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                    ]),
                                  ],
                                  gridData: const FlGridData(show: false),
                                  alignment: BarChartAlignment.spaceAround,
                                  barTouchData: BarTouchData(enabled: false),
                                  maxY: 15),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 70.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              margin: const EdgeInsets.only(
                                                  right: 8),
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 211, 182, 1),
                                                shape: BoxShape.rectangle,
                                              ),
                                            ),
                                            const Text(
                                              'แรกเกิด - 2ปี',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              margin: const EdgeInsets.only(
                                                  right: 8),
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    107, 160, 138, 1),
                                                shape: BoxShape.rectangle,
                                              ),
                                            ),
                                            const Text(
                                              '21ปี - 40ปี',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              margin: const EdgeInsets.only(
                                                  right: 8),
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    157, 216, 212, 1),
                                                shape: BoxShape.rectangle,
                                              ),
                                            ),
                                            const Text(
                                              '2ปี - 12ปี',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              margin: const EdgeInsets.only(
                                                  right: 8),
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    169, 181, 227, 1),
                                                shape: BoxShape.rectangle,
                                              ),
                                            ),
                                            const Text(
                                              '40ปี - 60ปี',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              margin: const EdgeInsets.only(
                                                  right: 8),
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    188, 143, 143, 1),
                                                shape: BoxShape.rectangle,
                                              ),
                                            ),
                                            const Text(
                                              '12ปี - 21ปี',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              margin: const EdgeInsets.only(
                                                  right: 8),
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    204, 155, 113, 1),
                                                shape: BoxShape.rectangle,
                                              ),
                                            ),
                                            const Text(
                                              '60ปีขึ้นไป',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                const Text(' '),
              ],
            ),
          ),

          /// Custom Bottom Navigation Bar
          Positioned(
            bottom: 18,
            left: 24,
            right: 24,
            height: 56,
            child: Container(
              decoration: BoxDecoration(
                border:
                    Border.all(width: 2, color: theme.scaffoldBackgroundColor),
                borderRadius: const BorderRadius.all(Radius.circular(32)),
                color: theme.scaffoldBackgroundColor,
              ),
              child: const ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
            ),
          ),

          /// Bottom Navigation bar items
          Positioned(
            bottom: 18,
            left: 24,
            right: 24,
            height: 56,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildBNBItem(Icons.home_outlined, 0),
                  _buildBNBItem(Icons.apps, 1),
                  _buildBNBItem(Icons.notifications_outlined, 2),
                  _buildBNBItem(Icons.settings_outlined, 3),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBNBItem(IconData icon, index) {
    return ZoomTapAnimation(
      onTap: () {
        setState(() {
          selectedItem = index;
        });
      },
      child: Icon(
        icon,
        color: selectedItem == index ? Colors.amberAccent : Colors.white,
        size: 30,
      ),
    );
  }
}

class AppTheme {
  AppTheme._();

  /// Light Theme
  static ThemeData lightTheme = FlexThemeData.light(
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    swapLegacyOnMaterial3: true,
    useMaterial3: true,
    scheme: FlexScheme.deepBlue,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );

  /// Dark Theme
  static ThemeData darkTheme = FlexThemeData.dark(
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    swapLegacyOnMaterial3: true,
    useMaterial3: true,
    dialogBackground: Colors.grey.shade900,
    scheme: FlexScheme.indigo,
    tabBarStyle: FlexTabBarStyle.forBackground,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );
}
