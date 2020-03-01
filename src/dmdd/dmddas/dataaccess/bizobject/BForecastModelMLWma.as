package dmdd.dmddas.dataaccess.bizobject
{
	
	import dmdd.dmddas.common.constant.BizConst;
	
	import mx.collections.ArrayCollection;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMLWma")]		
	public class BForecastModelMLWma extends BForecastModelM
	{
		public function BForecastModelMLWma()
		{
			//TODO: implement function
			super();
			super.indicator = BizConst.FORECASTMODELM_INDICATOR_LWMA;
		}
		
		public var dataPeriodNum:int = 2;
		public var forecastModelMLWmaItems:ArrayCollection = new ArrayCollection();
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelMLWma= BForecastModelMLWma(_obj);
			super.copyShallow( sourceObj );
			this.dataPeriodNum = sourceObj.dataPeriodNum;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			super.copyDeep(_obj);
			this.copyShallow(_obj);
			
			this.forecastModelMLWmaItems = new ArrayCollection();
			if( _obj.forecastModelMLWmaItems != null )
			{
				for(var i:int=0; i<_obj.forecastModelMLWmaItems.length; i++)
				{
					var forecastModelMLWmaItem:BForecastModelMLWmaItem = new BForecastModelMLWmaItem();
					forecastModelMLWmaItem.copyShallow( BForecastModelMLWmaItem(_obj.forecastModelMLWmaItems.getItemAt(i)) );
					forecastModelMLWmaItem.forecastModelMLWma = this;
					this.forecastModelMLWmaItems.addItem( forecastModelMLWmaItem );
				}
			}			
		}
				
	}
}