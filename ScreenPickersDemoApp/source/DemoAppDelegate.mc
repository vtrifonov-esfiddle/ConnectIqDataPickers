using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;

class DemoAppDelegate extends Ui.BehaviorDelegate {	
    function initialize() {
        BehaviorDelegate.initialize();
    }
	
	function onSelect() {
        var colors = [Gfx.COLOR_BLUE, Gfx.COLOR_DK_BLUE, Gfx.COLOR_DK_RED, Gfx.COLOR_DK_GREEN, Gfx.COLOR_DK_GRAY, Gfx.COLOR_RED, Gfx.COLOR_YELLOW, Gfx.COLOR_ORANGE, Gfx.COLOR_GREEN, Gfx.COLOR_LT_GRAY, Gfx.COLOR_PINK, Gfx.COLOR_PURPLE, Gfx.COLOR_WHITE];
	        
        Ui.pushView(new ScreenPickers.ColorPickerView(colors[0]), new ScreenPickers.ColorPickerDelegate(colors, method(:onColorSelected)), Ui.SLIDE_LEFT);  	
    }
	
	private function onColorSelected(color) {
		System.println("Color picked: " + color);
	}		

}