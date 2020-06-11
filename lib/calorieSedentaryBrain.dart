class SedentaryBrain{
  SedentaryBrain({this.weight});

  final int weight;
  double lws;
  double mws;
  double gws;

  String getLWS(){
    lws= 11*2.205*weight;
    return lws.toStringAsFixed(0);
  }

  String getMWS(){
    mws= 13.5*2.205*weight;
    return mws.toStringAsFixed(0);
  }

  String getGWS(){
    gws= 18*2.205*weight;
    return gws.toStringAsFixed(0);
  }
}