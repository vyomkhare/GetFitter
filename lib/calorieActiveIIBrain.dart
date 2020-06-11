class ActiveIIBrain{
  ActiveIIBrain({this.weight});

  final int weight;
  double lwv;
  double mwv;
  double gwv;

  String getLWV(){
    lwv= 15*2.205*weight;
    return lwv.toStringAsFixed(0);
  }

  String getMWV(){
    mwv= 17.5*2.205*weight;
    return mwv.toStringAsFixed(0);
  }

  String getGWV(){
    gwv= 22*2.205*weight;
    return gwv.toStringAsFixed(0);
  }
}