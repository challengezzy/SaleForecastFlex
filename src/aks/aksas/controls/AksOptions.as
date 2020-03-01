package aks.aksas.controls
{
	[Bindable]
	public class AksOptions
	{
 
//		public function AksOptions()
//		{
//		}
		
		/**
		 * ID 不同的项目标识
		 */ 
		public static var id:String = "";
		
		/**
		 * 服务器连接
		 */		
		public static var serverName:String = "127.0.0.1";
		public static var serverPort:String = "8080";
		public static var contextRoot:String = "";
		
		//add by luowang 增加了更新服务器地址和端口选项
		public static var updateServerName:String="127.0.0.1";
		public static var updateServerPort:String="8080";
		
		//add by luowang 增加了存储配置项的目录
		public static var configFilePath:String = "";
		public static var configDefaultFilePath:String = "c:\\windows\\yc\\";
	
		public static var serverConfigName:String = "";
		
		public static function getFileName4serverOptions():String
		{
			return "aks." + id + "." + "serveroptons.txt"; 
		}
		
		public static function getServerOption():String
		{
			return serverName + ":" + serverPort + "/" + contextRoot; 
		}
		
		public static function getFileName4UpdateOptions():String
		{
			return "aks." + id + "." + "Updateoptions.txt";
		}
		
		public static function getUpdateServerOption():String
		{
			return updateServerName+":"+updateServerPort;//用-分割不同的参数组
		}
		
		public static function getFileName4ConfigFilePath():String
		{
			return "aks."+id+".configFilePath.txt";
		}
		
		public static function getConfigFilePath():String
		{
			return configFilePath+"aks.dmdd.xml";
		}
		
		public static function getConfigServerInfo():String
		{
			return "server name:"+serverConfigName+" ip:"+serverName;
		}
		
		/**
		 * 页面尺寸
		 */ 
		public static var pageSize:int = 20;
		public static function getFileName4pageSize():String
		{
			return "aks." + id + "." + "pagesize.txt"; 
		}
		
		public static function getPageSize():int
		{
			return pageSize; 
		}
		
	}
}