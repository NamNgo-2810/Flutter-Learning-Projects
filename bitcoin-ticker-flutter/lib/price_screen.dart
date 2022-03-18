import 'package:bitcoin_ticker/coin_data.dart';
import 'package:bitcoin_ticker/rate_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
    @override
    _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {

    String btcRate = '?', ethRate = '?', ltcRate = '?';
    String selectedCurrency = 'USD';

    DropdownButton<String> androidPicker() {
        return DropdownButton<String>(
            value: selectedCurrency,
            items: currenciesList.map(
                    (currency) => DropdownMenuItem(
                    child: Text(currency),
                    value: currency,
                ),
            ).toList(),
            onChanged: (value) async {
                setState(() {
                    selectedCurrency = value;
                    updateRate(selectedCurrency);
                });
            },
        );
    }

    CupertinoPicker iOSPicker() {
        return CupertinoPicker(
            itemExtent: 32.0,
            onSelectedItemChanged: (selectedIndex) async {
                setState(() {
                    selectedCurrency = currenciesList[selectedIndex];
                    updateRate(selectedCurrency);
                });

            },
            children: currenciesList.map<Widget>((e) => Text(e)),
        );
    }

    @override
    void initState() {
        super.initState();
        updateRate(selectedCurrency);
    }

    void updateRate(String currency) async {
        try {
            double rawBtcRate = await CoinData().getCoinData('BTC', selectedCurrency);
            double rawEthRate = await CoinData().getCoinData('ETH', selectedCurrency);
            double rawLtcRate = await CoinData().getCoinData('LTC', selectedCurrency);
            setState(() {
                btcRate = rawBtcRate.toStringAsFixed(2);
                ethRate = rawEthRate.toStringAsFixed(2);
                ltcRate = rawLtcRate.toStringAsFixed(2);
            });
            print("Updated");
        }
        catch(e) {
            print(e);
        }
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('🤑 Coin Ticker'),
            ),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                    RateCard(
                        rate: btcRate,
                        coin: 'BTC',
                        currency: selectedCurrency,
                    ),
                    RateCard(
                        rate: ethRate,
                        coin: 'ETH',
                        currency: selectedCurrency,
                    ),
                    RateCard(
                        rate: ltcRate,
                        coin: 'LTC',
                        currency: selectedCurrency,
                    ),
                    Container(
                        height: 150.0,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(bottom: 30.0),
                        color: Colors.lightBlue,
                        child: Platform.isIOS ? iOSPicker() : androidPicker(),
                    ),
                ],
            ),
        );
    }
}


