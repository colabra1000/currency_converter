import 'package:currency_converter/application/currency_calculator/currency_calculator_bloc.dart';
import 'package:currency_converter/application/historical_data_graph/bloc/historical_data_graph_bloc.dart';
import 'package:currency_converter/presentation/core/styles/textStyles.dart';
import 'package:currency_converter/presentation/core/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ExchangeChart extends StatefulWidget {
  const ExchangeChart({Key? key}) : super(key: key);

  @override
  State<ExchangeChart> createState() => _ExchangeChartState();
}

class _ExchangeChartState extends State<ExchangeChart>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<Widget> tabs = [const Text("past 30 days"), const Text("past 90 days")];

  @override
  void initState() {
    // _tooltipBehavior = TooltipBehavior(enable: true);
    tabController = TabController(vsync: this, length: 2);
    tabController.addListener(() {
      CurrencyCalculatorState currencyCalculatorState =
          BlocProvider.of<CurrencyCalculatorBloc>(context).state;
      if (tabController.index == 0) {
        BlocProvider.of<HistoricalDataGraphBloc>(context)
            .add(HistoricalDataGraphEvent.displayed30DaysHistory(
          convertFromCurrency: currencyCalculatorState.convertFromCurrency,
          convertToCurrency: currencyCalculatorState.convertToCurrency,
        ));
      }
      if (tabController.index == 1) {
        BlocProvider.of<HistoricalDataGraphBloc>(context)
            .add(HistoricalDataGraphEvent.displayed90DaysHistory(
          convertFromCurrency: currencyCalculatorState.convertFromCurrency,
          convertToCurrency: currencyCalculatorState.convertToCurrency,
        ));
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CurrencyCalculatorBloc, CurrencyCalculatorState>(
      listener: (context, state) {
        if (tabController.index == 0) {
          BlocProvider.of<HistoricalDataGraphBloc>(context)
              .add(HistoricalDataGraphEvent.displayed30DaysHistory(
            convertFromCurrency: state.convertFromCurrency,
            convertToCurrency: state.convertToCurrency,
          ));
        }
        if (tabController.index == 1) {
          BlocProvider.of<HistoricalDataGraphBloc>(context)
              .add(HistoricalDataGraphEvent.displayed90DaysHistory(
            convertFromCurrency: state.convertFromCurrency,
            convertToCurrency: state.convertToCurrency,
          ));
        }
      },
      listenWhen: (previous, current) =>
          previous.convertFromCurrency != current.convertFromCurrency ||
          previous.convertToCurrency != current.convertToCurrency,
      child: BlocBuilder<HistoricalDataGraphBloc, HistoricalDataGraphState>(
        builder: (context, state) {
          return IntrinsicHeight(
            child: Stack(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(30))),
                  child: Column(
                    children: [
                      _tabBar(),
                      const MChart(),
                      SizedBox(height: 20.h),
                      _getChartAlertText(),
                      SizedBox(height: 30.h),
                    ],
                  ),
                ),
                LoadingOverlay(
                  warning: state.errorWarning,
                  isLoading: state.historicalData == null,
                  boxDecoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(30),
                      )),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _getChartAlertText() {
    return Text(
      "Get rate alert straight to your inbox",
      style: smallText.copyWith(
          color: lightColor, decoration: TextDecoration.underline),
    );
  }

  Widget _tabBar() {
    return TabBar(
        indicatorColor: Colors.transparent,
        controller: tabController,
        tabs: tabs);
  }
}

class MChart extends StatelessWidget {
  const MChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoricalDataGraphBloc, HistoricalDataGraphState>(
      builder: (context, state) {
        return SizedBox(
          height: 300.h,
          child: SfSparkAreaChart(
            trackball: const SparkChartTrackball(
                activationMode: SparkChartActivationMode.tap),
            labelDisplayMode: SparkChartLabelDisplayMode.last,
            lowPointColor: Colors.red,
            axisCrossesAt: 10,
            color: fadeColor,
            data: <double>[state.delta1, state.delta2, state.delta3],
          ),
        );
      },
    );
  }
}

// class SalesData {
//   SalesData(this.year, this.sales);
//   final String year;
//   final double sales;
// }





// BezierChart(
//               bezierChartScale: BezierChartScale.CUSTOM,
//               xAxisCustomValues: const [1, 2, 3],
//               series: [
//                 BezierLine(
//                   data: [
//                     DataPoint<double>(value: state.delta1, xAxis: 1),
//                     DataPoint<double>(value: state.delta2, xAxis: 2),
//                     DataPoint<double>(value: state.delta3, xAxis: 3),
//                   ],
//                 ),
//               ],
//               config: BezierChartConfig(
//                 verticalIndicatorStrokeWidth: 3.0,
//                 verticalIndicatorColor: Colors.black26,
//                 showVerticalIndicator: true,
//                 backgroundColor: Colors.red,
//                 snap: false,
//               ),
//             )