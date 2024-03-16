package es.ulpgc.eite.cleancode.helloworld.hello;


import androidx.test.espresso.ViewInteraction;
import androidx.test.filters.LargeTest;
import androidx.test.rule.ActivityTestRule;
import androidx.test.runner.AndroidJUnit4;
import androidx.test.uiautomator.UiDevice;

import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;

import es.ulpgc.eite.cleancode.helloworld.R;

import static androidx.test.espresso.Espresso.onView;
import static androidx.test.espresso.action.ViewActions.click;
import static androidx.test.espresso.assertion.ViewAssertions.matches;
import static androidx.test.espresso.matcher.ViewMatchers.withId;
import static androidx.test.espresso.matcher.ViewMatchers.withText;
import static androidx.test.platform.app.InstrumentationRegistry.getInstrumentation;

@SuppressWarnings("ALL")
@LargeTest
@RunWith(AndroidJUnit4.class)
public class LandscapeTest {

  private static final long DELAY = 0;

  @Rule
  public ActivityTestRule<HelloActivity> mActivityTestRule =
      new ActivityTestRule<>(HelloActivity.class);

  @Test
  public void instrumentedTest() {

    // GIVEN
    ViewInteraction textView0 = onView(withId(R.id.helloMessage));
    textView0.check(matches(withText("?")));

    try {

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }
    
    // WHEN
    ViewInteraction appCompatButton = onView(withId(R.id.sayHelloButton));
    appCompatButton.perform(click());

    try {

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }
    
    // THEN & GIVEN
    ViewInteraction textView = onView(withId(R.id.helloMessage));
    textView.check(matches(withText("Hello World!")));

    // -------------------------

    // WHEN

    try {

      Thread.sleep(DELAY);

      UiDevice device = UiDevice.getInstance(getInstrumentation());
      device.setOrientationLeft();

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }


    /*
    mActivityTestRule.getActivity()
        .setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
    */

    // THEN & GIVEN
    ViewInteraction textView2 = onView(withId(R.id.helloMessage));
    textView2.check(matches(withText("Hello World!")));

    try {

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }

    // -------------------------

    // WHEN
    ViewInteraction appCompatButton2 = onView(withId(R.id.goByeButton));
    appCompatButton2.perform(click());

    try {

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }

    // THEN & GIVEN
    ViewInteraction textView3 = onView(withId(R.id.byeMessage));
    textView3.check(matches(withText("Hello World!")));

    try {

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }

    // -------------------------

    // WHEN
    ViewInteraction appCompatButton3 = onView(withId(R.id.sayByeButton));
    appCompatButton3.perform(click());

    try {

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }

    // THEN & GIVEN
    ViewInteraction textView4 = onView(withId(R.id.byeMessage));
    textView4.check(matches(withText("Bye World!")));

    // -------------------------

    // WHEN

    try {

      Thread.sleep(DELAY);

      UiDevice device = UiDevice.getInstance(getInstrumentation());
      device.setOrientationNatural();

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }

    /*
    mActivityTestRule.getActivity()
        .setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
    */

    // THEN & GIVEN
    ViewInteraction textView5 = onView(withId(R.id.byeMessage));
    textView5.check(matches(withText("Bye World!")));


    try {

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }

    // -------------------------

    // WHEN
    ViewInteraction appCompatButton4 = onView(withId(R.id.goHelloButton));
    appCompatButton4.perform(click());

    try {

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }

    // THEN & GIVEN
    ViewInteraction textView6 = onView(withId(R.id.helloMessage));
    textView6.check(matches(withText("Bye World!")));

    // -------------------------


    // WHEN

    try {

      Thread.sleep(DELAY);

      UiDevice device = UiDevice.getInstance(getInstrumentation());
      device.setOrientationLeft();

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }

    /*
    mActivityTestRule.getActivity()
        .setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
    */


    // THEN & GIVEN
    ViewInteraction textView7 = onView(withId(R.id.helloMessage));
    textView7.check(matches(withText("Bye World!")));

    // -------------------------

    try {

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }
    
    // WHEN
    ViewInteraction appCompatButton5 = onView(withId(R.id.sayHelloButton));
    appCompatButton5.perform(click());

    try {

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }
    
    // THEN & GIVEN
    ViewInteraction textView8 = onView(withId(R.id.helloMessage));
    textView8.check(matches(withText("Hello World!")));

    // -------------------------

    // WHEN

    try {

      Thread.sleep(DELAY);

      UiDevice device = UiDevice.getInstance(getInstrumentation());
      device.setOrientationNatural();

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }

    /*
    mActivityTestRule.getActivity()
        .setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
    */

    // THEN
    ViewInteraction textView9 = onView(withId(R.id.helloMessage));
    textView9.check(matches(withText("Hello World!")));


    try {

      Thread.sleep(DELAY);

    } catch (Exception e) {
      e.printStackTrace();
    }

  }

}
