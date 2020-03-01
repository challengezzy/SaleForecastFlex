package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizDataDefItemAvgHis")]
	
	public class BBizDataDefItemAvgHis extends BBizDataDefItem
	{
		public function BBizDataDefItemAvgHis()
		{
			//TODO: implement function
			super();
			this.indicator = BizConst.BIZDATADEFITEM_INDICATOR_AVGHIS;
		}
	
		public var itemBizData:BBizData;
		public var periodNum:int;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemAvgHis = BBizDataDefItemAvgHis(_obj);
			super.copyShallow( sourceObj );
			this.periodNum = sourceObj.periodNum;
			this.itemBizData = sourceObj.itemBizData;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemAvgHis = BBizDataDefItemAvgHis(_obj);
			super.copyDeep( sourceObj );
			this.copyShallow( sourceObj );
			
		}		
		
	}
}