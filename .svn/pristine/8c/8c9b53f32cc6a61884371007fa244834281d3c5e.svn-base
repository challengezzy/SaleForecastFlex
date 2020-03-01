package dmdd.dmddas.common.utils
{
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.dataaccess.aidobject.ABProOrg;
	import dmdd.dmddas.dataaccess.bizobject.BUnit;
	import dmdd.dmddas.dataaccess.bizobject.BUnitGroup;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.core.UIComponent;
	import mx.resources.ResourceManager;
	
	public class UtilUnit
	{
//		public function UnitUtil()
//		{
//			//TODO: implement function
//		}
		
		public static function getUnitGroupBaseUnit( _unitGroup:BUnitGroup ):BUnit
		{
			if( _unitGroup == null )
			{
				return null;	
			}
			if( _unitGroup.units == null )
			{
				return null;
			}
			var i:int;
			var units:ArrayCollection = _unitGroup.units;
			for( i=0; i<units.length; i=i+1 )
			{
				var unit:BUnit = units.getItemAt( i ) as BUnit;
				if( unit.isBase == BizConst.GLOBAL_YESNO_YES )
				{
					return unit;
				}
			}

			return null;
		}
		
		public static function getKpiUnitGroup():BUnitGroup
		{
			var kpiUnitGroup:BUnitGroup = new BUnitGroup();
			var kpiUnit:BUnit = new BUnit();
			kpiUnit.isBase = BizConst.GLOBAL_YESNO_YES;
			kpiUnit.code = "%";
			kpiUnit.name = "%";
			kpiUnit.unitGroup = kpiUnitGroup;
			kpiUnitGroup.units = new ArrayCollection();
			kpiUnitGroup.units.addItem( kpiUnit );
			
			return kpiUnitGroup;
							
		}	
		
		public static function getUnitByProOrgs(arrDetailProOrgs:ArrayCollection,_parent:UIComponent):BUnit{
			var alert_msg:String = null;
			var alert_title_hint:String = ResourceManager.getInstance().getString('alert','alert_title_hint');
			
			var i:int;
			var detailProOrg:ABProOrg = null;
			var baseUnit:BUnit = null;
			var nonBaseUnit:BUnit = null;		
			var num4NonBaseUnit:int = 0;
			
			var unitGroup:BUnitGroup = null;
			var unit:BUnit = null;
			
			for( i=0; i<arrDetailProOrgs.length; i=i+1 )
			{
				detailProOrg = ABProOrg( arrDetailProOrgs.getItemAt(i) );
				
				//	单位组	begin
				if( detailProOrg.product.unitGroup == null )
				{
					alert_msg = ResourceManager.getInstance().getString('alert','alter_msg_unitgroupisnull14');
					Alert.show( alert_msg, alert_title_hint);
					return null;							
				}
				if( unitGroup == null )
				{
					unitGroup = detailProOrg.product.unitGroup;
					baseUnit = unitGroup.getBaseUnit();
				}
				else if( detailProOrg.product.unitGroup.id != unitGroup.id )
				{
					alert_msg = ResourceManager.getInstance().getString('alert','alter_msg_multiunitgroup14');
					Alert.show( alert_msg, alert_title_hint);
					return null;									
				}
				if( detailProOrg.product.unit.isBase == BizConst.GLOBAL_YESNO_NO )
				{
					if( nonBaseUnit == null )
					{
						nonBaseUnit = detailProOrg.product.unit;
						num4NonBaseUnit = 1;								
					}
					else
					{
						if( detailProOrg.product.unit.id != nonBaseUnit.id )
						{
							num4NonBaseUnit = 2;	//	just means multiple									
						}
					}
				}
				//	单位组	end	
			}
			
			if( num4NonBaseUnit == 1 )
			{
				unit = nonBaseUnit;
			}
			else
			{
				unit = baseUnit;
			}
			
			return unit;
		}
		// end getUnitByProOrgs
		

	}
}