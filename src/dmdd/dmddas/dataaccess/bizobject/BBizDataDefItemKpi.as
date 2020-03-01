package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizDataDefItemKpi")]	
		
	public class BBizDataDefItemKpi extends BBizDataDefItem
	{
		public function BBizDataDefItemKpi()
		{
			//TODO: implement function
			super();
			this.indicator = BizConst.BIZDATADEFITEM_INDICATOR_KPI;
		}
		
		public var aitemBizData:BBizData;
		public var bitemBizData:BBizData;
		public var kpiFormula:int;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemKpi = BBizDataDefItemKpi(_obj);
			super.copyShallow( sourceObj );
			this.kpiFormula = sourceObj.kpiFormula;
			this.aitemBizData = sourceObj.aitemBizData;
			this.bitemBizData = sourceObj.bitemBizData;			
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemKpi = BBizDataDefItemKpi(_obj);
			super.copyDeep( sourceObj );
			this.copyShallow( sourceObj );
		}		
		
	}
}