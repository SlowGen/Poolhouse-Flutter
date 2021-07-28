import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import './results_tile.dart';
import '../models/ad_state.dart';
import '../models/server_data.dart';

class ResultsList extends StatefulWidget {
  ResultsList({required this.rate});
  final double rate;

  @override
  _ResultsListState createState() => _ResultsListState();
}

class _ResultsListState extends State<ResultsList> {
  late BannerAd banner;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final adState = Provider.of<AdState>(context);
    adState.initialization.then((status) {
      setState(() {
        banner = BannerAd(
          adUnitId: adState.bannerAdUnitId,
          size: AdSize.banner,
          request: AdRequest(),
          listener: adState.adListener,
        )..load();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ServerData>(
      builder: (context, serverData, child) {
        return Column(
          children: [
            Container(
              height: 50.0,
              child: AdWidget(
                ad: banner,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, int index) {
                  final server = serverData.servers[index];
                  server.setAllocation(widget.rate * server.points);
                  return ResultsTile(
                    server: server,
                  );
                },
                itemCount: serverData.serverCount,
              ),
            ),
          ],
        );
      },
    );
  }
}
