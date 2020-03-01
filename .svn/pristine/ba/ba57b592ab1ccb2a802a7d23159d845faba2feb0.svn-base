package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizDataDefItemTimeHis")]
	
	public class BBizDataDefItemTimeHis extends BBizDataDefItem
	{
		public function BBizDataDefItemTimeHis()
		{
			//TODO: implement function
			super();
			this.indicator = BizConst.BIZDATADEFITEM_INDICATOR_TIMEHIS;
		}
	
		public var itemBizData:BBizData;
		public var timeFormula:int;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemTimeHis = BBizDataDefItemTimeHis(_obj);
			super.copyShallow( sourceObj );
			this.timeFormula = sourceObj.timeFormula;
			this.itemBizData = sourceObj.itemBizData;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemTimeHis = BBizDataDefItemTimeHis(_obj);
			super.copyDeep( sourceObj );
			this.copyShallow( sourceObj );
			
		}		
		
	}
}