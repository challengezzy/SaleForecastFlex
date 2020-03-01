package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizDataDefItemAddFc")]
	
	public class BBizDataDefItemAddFc extends BBizDataDefItem
	{
		public function BBizDataDefItemAddFc()
		{
			//TODO: implement function
			super();
			this.indicator = BizConst.BIZDATADEFITEM_INDICATOR_ADDFC;
		}
	
		public var itemBizData:BBizData;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemAddFc = BBizDataDefItemAddFc(_obj);
			super.copyShallow( sourceObj );
			this.itemBizData = sourceObj.itemBizData;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemAddFc = BBizDataDefItemAddFc(_obj);
			super.copyDeep( sourceObj );
			this.copyShallow( sourceObj );
			
		}		
		
	}
}