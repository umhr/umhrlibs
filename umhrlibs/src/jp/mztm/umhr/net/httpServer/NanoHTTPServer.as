package jp.mztm.umhr.net.httpServer
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.events.ServerSocketConnectEvent;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.net.ServerSocket;
	import flash.net.Socket;
	import flash.utils.ByteArray;
	
	[Event(name="connect",type="flash.events.ServerSocketConnectEvent")]
	/**
	 * RequestDataでBase64を使うので、as3crypto.swcをライブラリに追加すること。
	 * 参考
	 * http://help.adobe.com/ja_JP/FlashPlatform/reference/actionscript/3/flash/net/ServerSocket.html#includeExamplesSummary
	 * ...
	 * @author umhr
	 */
    public class NanoHTTPServer extends EventDispatcher
    {
		public var basePath:String = File.applicationDirectory.nativePath + "/html";
        private var serverSocket:ServerSocket = new ServerSocket();
		/**
		 * function onRequest(requestData:RequestData):ByteArray{ return null };
		 * 返り値がnullだとファイルを探して返します。ファイル以外を返したい場合はここでnull以外を返します。
		 * 
		 */
		public var onRequest:Function = function(requestData:RequestData):ByteArray { return null };
		public var onMessage:Function = function(message:String):void { return };
		private var requestData:RequestData;
		/**
		 * RequestDataでBase64を使うので、as3crypto.swcをライブラリに追加すること。
		 */
        public function NanoHTTPServer()
        {
        }
        
        public function bind(port:int = 80, ip:String = "127.0.0.1"):void
        {
            if ( serverSocket.bound ) { return };
            serverSocket.bind( port, ip );
            serverSocket.addEventListener( ServerSocketConnectEvent.CONNECT, onConnect );
            serverSocket.listen();
			
			onMessage("Bind to http://" + ip + ":" + port);
        }
		public function get boundTo():String {
			return serverSocket.localAddress + ":" + serverSocket.localPort;
		}
		
        private function onConnect( event:ServerSocketConnectEvent ):void
        {
            var socket:Socket = event.socket;
            socket.addEventListener( ProgressEvent.SOCKET_DATA, onClientSocketData );
			socket.addEventListener(IOErrorEvent.IO_ERROR, onError);
			
			dispatchEvent(new Event(ServerSocketConnectEvent.CONNECT));
            //Log.clear();
			
			onMessage( "Connection from " + socket.remoteAddress + ":" + socket.remotePort);
        }
		
		private function onError(e:Event):void 
		{
			onMessage(e.type);
		}
        
		public function dispose():void {
			//trace("NanoHTTPServer.dispose");
			if(serverSocket){
				serverSocket.close();
				serverSocket.removeEventListener(ServerSocketConnectEvent.CONNECT, onConnect);
				serverSocket = null;
			}
			onRequest = null;
			onMessage = null;
			requestData = null;
		}
        
		public function close():void {
			serverSocket.close();
		}
		
        private function onClientSocketData( event:ProgressEvent ):void
        {
			try
			{
				var bytes:ByteArray = new ByteArray();
				var socket:Socket = event.target as Socket;
				/*
				var str:String = socket.readMultiByte(socket.bytesAvailable, "us-ascii");
				*/
				socket.readBytes(bytes);
				requestData = new RequestData(bytes);
				
				if (requestData) {
					var byteArray:ByteArray = onRequest(requestData);
					if (byteArray) {
						socket.writeBytes(byteArray);
					}else {
						socket.writeBytes(getFile(requestData));
					}
				}else {
					socket.writeBytes(new ResponceData(400).toByteArray());
				}
				socket.flush();
				socket.close();
			}
			catch (error:Error)
			{
				onMessage(error.errorID + " " + error.message);
			}
		}
		/**
		 * requestDataで指定されたファイルを取得し、ByteArrayで返します。
		 * @param	requestData
		 * @return
		 */
		private function getFile(requestData:RequestData):ByteArray {
			var filePath:String = basePath + requestData.path;
			var file:File = File.applicationStorageDirectory.resolvePath(filePath);
			if (file.isDirectory) {
				var location:String = "http://" + requestData.host + requestData.path + "/";
				return new ResponceData(301).setLocation(location).toByteArray();
			}else if(file.exists){
				var content:ByteArray = new ByteArray();
				var stream:FileStream = new FileStream();
				stream.open( file, FileMode.READ );
				stream.readBytes(content);
				stream.close();
				return new ResponceData(200).setByteArray(content).toByteArray(requestData.extention);
			}else {
				return new ResponceData(404).toByteArray();
			}
			
		};
		
		
    }
}