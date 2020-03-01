package dmdd.dmddas.dataaccess.bizobject
{
	
	import dmdd.dmddas.common.constant.SysConst;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastMakeLogAuditItem")]		
	public class BForecastMakeLogAuditItem
	{
		public function BForecastMakeLogAuditItem()
		{
			//TODO: implement function
		}
		
		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var comments:String = "";
		public var forecastMakeLog:BForecastMakeLog;
		public var bizData:BBizData;
				
		// BForecastMakeLogAuditItem 不会被编辑，这里不写copy方法		

	}
}