package jp.mztm.umhr.net
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.net.DatagramSocket;
	/**
	 * ...
	 * @author umhr
	 */
	public class GetLocalAddress extends EventDispatcher
	{
		private var _datagramSocket:DatagramSocket;
		private var _localAddress:String = "";
		public function GetLocalAddress() 
		{
			
		}
		public function start():void {
			_datagramSocket = new DatagramSocket();
			_datagramSocket.addEventListener(IOErrorEvent.IO_ERROR, commandSock_ioError);
			_datagramSocket.addEventListener(Event.ACTIVATE, commandSock_activate);
			try
			{
				_datagramSocket.connect("192.168.0.254", 50000 );
			}
			catch ( e:Error )
			{
				trace( e.message );
			}
		}
		
		private function commandSock_ioError(e:IOErrorEvent):void 
		{
			dispatchEvent(e);
			close();
		}
		
		private function commandSock_activate(e:Event):void 
		{
			_localAddress = _datagramSocket.localAddress;
			close();
			dispatchEvent(new Event(Event.COMPLETE));
		}
		
		public function get localAddress():String {
			return _localAddress;
		}
		
		private function close():void {
			_datagramSocket.removeEventListener( IOErrorEvent.IO_ERROR, commandSock_ioError);
			_datagramSocket.removeEventListener(Event.ACTIVATE, commandSock_activate);
			_datagramSocket.close();
			_datagramSocket = null;
		}
		
	}

}