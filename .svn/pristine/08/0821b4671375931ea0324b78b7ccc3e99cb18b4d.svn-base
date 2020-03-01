package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	import mx.collections.ArrayCollection;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBreakDownRule")]
	public class BBreakDownRule
	{
		public function BBreakDownRule()
		{
		}
		
		
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var code:String = "";		
		public var name:String = "";
		public var type:int;			
		public var beginPeriod:int;
		public var endPeriod:int;
		public var description:String="";
		public var comments:String="";
		public var version:Number;
		public var breakDownRuleDefItems:ArrayCollection = new ArrayCollection();
		public var breakDownRuleFinancialDefItems:ArrayCollection = new ArrayCollection();
		
		
		public function copyShallow( _obj:BBreakDownRule ):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.code = _obj.code;
			this.name = _obj.name;
			this.type = _obj.type;
			this.beginPeriod = _obj.beginPeriod;
			this.endPeriod = _obj.endPeriod;
			this.description = _obj.description;
			this.comments = _obj.comments;			
		}
		
		// copyDeep 在编辑BizData的时候使用，所以要拷贝各引用属性和附属集合(bizDataDefItems)，
		public function copyDeep( _obj:BBreakDownRule ):void
		{
			this.copyShallow( _obj );
			this.breakDownRuleDefItems = new ArrayCollection();
			var i:int;
			if( _obj.breakDownRuleDefItems != null )
			{
				for(i=0; i<_obj.breakDownRuleDefItems.length; i=i+1)
				{
					var breakDownRuleDefItem:BBreakDownRuleDefItem = BBreakDownRuleDefItem(_obj.breakDownRuleDefItems.getItemAt(i)) ;
					breakDownRuleDefItem.breakDownRule = this;
					this.breakDownRuleDefItems.addItem( breakDownRuleDefItem );
				}
			}							
		}	
			
		public function addBreakDownRuleDefItem( _bBreakDownRuleDefItem:BBreakDownRuleDefItem):void
		{
			if( _bBreakDownRuleDefItem == null )
			{
				return;
			}	
			
			if( this.breakDownRuleDefItems == null )
			{
				this.breakDownRuleDefItems = new ArrayCollection();
			}
			
			_bBreakDownRuleDefItem.breakDownRule = this;
			this.breakDownRuleDefItems.addItem( _bBreakDownRuleDefItem );
		}
		
		public function addBreakDownRuleFinancialDefItem( _bBreakDownRuleDefItem:BBreakDownRuleFinancialDefItem):void
		{
			if( _bBreakDownRuleDefItem == null )
			{
				return;
			}	
			
			if( this.breakDownRuleFinancialDefItems == null )
			{
				this.breakDownRuleFinancialDefItems = new ArrayCollection();
			}
			
			_bBreakDownRuleDefItem.breakDownRule = this;
			this.breakDownRuleFinancialDefItems.addItem( _bBreakDownRuleDefItem );
		}
	}
}