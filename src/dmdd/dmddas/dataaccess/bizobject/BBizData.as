package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.SysConst;
	import dmdd.dmddas.dataaccess.utils.UtilFactoryBizDataDefItem;
	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizData")]
		
	public class BBizData
	{
		public function BBizData()
		{
			//TODO: implement function
		}
		
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var code:String = "";		
		public var name:String = "";
		public var type:int;
		public var source:int;
		public var isValid:int;
		public var description:String = "";
		public var comments:String = "";
		public var bizDataDefItems:ArrayCollection = new ArrayCollection();
		/**是否支持折合计算*/
		public var isSuitSupport:int;
		
		public function toString():String
		{
			if( this.type == BizConst.BIZDATA_TYPE_KPI )
			{
				return this.name + "(%)";
			}
			else
			{
				return this.name;
			}
		}
		
		
		public function copyShallow( _obj:BBizData ):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.code = _obj.code;
			this.name = _obj.name;
			this.type = _obj.type;
			this.source = _obj.source;
			this.isValid = _obj.isValid;
			this.description = _obj.description;
			this.comments = _obj.comments;
			this.isSuitSupport = _obj.isSuitSupport;
		}
		
		// copyDeep 在编辑BizData的时候使用，所以要拷贝各引用属性和附属集合(bizDataDefItems)，
		public function copyDeep( _obj:BBizData ):void
		{
			this.copyShallow( _obj );
			this.bizDataDefItems = new ArrayCollection();
			var i:int;
			if( _obj.bizDataDefItems != null )
			{
				for(i=0; i<_obj.bizDataDefItems.length; i=i+1)
				{
					var bizDataDefItem:BBizDataDefItem = UtilFactoryBizDataDefItem.getNewBizDataDefItemInstance( BBizDataDefItem(_obj.bizDataDefItems.getItemAt(i)) );
					bizDataDefItem.copyDeep( _obj.bizDataDefItems.getItemAt(i) );
					bizDataDefItem.bizData = this;
					this.bizDataDefItems.addItem( bizDataDefItem );
				}
			}							
		}		

	}
}