package jp.mztm.umhr.net.httpServer  
{
	import flash.utils.ByteArray;
	
	/**
	 * ...
	 * @author umhr
	 */
	public class ResponceData 
	{
		private var _location:String;
		private var _status:int;
		private var _byteArray:ByteArray = new ByteArray();
		public var serverName:String = "NanoHTTPServer";
		public function ResponceData(status:int = 200) 
		{
			_status = status;
		}
		
		public function setLocation(location:String):ResponceData {
			_location = location;
			//trace(_location);
			return this;
		}
		
		public function setByteArray(byteArray:ByteArray):ResponceData {
			_byteArray = byteArray;
			return this;
		}
		public function writeUTFBytes(utfBytes:String):ResponceData {
			_byteArray.writeUTFBytes(utfBytes);
			return this;
		}
		
		public function toByteArray(extention:String = ".html", fileName:String = null):ByteArray {
			var text:String = "HTTP/1.1 200 OK\r\n";
			if (_status == 301) {
				text = "HTTP/1.0 301 Moved Permanently\r\n";
			}else if (_status == 400) {
				text = "HTTP/1.1 400 Bad Request\r\n";
				_byteArray.writeMultiByte("<html><body><h2>400 Bad Request</h2></body></html>", "utf-8");
			}else if (_status == 401) {
				text = "HTTP/1.1 401 Authorization Required\r\n";
				_byteArray.writeMultiByte("<html><body><h2>401 Authorization Required</h2></body></html>", "utf-8");
			}else if (_status == 404) {
				text = "HTTP/1.0 404 Not Found\r\n";
				_byteArray.writeMultiByte("<html><body><h2>404 Not Found</h2></body></html>", "utf-8");
			}
			
			var dateStr:String = dateFormat(new Date());
			text += "Date: " + dateStr + " GMT\r\n";
			text += "Server: " + serverName+"\r\n";
			text += "Accept-Ranges: bytes\r\n";
			text += "Access-Control-Allow-Origin: *\r\n";// jsからjsonを読めるように。
			text += "Content-Length: " + _byteArray.length + "\r\n";
			text += "Content-Type: " + contentTypeFromExtention(extention) + "\r\n";
			if (fileName) {
				text += 'Content-Disposition: inline; filename="' + fileName + '"\r\n';
			}
			text += "Cache-Control: no-cache\r\n";
			if (_status == 301) {
				text += "Location: " + _location + "\r\n";
			}else if (_status == 401) {
				text += 'WWW-Authenticate: Basic realm="SECRET AREA"\r\n';
			}
			text += "\r\n";
			
			var byteArray:ByteArray = new ByteArray();
			byteArray.writeMultiByte(text, "utf-8");
			byteArray.writeBytes(_byteArray);
			
			return byteArray;
		}
		
		/**
		 * @param	date
		 * @return	"EEE, DD MMM YYYY JJ:NN:SS"で返す。
		 */
		private function dateFormat(date:Date):String {
			var result:String = "";
			var dateList:Array = date.toUTCString().split(" ");
			result += dateList[0] + ", ";
			result += dateList[2] + " ";
			result += dateList[1] + " ";
			result += dateList[4] + " ";
			result += dateList[3] + " ";
			return result;
		}
		
		private function contentTypeFromExtention(extention:String):String {
			var result:String;
			var list:Array/*Array*/ = [
				["application/json", ".json"],
				["application/pdf", ".pdf"],
				["application/x-shockwave-flash", ".swf"],
				["application/zip", ".zip"],
				["audio/mg4", ".m4a"],
				["audio/mpeg", ".mp3", ".mpg", ".mpeg"],
				["image/gif", ".gif"],
				["image/jpeg", ".jpg", ".jpeg"],
				["image/png", ".png"],
				["image/x-icon", ".ico"],
				["text/css", ".css"],
				["text/csv", ".csv"],
				["text/html", ".html", ".htm", ".cgi"],
				["text/javascript", ".js"],
				["text/plain", ".txt", ".xml"]
				];
			var ex:String;
			var n:int = list.length;
			var m:int;
			loop:for (var i:int = 0; i < n; i++) 
			{
				m = list[i].length;
				for (var j:int = 1; j < m; j++) 
				{
					if (list[i][j] == extention) {
						result = list[i][0];
						break loop;
					}
				}
			}
			return result;
		}
		
		
		public function clone():ResponceData {
			var result:ResponceData = new ResponceData(_status);
			result._byteArray = _byteArray;
			result._location = _location;
			result.serverName = serverName;
			return result;
		}
		public function toString():String {
			var result:String = "ResponceData:{";
			result += "serverName:" + serverName;
			result += "}";
			return result;
		}
		
	}
	
}