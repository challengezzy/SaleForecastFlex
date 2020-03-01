package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.SysConst;
	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BUnitGroup")]
		
	public class BUnitGroup
	{
		public function BUnitGroup()
		{
			//TODO: implement function
		}
		

		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var code:String = "";
		public var name:String = "";
		public var description:String = "";
		public var comments:String = "";
		public var units:ArrayCollection = new ArrayCollection();

		public function toString():String
		{
			return this.name;			
		}		
		
		public function copyShallow( _obj:BUnitGroup ):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.code = _obj.code;
			this.name = _obj.name;
			this.description = _obj.description;
			this.comments = _obj.comments;
		}
		
		public function copyDeep( _obj:BUnitGroup ):void
		{
			this.copyShallow( _obj );
			this.units = new ArrayCollection();
			if( _obj.units != null )
			{
				for(var i:int=0; i<_obj.units.length; i++)
				{
					var unit:BUnit = new BUnit();
					unit.copyShallow( BUnit(_obj.units.getItemAt(i)) );
					unit.unitGroup = this;
					this.units.addItem( unit );
				}
			}			
		}
		
		public function addUnit( _unit:BUnit ):void
		{
			if( _unit == null )
			{
				return;
			}	
			
			if( this.units == null )
			{
				this.units = new ArrayCollection();
			}
			
			_unit.unitGroup = this;
			this.units.addItem( _unit );
		}		
		
		
		public function getBaseUnit():BUnit
		{
			if( this.units == null || this.units.length <= 0 )
			{
				return null;
			}
			
			var i:int;
			var unit:BUnit = null;
			for( i=0; i<this.units.length; i=i+1 )
			{
				unit = BUnit(this.units.getItemAt(i));
				if( unit.isBase == BizConst.GLOBAL_YESNO_YES )
				{
					return unit;	
				}
			}
			
			return null;
		}
		
		public function getNonBaseUnits():ArrayCollection
		{
			var arrNoNBaseUnits:ArrayCollection = new ArrayCollection();
			if( this.units == null || this.units.length <= 0 )
			{
				return arrNoNBaseUnits;
			}
			
			var i:int;
			var unit:BUnit = null;
			for( i=0; i<this.units.length; i=i+1 )
			{
				unit = BUnit(this.units.getItemAt(i));
				if( unit.isBase == BizConst.GLOBAL_YESNO_NO )
				{
					arrNoNBaseUnits.addItem( unit );;	
				}
			}
			
			return arrNoNBaseUnits;
		}		

	}
}