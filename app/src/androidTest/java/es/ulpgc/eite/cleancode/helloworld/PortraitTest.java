package es.ulpgc.eite.cleancode.helloworld.hello;


import androidx.test.espresso.ViewInteraction;
import androidx.test.filters.LargeTest;
import androidx.test.rule.ActivityTestRule;
import androidx.test.runner.AndroidJUnit4;

import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;

import es.ulpgc.eite.cleancode.helloworld.R;

import static androidx.test.espresso.Espresso.onView;
import static androidx.test.espresso.Espresso.pressBack;
import static androidx.test.espresso.action.ViewActions.click;
import static androidx.test.espresso.assertion.ViewAssertions.matches;
import static androidx.test.espresso.matcher.ViewMatchers.isDisplayed;
import static androidx.test.espresso.matcher.ViewMatchers.withId;
import static androidx.test.espresso.matcher.ViewMatchers.withText;
import static org.hamcrest.Matchers.allOf;

@SuppressWarnings("ALL")
@LargeTest
@RunWith(AndroidJUnit4.class)
public class PortraitTest {


  @Rule
  public ActivityTestRule<HelloActivity> mActivityTestRule =
      new ActivityTestRule<>(HelloActivity.class);

  @Test
  public void instrumentedTest() {

    // GIVEN
    ViewInteraction textView = onView(
        allOf(withId(R.id.helloMessage), withText("?"),isDisplayed()));
    textView.check(matches(withText("?")));

    // WHEN
    ViewInteraction appCompatButton = onView(
        allOf(withId(R.id.goByeButton), withText("Go Bye"), isDisplayed()));
    appCompatButton.perform(click());

    // THEN & GIVEN
    ViewInteraction textView2 = onView(
        allOf(withId(R.id.byeMessage), withText("?"), isDisplayed()));
    textView2.check(matches(withText("?")));

    // -------------------------


    // WHEN
    ViewInteraction appCompatButton2 = onView(
        allOf(withId(R.id.sayByeButton), withText("Say Bye"), isDisplayed()));
    appCompatButton2.perform(click());

    // THEN & GIVEN
    ViewInteraction textView3 = onView(
        allOf(withId(R.id.byeMessage), withText("Bye World!"),isDisplayed()));
    textView3.check(matches(withText("Bye World!")));

    // -------------------------

    // WHEN
    pressBack();

    // THEN & GIVEN
    ViewInteraction textView4 = onView(
        allOf(withId(R.id.helloMessage), withText("?"), isDisplayed()));
    textView4.check(matches(withText("?")));

    // -------------------------

    // WHEN
    ViewInteraction appCompatButton3 = onView(
        allOf(withId(R.id.goByeButton), withText("Go Bye"),isDisplayed()));
    appCompatButton3.perform(click());

    // THEN & GIVEN
    ViewInteraction appCompatButton4 = onView(
        allOf(withId(R.id.sayByeButton), withText("Say Bye"),isDisplayed()));
    appCompatButton4.perform(click());

    // -------------------------

    // WHEN
    pressBack();

    // THEN & GIVEN
    ViewInteraction textView5 = onView(
        allOf(withId(R.id.helloMessage), withText("?"),  isDisplayed()));
    textView5.check(matches(withText("?")));

    // -------------------------

    // WHEN
    ViewInteraction appCompatButton5 = onView(
        allOf(withId(R.id.sayHelloButton), withText("Say Hello"),isDisplayed()));
    appCompatButton5.perform(click());

    // THEN & GIVEN
    ViewInteraction textView6 = onView(
        allOf(withId(R.id.helloMessage), withText("Hello World!"),isDisplayed()));
    textView6.check(matches(withText("Hello World!")));

    // -------------------------

    // WHEN
    ViewInteraction appCompatButton6 = onView(
        allOf(withId(R.id.goByeButton), withText("Go Bye"), isDisplayed()));
    appCompatButton6.perform(click());

    // THEN & GIVEN
    ViewInteraction textView7 = onView(
        allOf(withId(R.id.byeMessage), withText("Hello World!"),isDisplayed()));
    textView7.check(matches(withText("Hello World!")));

    // -------------------------

    // WHEN
    ViewInteraction appCompatButton7 = onView(
        allOf(withId(R.id.sayByeButton), withText("Say Bye"), isDisplayed()));
    appCompatButton7.perform(click());

    // THEN & GIVEN
    ViewInteraction textView8 = onView(
        allOf(withId(R.id.byeMessage), withText("Bye World!"), isDisplayed()));
    textView8.check(matches(withText("Bye World!")));

    // -------------------------

    // WHEN
    pressBack();

    // THEN & GIVEN
    ViewInteraction textView9 = onView(
        allOf(withId(R.id.helloMessage), withText("Hello World!"),isDisplayed()));
    textView9.check(matches(withText("Hello World!")));

    // -------------------------

    // WHEN
    ViewInteraction appCompatButton8 = onView(
        allOf(withId(R.id.goByeButton), withText("Go Bye"), isDisplayed()));
    appCompatButton8.perform(click());

    // THEN & GIVEN
    ViewInteraction appCompatButton9 = onView(
        allOf(withId(R.id.sayByeButton), withText("Say Bye"), isDisplayed()));
    appCompatButton9.perform(click());

    // -------------------------

    // WHEN
    ViewInteraction appCompatButton10 = onView(
        allOf(withId(R.id.goHelloButton), withText("Go Hello"), isDisplayed()));
    appCompatButton10.perform(click());

    // THEN
    ViewInteraction textView10 = onView(
        allOf(withId(R.id.helloMessage), withText("Bye World!"),isDisplayed()));
    textView10.check(matches(withText("Bye World!")));


  }

}
