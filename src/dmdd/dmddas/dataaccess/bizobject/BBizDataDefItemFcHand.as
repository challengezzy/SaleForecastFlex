package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizDataDefItemFcHand")]	
	
	public class BBizDataDefItemFcHand extends BBizDataDefItem
	{
		public function BBizDataDefItemFcHand()
		{
			//TODO: implement function
			super();
			this.indicator = BizConst.BIZDATADEFITEM_INDICATOR_FCHAND;
		}
		
		public var itemBizData:BBizData;
		public var coefficient:Number = 1.0;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemFcHand = BBizDataDefItemFcHand(_obj);
			super.copyShallow( sourceObj );
			this.coefficient = sourceObj.coefficient;
			this.itemBizData = sourceObj.itemBizData;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemFcHand = BBizDataDefItemFcHand(_obj);
			super.copyDeep( sourceObj );
			this.copyShallow( sourceObj );
		}		
	}
}