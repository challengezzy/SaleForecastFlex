package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.SysConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BSysBakLog")]
	
	public class BSysBakLog
	{
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var excuteTime:Date;
		public var beginPeroid:int;
		public var endPeroid:int;
		public var bakHistoryData:int = BizConst.GLOBAL_YESNO_NO;
		public var bakHistoryAdjustLog:int= BizConst.GLOBAL_YESNO_NO;
		public var bakPriceData:int= BizConst.GLOBAL_YESNO_NO;
		public var bakForecastData:int= BizConst.GLOBAL_YESNO_NO;
		public var bakForecastMakeLog:int= BizConst.GLOBAL_YESNO_NO;
		public var operatorUserName:String;
		public var description:String;
		public var comments:String;
		
		public function BSysBakLog()
		{
		}
		
		// BSysBakLog 不会被编辑，所以这里不写 copy 方法	
	}
}