package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizDataDefItemFcComb")]
		
	public class BBizDataDefItemFcComb extends BBizDataDefItem
	{
		public function BBizDataDefItemFcComb()
		{
			//TODO: implement function
			super();
			this.indicator = BizConst.BIZDATADEFITEM_INDICATOR_FCCOMB;
		}
		
		public var itemBizData:BBizData;
		public var coefficient:Number = 1.0;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemFcComb = BBizDataDefItemFcComb(_obj);
			super.copyShallow( sourceObj );
			this.coefficient = sourceObj.coefficient;
			this.itemBizData = sourceObj.itemBizData;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemFcComb = BBizDataDefItemFcComb(_obj);
			super.copyDeep( sourceObj );
			this.copyShallow( sourceObj );
		}		
	}
}