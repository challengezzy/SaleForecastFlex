package dmdd.dmddas.dataaccess.bizobject
{
	
	import dmdd.dmddas.common.constant.BizConst;
	
	import mx.collections.ArrayCollection;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMAAnalog")]		
	public class BForecastModelMAAnalog extends BForecastModelM
	{
		public function BForecastModelMAAnalog()
		{
			//TODO: implement function
			super();
			super.indicator = BizConst.FORECASTMODELM_INDICATOR_AANALOG;
		}
		
		public var offsetPeriodNum:int = 3;
		public var forecastModelMAAnalogItems:ArrayCollection = new ArrayCollection();
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelMAAnalog= BForecastModelMAAnalog(_obj);
			super.copyShallow( sourceObj );
			this.offsetPeriodNum = sourceObj.offsetPeriodNum;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			super.copyDeep(_obj);
			this.copyShallow(_obj);
			
			this.forecastModelMAAnalogItems = new ArrayCollection();
			if( _obj.forecastModelMAAnalogItems != null )
			{
				for(var i:int=0; i<_obj.forecastModelMAAnalogItems.length; i++)
				{
					var forecastModelMAAnalogItem:BForecastModelMAAnalogItem = new BForecastModelMAAnalogItem();
					forecastModelMAAnalogItem.copyShallow( BForecastModelMAAnalogItem(_obj.forecastModelMAAnalogItems.getItemAt(i)) );
					forecastModelMAAnalogItem.forecastModelMAAnalog = this;
					this.forecastModelMAAnalogItems.addItem( forecastModelMAAnalogItem );
				}
			}			
		}
				
	}
}