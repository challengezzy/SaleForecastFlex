package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizDataDefItemHistoryAd")]
	
	public class BBizDataDefItemHistoryAd extends BBizDataDefItem
	{
		public function BBizDataDefItemHistoryAd()
		{
			//TODO: implement function
			super();
			this.indicator = BizConst.BIZDATADEFITEM_INDICATOR_HISTORYAD;
		}
		
		public var historyBizData:BBizData;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemHistoryAd = BBizDataDefItemHistoryAd(_obj);
			super.copyShallow( sourceObj );
			this.historyBizData = sourceObj.historyBizData;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemHistoryAd = BBizDataDefItemHistoryAd(_obj);
			super.copyDeep( sourceObj );
			this.copyShallow( sourceObj );
		}		
		
	}
}