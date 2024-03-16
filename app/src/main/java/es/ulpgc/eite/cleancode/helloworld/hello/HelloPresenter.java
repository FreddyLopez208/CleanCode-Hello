package es.ulpgc.eite.cleancode.helloworld.hello;

import static androidx.core.content.ContextCompat.startActivity;

import android.content.Context;
import android.content.Intent;

import androidx.appcompat.app.AppCompatActivity;

import java.lang.ref.WeakReference;

import es.ulpgc.eite.cleancode.helloworld.app.AppMediator;
import es.ulpgc.eite.cleancode.helloworld.app.ByeToHelloState;
import es.ulpgc.eite.cleancode.helloworld.app.HelloToByeState;
import es.ulpgc.eite.cleancode.helloworld.bye.ByeActivity;

public class HelloPresenter extends AppCompatActivity implements HelloContract.Presenter {

  public static String TAG = HelloPresenter.class.getSimpleName();

  private WeakReference<HelloContract.View> view;
  private HelloState state;
  private HelloContract.Model model;
  private AppMediator mediator;

  public HelloPresenter(AppMediator mediator) {
    this.mediator = mediator;
    state = mediator.getHelloState();
  }


  @Override
  public void onResumeCalled() {
    //Log.e(TAG, "onResumeCalled()");

    ByeToHelloState savedState = getDataFromByeScreen();
    if(savedState != null){

      // set passed state
      state.helloMessage = savedState.message;
    }

    view.get().displayHelloData(state);
  }

  private void startHelloMessageAsyncTask() {
    //Log.e(TAG, "startHelloMessageAsyncTask()");

    state.helloMessage = model.getHelloMessage();

    view.get().displayHelloData(state);
  }

  @Override
  public void sayHelloButtonClicked() {
    //Log.e(TAG, "sayHelloButtonClicked()");

    state.helloMessage = "?";

    view.get().displayHelloData(state);

    // call the model
    startHelloMessageAsyncTask();

  }

  @Override
  public void goByeButtonClicked() {
    //Log.e(TAG, "goByeButtonClicked()");

    HelloToByeState newState = new HelloToByeState(state.helloMessage);
    passDataToByeScreen();
    navigateToByeScreen();
  }

  private ByeToHelloState getDataFromByeScreen() {
    return mediator.getByeToHelloState();
  }

  private void passDataToByeScreen() {
    // Obtener una instancia del AppMediator
    AppMediator mediator = AppMediator.getInstance();

    // Crear un nuevo estado para pasar a la pantalla Bye
    HelloToByeState state1 = new HelloToByeState(state.helloMessage);

    // Establecer el estado en el AppMediator
    mediator.setHelloToByeState(state1); }

  private void navigateToByeScreen() {

      // Crear un Intent para iniciar la actividad ByeActivity
      Intent intent = new Intent((Context) view.get(), ByeActivity.class);

      // Iniciar la actividad
      startActivity(intent);

  }

  @Override
  public void injectView(WeakReference<HelloContract.View> view) {
    this.view = view;
  }

  @Override
  public void injectModel(HelloContract.Model model) {
    this.model = model;
  }
}
