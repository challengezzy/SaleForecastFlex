package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizDataDefItemPeriodVersion")]
	
	public class BBizDataDefItemPeriodVersion extends BBizDataDefItem
	{
		public function BBizDataDefItemPeriodVersion()
		{
			//TODO: implement function
			super();
			this.indicator = BizConst.BIZDATADEFITEM_INDICATOR_PERIODVERSION;
		}
	
		public var itemBizData:BBizData;
		public var periodInterval:int;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemPeriodVersion = BBizDataDefItemPeriodVersion(_obj);
			super.copyShallow( sourceObj );
			this.periodInterval = sourceObj.periodInterval;
			this.itemBizData = sourceObj.itemBizData;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemPeriodVersion = BBizDataDefItemPeriodVersion(_obj);
			super.copyDeep( sourceObj );
			this.copyShallow( sourceObj );
			
		}		
		
	}
}