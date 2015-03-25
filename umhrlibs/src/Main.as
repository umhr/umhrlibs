package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import jp.mztm.umhr.create.Color;
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
			Log.trace("hoge");
			Log.trace(Color.TOMATO);
		}
		
	}
	
}