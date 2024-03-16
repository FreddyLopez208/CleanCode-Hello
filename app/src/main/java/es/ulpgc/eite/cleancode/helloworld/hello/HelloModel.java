package es.ulpgc.eite.cleancode.helloworld.hello;

import android.util.Log;

public class HelloModel implements HelloContract.Model {

  public static String TAG = HelloModel.class.getSimpleName();

  private String message;

  public HelloModel(String message) {
    this.message = message;
  }

  @Override
  public String getHelloMessage() {
    return message;
  }

}
