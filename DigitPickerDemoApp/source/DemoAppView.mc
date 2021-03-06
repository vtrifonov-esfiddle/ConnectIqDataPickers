using Toybox.WatchUi as Ui;
using Toybox.Lang;

class DemoAppView extends Ui.View {
	private var mDemoAppModel;

    function initialize(model) {
        View.initialize();
        me.mDemoAppModel = model;
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
        
        var pickerOutput = View.findDrawableById("pickerOutput");
        pickerOutput.setText(Lang.format("$1$:$2$", [me.mDemoAppModel.h, me.mDemoAppModel.mm.format("%02d")]));
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

}
