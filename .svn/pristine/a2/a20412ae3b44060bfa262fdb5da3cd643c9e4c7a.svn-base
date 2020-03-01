package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizDataDefItemAddHis")]
	
	public class BBizDataDefItemAddHis extends BBizDataDefItem
	{
		public function BBizDataDefItemAddHis()
		{
			//TODO: implement function
			super();
			this.indicator = BizConst.BIZDATADEFITEM_INDICATOR_ADDHIS;
		}
	
		public var itemBizData:BBizData;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemAddHis = BBizDataDefItemAddHis(_obj);
			super.copyShallow( sourceObj );
			this.itemBizData = sourceObj.itemBizData;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemAddHis = BBizDataDefItemAddHis(_obj);
			super.copyDeep( sourceObj );
			this.copyShallow( sourceObj );
			
		}		
		
	}
}