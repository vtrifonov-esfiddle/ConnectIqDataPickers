using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;

class DemoAppDelegate extends Ui.BehaviorDelegate {
	private var mDemoAppModel;
	
    function initialize(model) {
        BehaviorDelegate.initialize();
        me.mDemoAppModel = model;
    }
	
	function onSelect() {
		var durationPickerModel = new DigitsPicker.DurationPickerModel(3);
    	var hMmTimeLayoutBuilder = createHmmTimeLayoutBuilder();
		Ui.pushView(new DigitsPicker.DurationPickerView(durationPickerModel, hMmTimeLayoutBuilder), new DigitsPicker.DurationPickerDelegate(durationPickerModel, method(:onHmmDigitsPicked)), Ui.SLIDE_LEFT);   	
	}
	
	private function createHmmTimeLayoutBuilder() {
		var digitsLayout = new DigitsPicker.DigitsLayoutBuilder(Gfx.FONT_TINY);
		digitsLayout.setOutputXOffset(85);
		digitsLayout.addInitialHint("Pick H:MM");
		digitsLayout.addDigit({:minValue=>0, :maxValue=>9});
		digitsLayout.addSeparator("h");
		digitsLayout.addDigit({:minValue=>0, :maxValue=>5});
		digitsLayout.addDigit({:minValue=>0, :maxValue=>9});
		digitsLayout.addSeparator("m");
		return digitsLayout;
	}	
	
	private function onHmmDigitsPicked(digits) {
		me.mDemoAppModel.h = digits[0];
		me.mDemoAppModel.mm = digits[1] * 10 + digits[2];
		Ui.requestUpdate();
	}	

}