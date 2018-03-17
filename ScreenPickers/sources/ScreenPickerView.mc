using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;
module ScreenPickers {
	class ScreenPickerView extends Ui.View {	
		function initialize() {
			View.initialize();
		}
		
		function onUpdate(dc) {		                
	        var up = new Rez.Drawables.up();
	        up.draw(dc);
	        var down = new Rez.Drawables.down();
	        down.draw(dc);        
	    }
	}
}