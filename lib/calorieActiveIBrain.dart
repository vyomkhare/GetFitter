class ActiveIBrain{
  ActiveIBrain({this.weight});

  final int weight;
  double lwm;
  double mwm;
  double gwm;

  String getLWM(){
    lwm= 13*2.205*weight;
    return lwm.toStringAsFixed(0);
  }

  String getMWM(){
    mwm= 15.5*2.205*weight;
    return mwm.toStringAsFixed(0);
  }

  String getGWM(){
    gwm= 20*2.205*weight;
    return gwm.toStringAsFixed(0);
  }
}