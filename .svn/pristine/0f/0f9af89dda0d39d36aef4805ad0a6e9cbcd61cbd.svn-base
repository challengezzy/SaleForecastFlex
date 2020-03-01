package dmdd.dmddas.dataaccess.bizobject
{
	
	import dmdd.dmddas.common.constant.BizConst;
	
	import mx.collections.ArrayCollection;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMSLWma")]		
	public class BForecastModelMSLWma extends BForecastModelM
	{
		public function BForecastModelMSLWma()
		{
			//TODO: implement function
			super();
			super.indicator = BizConst.FORECASTMODELM_INDICATOR_SLWMA;
		}
		
		public var dataPeriodNum:int = 2;
		public var seasonSmoothingFactor:Number = 0.5;
		public var forecastModelMSLWmaItems:ArrayCollection = new ArrayCollection();
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelMSLWma= BForecastModelMSLWma(_obj);
			super.copyShallow( sourceObj );
			this.dataPeriodNum = sourceObj.dataPeriodNum;
			this.seasonSmoothingFactor = sourceObj.seasonSmoothingFactor;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			super.copyDeep(_obj);
			this.copyShallow(_obj);
			
			this.forecastModelMSLWmaItems = new ArrayCollection();
			if( _obj.forecastModelMSLWmaItems != null )
			{
				for(var i:int=0; i<_obj.forecastModelMSLWmaItems.length; i++)
				{
					var forecastModelMSLWmaItem:BForecastModelMSLWmaItem = new BForecastModelMSLWmaItem();
					forecastModelMSLWmaItem.copyShallow( BForecastModelMSLWmaItem(_obj.forecastModelMSLWmaItems.getItemAt(i)) );
					forecastModelMSLWmaItem.forecastModelMSLWma = this;
					this.forecastModelMSLWmaItems.addItem( forecastModelMSLWmaItem );
				}
			}			
		}
				
	}
}