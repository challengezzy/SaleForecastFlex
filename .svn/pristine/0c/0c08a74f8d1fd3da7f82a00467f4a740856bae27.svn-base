package aks.aksas.controls
{
//	import flash.filesystem.File;
//	import flash.filesystem.FileMode;
//	import flash.filesystem.FileStream;
	import mx.controls.Alert;

	public class AksOptionsSetting
	{
//		private var _file:File = new File();            // 配置文件
//		private var _fs:FileStream = new FileStream();  // 文件流
		
		public var setting:XML;        // 配置
		
		// 默认配置
		private var _dftSetting:XML =    
			<setting>
				<option name="Server1">
				 	<servername>127.0.0.1</servername>
					<serverport>8080</serverport>
					<contextroot>dmdd</contextroot>
					<updateservername>127.0.01</updateservername>
					<updateserverport>8080</updateserverport>
					<pagesize>20</pagesize>
				</option>
			</setting>;
		
			
			/**
			 * 配置文件路径
			 * */
			public function AksOptionsSetting(url:String = null)
			{
				if (null != url)
				{
					//loadFile(url);
				}
			}
		
			/**
			 * 加载配置文件
			 * */
//			public function loadFile(url:String):void
//			{
//				_file = new File(url);
//				if(_file.exists)
//				{
//					_fs.open(_file,FileMode.READ);
//					_fs.close();
//				}
//				else
//				{
//					try
//					{
//						_fs.open(_file, FileMode.UPDATE);
//						_fs.close();
//					}
//					catch(e:Error)
//					{
//						
//					}
//				}
//			}
//		
//			/**
//			 * 保存配置
//			 * */
//			public function set setting(setting:XML):void
//			{
//				try
//				{
//					_setting = setting;
//					_fs.open(_file, FileMode.WRITE);
//					_fs.writeUTFBytes(_setting.toString());
//					_fs.close();
//				}
//				catch(e:Error)
//					{
//					
//					}
//			}
//			
//			/**
//			 * 读取配置
//			 * */
//			public function get setting():XML
//			{
//				_fs.open(_file, FileMode.READ);
//				try
//				{
//					_setting = new XML(_fs.readUTFBytes(_fs.bytesAvailable));
//				}
//				catch (e:Error)
//				{
//				// nothing
//				}
//				finally
//				{
//					// 读取失败或无配置, 重置为默认配置
//					if (null == _setting || '' == _setting.toString())
//					{				
//						_setting = _dftSetting;
//						
//					}
//				}
//					_fs.close();
//					return _setting;
//			}
			
			/**
			 * 删除节点
			 * */
			public function deleteByIndex(xmlNode:XML,index:Number):XML
			{ 
				var newStr:String=''; 
				newStr+='<'+xmlNode.localName(); 
				for each (var att:XML in xmlNode.attributes())
				{ 
					newStr+=' '+att.localName()+'="'+att.toString()+'"'; 
				} 
				newStr+='>'; 
				var i:Number=0; 
				for each(var node:XML in xmlNode.children())
				{ 
				if(i!=index) 
					newStr+=node.toXMLString(); 
				i++; 
				} 
				newStr+='</'+xmlNode.localName()+'/>'; 
				return new XML(newStr); 
			} 
			

	}
}