package es.ulpgc.eite.cleancode.helloworld.hello;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import es.ulpgc.eite.cleancode.helloworld.R;


public class HelloActivity
    extends AppCompatActivity implements HelloContract.View {

  public static String TAG = HelloActivity.class.getSimpleName();


  HelloContract.Presenter presenter;

  Button sayHelloButton, goByeButton;
  TextView helloMessage;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_hello);

    getSupportActionBar().setTitle(R.string.hello_screen_title);

    sayHelloButton = findViewById(R.id.sayHelloButton);
    goByeButton = findViewById(R.id.goByeButton);
    helloMessage = findViewById(R.id.helloMessage);

    sayHelloButton.setOnClickListener(v -> presenter.sayHelloButtonClicked());

    goByeButton.setOnClickListener(v -> presenter.goByeButtonClicked());

    sayHelloButton.setText(getSayHelloButtonLabel());
    goByeButton.setText(getGoByeButtonLabel());

    /*
    if(savedInstanceState == null) {
      AppMediator.resetInstance();
    }
    */

    // do the setup
    HelloScreen.configure(this);

  }

  @Override
  protected void onResume() {
    super.onResume();

    // do some work
    presenter.onResumeCalled();
  }

  @Override
  public void displayHelloData(HelloViewModel viewModel) {
    Log.e(TAG, "displayHelloData()");

    // deal with the data
    helloMessage.setText(viewModel.helloMessage);
  }


  private String getGoByeButtonLabel() {
    return getResources().getString(R.string.go_bye_button_label);
  }

  private String getSayHelloButtonLabel() {
    return getResources().getString(R.string.say_hello_button_label);
  }

  @Override
  public void injectPresenter(HelloContract.Presenter presenter) {
    this.presenter = presenter;
  }
}
