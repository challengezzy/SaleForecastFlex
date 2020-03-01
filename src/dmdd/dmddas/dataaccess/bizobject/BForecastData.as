package dmdd.dmddas.dataaccess.bizobject
{
	
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.SysConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastData")]		
	public class BForecastData
	{
		public function BForecastData()
		{
			//TODO: implement function
		}
		
		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var period:int;
		public var value:Number;
		public var status:int = BizConst.FORECASTDATA_STATUS_ACTIVE;
		public var initTime:Date;
		public var updateTime:Date;
		public var comments:String = "";
		public var bizData:BBizData;
		public var organization:BOrganization;
		public var product:BProduct;
		
		[Transient]			
		public var oldValue:Number;

	}
}