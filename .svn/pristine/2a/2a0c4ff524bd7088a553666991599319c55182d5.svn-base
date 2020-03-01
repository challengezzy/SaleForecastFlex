package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	import mx.collections.ArrayCollection;	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BProduct")]
	
	public class BProduct
	{
		public function BProduct()
		{
			//TODO: implement function
		}
		
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var code:String = "";
		public var name:String = "";
		public var isCatalog:Number;
		public var isValid:Number;		
		public var description:String = "";
		public var comments:String = "";
		public var productLayer:BProductLayer = null;
		public var unitGroup:BUnitGroup = null;
		public var unit:BUnit = null;
		public var parentProduct:BProduct = null;
		public var subProducts:ArrayCollection = null;
		public var productProCharacters:ArrayCollection = null;
		public var baseUnitId:Number;
		public var pathCode:String ="";
		public var unitGroupId:Number;
		public  var unitId:Number;
		public var productLayerId:Number;
		public var isSuit:Number;
		public var shelfLife:Number;
		public var purchaseLeadTime:Number;
		public var withdrawLeadTime:Number;
		
		public var suitSkus:ArrayCollection;//套装
		
		public function toString():String
		{
			return this.name;			
		}		
		
		public function copyShallow( _obj:BProduct ):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.code = _obj.code;
			this.name = _obj.name;
			this.isCatalog = _obj.isCatalog;
			this.isValid = _obj.isValid;
			this.description = _obj.description;
			this.comments = _obj.comments;
			
			this.parentProduct = _obj.parentProduct;
			this.productLayer = _obj.productLayer;
			this.unitGroup = _obj.unitGroup;
			this.unit = _obj.unit;	
			this.pathCode=_obj.pathCode;
			this.baseUnitId = _obj.baseUnitId;
			this.unitGroupId = _obj.unitGroupId;
			this.unitId = _obj.unitId;
			this.productLayerId = _obj.productLayerId;
			this.isSuit = _obj.isSuit;
			this.shelfLife = _obj.shelfLife;
			this.purchaseLeadTime = _obj.purchaseLeadTime;
			this.withdrawLeadTime = _obj.withdrawLeadTime;
			//浅copy即可
			this.suitSkus = _obj.suitSkus;
		}
		
		// copyDeep 在编辑Product的时候使用，所以要拷贝各引用属性和附属集合(productUnits、productProCharacters)，
		// 但附属集合中subProducts不处理
		public function copyDeep( _obj:BProduct ):void
		{
			this.copyShallow( _obj );

			var j:int;
			// productProCharacters	
			this.productProCharacters = new ArrayCollection();
			if( _obj.productProCharacters != null )
			{
				for(j=0; j<_obj.productProCharacters.length; j=j+1 )
				{
					var originProductProCharacter:BProductProCharacter = BProductProCharacter(_obj.productProCharacters.getItemAt(j));
					var productProCharacter:BProductProCharacter = new BProductProCharacter();

					productProCharacter.version = originProductProCharacter.version;
					productProCharacter.id = originProductProCharacter.id;
					productProCharacter.productCharacter = originProductProCharacter.productCharacter;
					productProCharacter.product = this;
					
					this.productProCharacters.addItem( productProCharacter );
				}				
			}			
		}										

	}
}