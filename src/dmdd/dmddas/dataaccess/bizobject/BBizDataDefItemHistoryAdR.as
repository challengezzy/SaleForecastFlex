package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizDataDefItemHistoryAdR")]
	
	public class BBizDataDefItemHistoryAdR extends BBizDataDefItem
	{
		public function BBizDataDefItemHistoryAdR()
		{
			//TODO: implement function
			super();
			this.indicator = BizConst.BIZDATADEFITEM_INDICATOR_HISTORYADR;
		}
		
		public var historyAdBizData:BBizData;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemHistoryAdR = BBizDataDefItemHistoryAdR(_obj);
			super.copyShallow( sourceObj );
			this.historyAdBizData = sourceObj.historyAdBizData;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemHistoryAdR = BBizDataDefItemHistoryAdR(_obj);
			super.copyDeep( sourceObj );
			this.copyShallow( sourceObj );
		}		
		
	}
}