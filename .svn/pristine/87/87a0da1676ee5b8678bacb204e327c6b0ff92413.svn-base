package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastMakeLog")]	
	public class BForecastMakeLog
	{
		public function BForecastMakeLog()
		{
			//TODO: implement function
		}
		
		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var compilePeriod:int;
		public var actionType:int;
		public var submitTime:Date;
		public var submitter:String = "";
		public var description:String = "";
		public var comments:String = "";
		public var operatorUser:BOperatorUser;
		public var forecastMakeLogHfcItems:ArrayCollection = new ArrayCollection();
		public var forecastMakeLogProOrgs:ArrayCollection = new ArrayCollection();
		public var forecastMakeLogAuditItems:ArrayCollection = new ArrayCollection();
		public var isGetDeatil:Boolean = false;
		// BForecastMakeLog 不会被编辑，所以这里不写 copy 方法		

	}
}