package es.ulpgc.eite.cleancode.helloworld.bye;

import androidx.fragment.app.FragmentActivity;

import java.lang.ref.WeakReference;

import es.ulpgc.eite.cleancode.helloworld.R;
import es.ulpgc.eite.cleancode.helloworld.app.AppMediator;

public class ByeScreen {

    public static void configure(ByeContract.View view) {

        WeakReference<FragmentActivity> context =
                new WeakReference<>((FragmentActivity) view);

        String message = context.get().getString(R.string.bye_message);

        AppMediator mediator = AppMediator.getInstance();

        ByeContract.Presenter presenter = new ByePresenter(mediator);
        ByeContract.Model model = new ByeModel(message);
        presenter.injectView(new WeakReference<>(view));
        presenter.injectModel(model);

        view.injectPresenter(presenter);

    }
}
