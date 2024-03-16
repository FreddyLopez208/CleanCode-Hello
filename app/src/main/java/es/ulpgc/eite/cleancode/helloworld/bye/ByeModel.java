package es.ulpgc.eite.cleancode.helloworld.bye;

import es.ulpgc.eite.cleancode.helloworld.hello.HelloContract;
import es.ulpgc.eite.cleancode.helloworld.hello.HelloModel;

public class ByeModel implements ByeContract.Model{
    public static String TAG = ByeModel.class.getSimpleName();

    private String message;

    public ByeModel(String message) {
        this.message = message;
    }

    @Override
    public String getByeMessage() {
        return message;
    }

}
