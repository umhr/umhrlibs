package examples 
{
	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	import jp.mztm.umhr.create.NineSlicer;
	/**
	 * ...
	 * @author umhr
	 */
	[SWF(width = 465, height = 465, backgroundColor = 0xCCCCCC, frameRate = 30)]
	public class NineSlicerMain extends Sprite 
	{
		
		[Embed(source="a1.png", mimeType="image/png")] 
		public static var MyImg0:Class;
		public function NineSlicerMain() 
		{
			init();
		}
		private function init():void 
		{
			if (stage) onInit();
			else addEventListener(Event.ADDED_TO_STAGE, onInit);
		}

		private function onInit(event:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onInit);
			// entry point
			
			var bitmap:Bitmap = new MyImg0();
			bitmap.x = 350;
			addChild(bitmap);
			
			//
			var bb:Bitmap = new Bitmap(NineSlicer.scale(bitmap.bitmapData, 270, 285));
			addChild(bb);
			
			
			
		}
	}
	
}