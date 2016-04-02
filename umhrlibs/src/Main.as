package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import jp.mztm.umhr.create.ARGB;
	import jp.mztm.umhr.create.ColorUtils;
	import jp.mztm.umhr.cs.system.drawing.Color;
	import jp.mztm.umhr.logging.Log;
	
	/**
	 * ...
	 * @author umhr
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			addChild(new Log());
			Log.trace("hoge",0xFFFFFFFF);
			Log.trace(new ARGB().toString() );
			//Log.trace(new ARGB(Color.TOMATO).toString() );
			Log.trace(Color.TOMATO.toString(16));
			//Log.trace(Color.argbFromRGB(Color.TOMATO, 0x33).toString(16));
			//Log.trace(Color.rgbFromARGB(Color.argbFromRGB(Color.TOMATO, 0x33)).toString(16));
			
			
		}
		
	}
	
}