package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BPeriodRollTask")]	
	public class BPeriodRollTask
	{
		public function BPeriodRollTask()
		{
			//TODO: implement function
		}
		
		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var compilePeriod:int;
		public var seqNo:int;
		public var category:int;
		public var status:int;		
		public var createTime:Date = null;
		public var beginTime:Date = null;
		public var endTime:Date = null;	
		public var comments:String = null;		
		public var organization:BOrganization = null;
		public var forecastInst:BForecastInst = null;		

		//	BPeriodRollTask 不会被界面编辑，所以不用copyShallow 和  copyDeep
	}
}