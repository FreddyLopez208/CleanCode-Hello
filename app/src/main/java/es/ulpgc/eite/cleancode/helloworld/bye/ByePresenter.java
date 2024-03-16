package es.ulpgc.eite.cleancode.helloworld.bye;

import android.content.Context;
import android.content.Intent;

import androidx.appcompat.app.AppCompatActivity;

import java.lang.ref.WeakReference;

import es.ulpgc.eite.cleancode.helloworld.app.AppMediator;
import es.ulpgc.eite.cleancode.helloworld.app.ByeToHelloState;
import es.ulpgc.eite.cleancode.helloworld.app.HelloToByeState;
import es.ulpgc.eite.cleancode.helloworld.hello.HelloActivity;


public class ByePresenter extends AppCompatActivity implements ByeContract.Presenter {
    public static String TAG = ByePresenter.class.getSimpleName();

    private WeakReference<ByeContract.View> view;
    private ByeState state;
    private ByeContract.Model model;
    private AppMediator mediator;

    public ByePresenter(AppMediator mediator) {
        this.mediator = mediator;
        state = mediator.getByeState();
    }


    @Override
    public void onResumeCalled() {

        HelloToByeState savedState = getDataFromHelloScreen();
        if(savedState != null){

            // set passed state
            state.byeMessage = savedState.message;
        }

        view.get().displayByeData(state);
    }

    private void startByeMessageAsyncTask() {

        state.byeMessage = model.getByeMessage();

        view.get().displayByeData(state);
    }

    @Override
    public void sayByeButtonClicked() {

        state.byeMessage = "?";

        view.get().displayByeData(state);

        // call the model
        startByeMessageAsyncTask();

    }

    @Override
    public void goHelloButtonClicked() {

        ByeToHelloState newState = new ByeToHelloState(state.byeMessage);
        passDataToHelloScreen();
        navigateToHelloScreen();
    }

    private HelloToByeState getDataFromHelloScreen() {
        return mediator.getHelloToByeState();
    }

    private void passDataToHelloScreen() {
        mediator.getByeToHelloState();
    }

    private void navigateToHelloScreen() {
        Intent intent = new Intent((Context) view.get(), HelloActivity.class);
        startActivity(intent);
    }

    @Override
    public void injectView(WeakReference<ByeContract.View> view) {
        this.view = view;
    }

    @Override
    public void injectModel(ByeContract.Model model) {
        this.model = model;
    }
}
