package dmdd.dmddas.dataaccess.bizobject
{
	
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.SysConst;
	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.entity.BUiPopbScope")]	
	public class BUiPopbScope
	{
		public function BUiPopbScope()
		{
			//TODO: implement function
		}
		
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var uiCode:String = "";
		public var code:String = "";		
		public var name:String = "";	
		public var isDefault:int = BizConst.GLOBAL_YESNO_NO;

		public var isPeriodControl:int = BizConst.GLOBAL_YESNO_YES;
		public var periodOffsetBegin:int = 0;
		public var periodOffsetEnd:int = 0;
		
		public var isDisplayControl:int = BizConst.GLOBAL_YESNO_YES;
		public var isShowProduct:int = BizConst.GLOBAL_YESNO_NO;
		public var isShowProductCharacter:int = BizConst.GLOBAL_YESNO_NO;
		public var productCharacterType:String = "";
		public var isShowOrganization:int = BizConst.GLOBAL_YESNO_NO;
		public var isShowOrganizationCharacter:int = BizConst.GLOBAL_YESNO_NO;
		public var organizationCharacterType:String = "";
		
		public var description:String = "";
		public var comments:String = "";
		
		
		public var productLayer:BProductLayer = null;
		public var productCharacterLayer:BProductCharacterLayer = null;
		public var organizationLayer:BOrganizationLayer = null;
		public var organizationCharacterLayer:BOrganizationCharacterLayer = null;
				
		public var operatorUser:BOperatorUser = null;		
		public var uiPopbScopeProOrgs:ArrayCollection = null;
		public var uiPopbScopeBizDatas:ArrayCollection = null;
		
		public var isGetDetail:Boolean = false;;
		public var productLayerId:Number;
		public var productCharacterLayerId:Number;
		public var organizationCharacterLayerId:Number;
		public var operatorUserId:Number;
		public var organizationLayerId:Number;
		
		public var proCharTypes:ArrayCollection;
		public var orgCharTypes:ArrayCollection;
		
		public function toString():String
		{
			return this.code + "/" + this.name;
		}
		
		/** 根据layer对象，刷新layerId */
		public function updateLayerId():void{
			//因为uiPopbScope从不同途径获取，productLayer对象可能为空，其它的layer对象类似
			if(productLayer != null){
				productLayerId = productLayer.id;
			}
			
			if(productCharacterLayer != null){
				productCharacterLayerId = productCharacterLayer.id;
			}
			
			if(organizationLayer != null){
				organizationLayerId = organizationLayer.id;
			}
			
			if(organizationCharacterLayer != null){
				organizationCharacterLayerId = organizationCharacterLayer.id;
			}
		}

	}
}