package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizDataDefItemTimeFc")]
	
	public class BBizDataDefItemTimeFc extends BBizDataDefItem
	{
		public function BBizDataDefItemTimeFc()
		{
			//TODO: implement function
			super();
			this.indicator = BizConst.BIZDATADEFITEM_INDICATOR_TIMEFC;
		}
	
		public var itemBizData:BBizData;
		public var timeFormula:int;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemTimeFc = BBizDataDefItemTimeFc(_obj);
			super.copyShallow( sourceObj );
			this.timeFormula = sourceObj.timeFormula;
			
			this.itemBizData = sourceObj.itemBizData;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemTimeFc = BBizDataDefItemTimeFc(_obj);
			super.copyDeep( sourceObj );
			this.copyShallow( sourceObj );
		}		
		
	}
}