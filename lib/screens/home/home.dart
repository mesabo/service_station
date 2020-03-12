import 'package:flutter/material.dart';
import 'package:ivoirestation/consts/backgrounds.dart';

class Accueil extends StatefulWidget {
  final Color color;
  final String title;

  Accueil(this.color, this.title);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      height: MediaQuery.of(context).size.height / 2.6,
                      //width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              // CONSOMATION EN FRANC CFA
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                child: new InkWell(
                                  onTap: () {
                                    print("tapped");
                                  },
                                  child: Container(
                                    width: 160.0,
                                    height: 100.0,
                                    color: BGColor.greenbg,
                                    child: Column(
                                      children: <Widget>[
                                        ListTile(
                                          leading: Icon(
                                            Icons.assessment,
                                            size: 32.0,
                                            color: BGColor.whitebg,
                                          ),
                                          title: Text(
                                            "Conso",
                                            style: TextStyle(
                                                color: BGColor.whitebg,
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          "48815 FCFA",
                                          style: TextStyle(
                                              color: BGColor.whitebg,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              // SUIVI DEVARIATION DE CONSO EN %
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                child: new InkWell(
                                  onTap: () {
                                    print("tapped");
                                  },
                                  child: Container(
                                    width: 160.0,
                                    height: 100.0,
                                    color: BGColor.orangebg,
                                    child: Column(
                                      children: <Widget>[
                                        ListTile(
                                          leading: Icon(
                                            Icons.assessment,
                                            size: 32.0,
                                            color: BGColor.whitebg,
                                          ),
                                          title: Text(
                                            "Conso",
                                            style: TextStyle(
                                                color: BGColor.whitebg,
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30.0),
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                "30% ",
                                                style: TextStyle(
                                                    color: BGColor.whitebg,
                                                    fontSize: 20.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Icon(
                                                Icons.arrow_upward,
                                                size: 32.0,
                                                color: BGColor.whitebg,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // SCANNER LE REÇU D'ACHAT
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 20.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: new InkWell(
                                onTap: () {
                                  print("tapped");
                                },
                                child: Container(
                                  //width: 160.0,
                                  height: 50.0,
                                  color: BGColor.deeporangebg,
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.center_focus_weak,
                                      size: 48.0,
                                      color: BGColor.whitebg,
                                    ),
                                    title: Text(
                                      "Scanner votre reçu",
                                      style: TextStyle(
                                          color: BGColor.whitebg,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // TITRE DE L'HISTORIQUE
                          Expanded(
                              child: Container(
                            width: _width,
                            color: BGColor.primarybg,
                            child: Text(
                              "Historique des achats",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: BGColor.whitebg),
                            ),
                          ))
                        ],
                      ),
                    ),
                    new Expanded(child: _myListView(context)),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget _myListView(BuildContext context) {
// disposition en colonne du contenu de l'historique des ahats.
    Widget columnL = Expanded(
      child: Column(
        // align the text to the left instead of centered
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '123AB01',
            style: TextStyle(fontSize: 16),
          ),
          ListTile(
            title: Text('05-02-2020',
                style: TextStyle(fontSize: 14, color: BGColor.blackbg)),
            leading: Icon(
              Icons.date_range,
              color: BGColor.blackbg,
            ),
          ),
        ],
      ),
    );
    Widget columnR = Expanded(
      child: Column(
        // align the text to the left instead of centered
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '5L/3200 FCA',
            style: TextStyle(
              fontSize: 16,
              color: BGColor.blackbg,
            ),
          ),
          ListTile(
            title: Text(
              'à 18:30',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            leading: Icon(Icons.access_time, color: BGColor.blackbg),
          ),
        ],
      ),
    );

// affichons les éléments de l'historique
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                columnL,
                columnR,
              ],
            ),
          ),
        );
      },
    );
  }
}
