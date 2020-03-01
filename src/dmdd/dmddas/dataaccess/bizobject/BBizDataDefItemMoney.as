package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizDataDefItemMoney")]
	
	public class BBizDataDefItemMoney extends BBizDataDefItem
	{
		public function BBizDataDefItemMoney()
		{
			//TODO: implement function
			super();
			this.indicator = BizConst.BIZDATADEFITEM_INDICATOR_MONEY;
		}
	
		public var itemBizData:BBizData;
		public var priceType:int;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemMoney = BBizDataDefItemMoney(_obj);
			super.copyShallow( sourceObj );
			this.priceType = sourceObj.priceType;
			
			this.itemBizData = sourceObj.itemBizData;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemMoney = BBizDataDefItemMoney(_obj);
			super.copyDeep( sourceObj );
			this.copyShallow( sourceObj );
		}		
		
	}
}