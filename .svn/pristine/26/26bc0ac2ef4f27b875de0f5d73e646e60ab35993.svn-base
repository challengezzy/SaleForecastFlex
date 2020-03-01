package dmdd.dmddas.common.utils
{
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.system.ClientEnvironment;
	import dmdd.dmddas.dataaccess.bizobject.BBizData;
	import dmdd.dmddas.dataaccess.bizobject.BDistributionCenter;
	import dmdd.dmddas.dataaccess.bizobject.BFunPermission;
	import dmdd.dmddas.dataaccess.bizobject.BOrganization;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacterLayer;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationLayer;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationOrgCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BProduct;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacterLayer;
	import dmdd.dmddas.dataaccess.bizobject.BProductLayer;
	import dmdd.dmddas.dataaccess.bizobject.BProductProCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BUnit;
	import dmdd.dmddas.dataaccess.bizobject.BUnitGroup;
	
	import mx.collections.ArrayCollection;
	import mx.formatters.DateFormatter;
	
	public class UtilDataGridColumnLabelFunction
	{
		public function UtilDataGridColumnLabelFunction()
		{
			//TODO: implement function
		}	
		
		// 数据字典    begin
		// Global YesNo 数据字典    begin
		public static function getGlobalYesNoLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var yesNoValue:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "GLOBAL", "YESNO", yesNoValue );				
			}	
			return null;	
		}		
		// Global YesNo 数据字典 数据字典    end
		
		// Global DataSource 数据字典    begin
		public static function getGlobalDataSourceLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var value:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "GLOBAL", "DATASOURCE", value );				
			}	
			return null;	
		}		
		// Global YesNo 数据字典 数据字典    end		
				
		// BizData Type 数据字典    begin
		public static function getBizDataTypeLocale(item:Object, column:Object):String
		{						
			var typeValue:int = int (item[column.dataField]);
			return ClientEnvironment.getSysDictionaryItemLocale( "BIZDATA", "TYPE", typeValue );
		}		
		// BizData Type 数据字典    end
		
		// BizDataDefItem TimeFormula 数据字典    begin
		public static function getBizDataDefItemTimeFormulaLocale(item:Object, column:Object):String
		{	
			if( item.hasOwnProperty(column.dataField) )
			{
				var timeFormulaValue:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "BIZDATADEFITEM", "TIMEFORMULA", timeFormulaValue );				
			}	
			else
			{
				return null;
			}				
		}		
		// BizDataDefItem TimeFormula 数据字典    end	
		
		// BizDataDefItem PriceType 数据字典    begin
		public static function getBizDataDefItemPriceTypeLocale(item:Object, column:Object):String
		{		
			if( item.hasOwnProperty(column.dataField) )
			{
				var priceTypeValue:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "BIZDATADEFITEM", "PRICETYPE", priceTypeValue );
			}	
			else
			{
				return null;
			}							
		}		
		// BizDataDefItem PriceType 数据字典    end		
		
		// BizDataDefItem KpiFormula 数据字典    begin
		public static function getBizDataDefItemKpiFormulaLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var kpiFormulaValue:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "BIZDATADEFITEM", "KPIFORMULA", kpiFormulaValue );				
			}	
			else
			{
				return null;
			}		
		}		
		// BizDataDefItem KpiFormula 数据字典    end		
		
		// ForecastModelM Type 数据字典    begin
		public static function getForecastModelMTypeLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var typeValue:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "FORECASTMODELM", "TYPE", typeValue );				
			}	
			else
			{
				return null;
			}		
		}		
		// ForecastModelM Type 数据字典    end		
		
		// ForecastModelM Type 数据字典    begin
		public static function getForecastMakeLogActionTypeLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var typeValue:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "FORECASTMAKELOG", "ACTIONTYPE", typeValue );				
			}	
			else
			{
				return null;
			}		
		}		
		// ForecastModelM Type 数据字典    end		
		
		// Forecast DISTRIBUTEREFFORMULA 数据字典    begin
		public static function getForecastDistributeRefFormulaLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var value:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "FORECAST", "DISTRIBUTEREFFORMULA", value );				
			}	

			return null;
		
		}				
		// Forecast DISTRIBUTEREFFORMULA 数据字典    end
		
		// Forecast decomposeFormula 数据字典    begin 字典内容同DISTRIBUTEREFFORMULA
		public static function getForecastDecomposeFormulaLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var value:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "FORECAST", "DISTRIBUTEREFFORMULA", value );				
			}	
			
			return null;
			
		}				
		// Forecast decomposeFormula 数据字典    end
		
		// ForecastRunTask STATUS 数据字典    begin
		public static function getForecastRunTaskStatusLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var value:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "FORECASTRUNTASK", "STATUS", value );				
			}	
			
			return null;
			
		}				
		// ForecastRunTask STATUS 数据字典    end		
		
		// ForecastRunTaskItem STATUS 数据字典    begin
		public static function getForecastRunTaskItemStatusLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var value:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "FORECASTRUNTASKITEM", "STATUS", value );				
			}	
			
			return null;
			
		}				
		// ForecastRunTaskItem STATUS 数据字典    end		
		
		// ForecastRunTaskItem RESULT 数据字典    begin
		public static function getForecastRunTaskItemResultLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var value:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "FORECASTRUNTASKITEM", "RESULT", value );				
			}	
			
			return null;
		}				
		// ForecastRunTaskItem RESULT 数据字典    end		
		
		// Price Type 数据字典    begin
		public static function getPriceTypeLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var value:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "PRICE", "TYPE", value );				
			}	
			
			return null;
		}			
		// Price Type 数据字典    begin
		
		
		// BudgetInst Status 数据字典    begin
		public static function getBudgetInstStatusLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var statusValue:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "BUDGETINST", "STATUS", statusValue );				
			}	
			else
			{
				return null;
			}		
		}		
		// BudgetInst Status 数据字典    end	
		
		// BudgetMakeLog ActionType 数据字典    begin
		public static function getBudgetMakeLogActionTypeLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var typeValue:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "BUDGETMAKELOG", "ACTIONTYPE", typeValue );				
			}	
			else
			{
				return null;
			}		
		}		
		// BudgetMakeLog ActionType 数据字典    end	
		
		// PeriodRollTask Category 数据字典    begin
		public static function getPeriodRollTaskCategoryLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var categoryValue:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "PERIODROLLTASK", "CATEGORY", categoryValue );				
			}	
			else
			{
				return null;
			}		
		}		
		// PeriodRollTask Category 数据字典    end
		
		// PeriodRollTask Status 数据字典    begin
		public static function getPeriodRollTaskStatusLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var statusValue:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "PERIODROLLTASK", "STATUS", statusValue );				
			}	
			else
			{
				return null;
			}		
		}		
		// PeriodRollTask Status 数据字典    end		
		
													
		
		// breakdownrule  type 数据字典    begin
		public static function getBreakDownRuleTypeLocale(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var value:int = int (item[column.dataField]);
				return ClientEnvironment.getSysDictionaryItemLocale( "BREAKDOWNRULE", "TYPE", value );				
			}	
			
			return null;
		}				
		// breakdownrule type 数据字典    end		
		
		// 数据字典    end
		
		//    UnitGroup    begin
		public static function getUnitGroupName(item:Object, column:Object):String
		{						
			var unitGroup:BUnitGroup = BUnitGroup (item[column.dataField]);
			if( unitGroup == null )
			{
				return null;	
			}
			else
			{
				return unitGroup.name;
			}
		}
		

		public static function getUnitGroupBaseUnitName(item:Object, column:Object):String
		{						
			var unitGroup:BUnitGroup = BUnitGroup (item[column.dataField]);
			if( unitGroup == null )
			{
				return null;	
			}
			if( unitGroup.units == null )
			{
				return null;
			}
			var i:int;
			var units:ArrayCollection = unitGroup.units;
			for( i=0; i<units.length; i=i+1 )
			{
				var unit:BUnit = units.getItemAt( i ) as BUnit;
				if( unit.isBase == BizConst.GLOBAL_YESNO_YES )
				{
					return unit.name;
				}
			}
			
			return null;
		}		
		//    UnitGroup    end	
		
		//    Unit    begin
		public static function getUnitCode(item:Object, column:Object):String
		{
			var unit:BUnit = BUnit (item[column.dataField]);
			if( unit != null )
			{
				return unit.code;	
			}
			return null;
		}		
			
		public static function getUnitName(item:Object, column:Object):String
		{
			var unit:BUnit = BUnit (item[column.dataField]);
			if( unit != null )
			{
				return unit.name;	
			}			
			
			return null;		
		}
		//    Unit    end
			
		//    ProductCharacterLayer    begin
		public static function getProductCharacterLayerValue(item:Object, column:Object):String
		{
			var productCharacterLayer:BProductCharacterLayer  = BProductCharacterLayer (item[column.dataField]);
			if( productCharacterLayer == null )
			{
				return null;	
			}
			else
			{
				return String(productCharacterLayer.value);
			}
		}
		
		public static function getProductCharacterLayerDescription(item:Object, column:Object):String
		{		
			var productCharacterLayer:BProductCharacterLayer  = BProductCharacterLayer (item[column.dataField]);
			if( productCharacterLayer == null )
			{
				return null;	
			}
			else
			{
				return productCharacterLayer.description;
			}
		}
		//    ProductCharacterLayer    end				
			
		//    ProductLayer    begin
		public static function getProductLayerValue(item:Object, column:Object):String
		{
			var productLayer:BProductLayer  = BProductLayer (item[column.dataField]);
			if( productLayer == null )
			{
				return null;	
			}
			else
			{
				return String(productLayer.value);
			}
		}
		
		public static function getProductLayerDescription(item:Object, column:Object):String
		{		
			var productLayer:BProductLayer  = BProductLayer (item[column.dataField]);
			if( productLayer == null )
			{
				return null;	
			}
			else
			{
				return productLayer.description;
			}
		}
		//    ProductLayer    end	
					
		//    ProductCharacter    begin	
		public static function getProductCharacterCode(item:Object, column:Object):String
		{
			var productCharacter:BProductCharacter = BProductCharacter (item[column.dataField]);
			if( productCharacter == null )
			{
				return null;	
			}
			else
			{
				return productCharacter.code;
			}
		}																
			
		public static function getProductCharacterName(item:Object, column:Object):String
		{
			var productCharacter:BProductCharacter = BProductCharacter (item[column.dataField]);
			if( productCharacter == null )
			{
				return null;	
			}
			else
			{
				return productCharacter.name;
			}
		}
		
		/** 根据type获取产品特征值 */
		public static function getProductCharacterTypeName(item:Object, column:Object):String
		{
			var product:BProduct = BProduct(item['product']);
			if( product == null ){
				return null;	
			}
			
			var productProChars:ArrayCollection = product.productProCharacters;
			if(productProChars == null){
				return null;
			}
			for(var i:int=0;i<productProChars.length; i++){
				var productProChar:BProductProCharacter = productProChars.getItemAt(i) as BProductProCharacter;
				var productChar:BProductCharacter = productProChar.productCharacter;
				
				if( productChar.type == column.dataField){
					return productChar.name;
				}
			}
			
			return null;
		}
		
		/** 根据type获取组织特征值 */
		public static function getOrgCharacterTypeName(item:Object, column:Object):String
		{
			var organization:BOrganization = BOrganization(item['organization']);
			if( organization == null ){
				return null;	
			}
			
			var organizationOrgChars:ArrayCollection = organization.organizationOrgCharacters;
			if(organizationOrgChars == null){
				return null;
			}
			for(var i:int=0;i<organizationOrgChars.length; i++){
				var orgOrgChar:BOrganizationOrgCharacter = organizationOrgChars.getItemAt(i) as BOrganizationOrgCharacter;
				var orgChar:BOrganizationCharacter = orgOrgChar.organizationCharacter;
				
				if( orgChar.type == column.dataField){
					return orgChar.name;
				}
			}
			
			return null;
		}
			
		public static function getProductCharacterType(item:Object, column:Object):String
		{
			var productCharacter:BProductCharacter = BProductCharacter (item[column.dataField]);
			if( productCharacter == null )
			{
				return null;	
			}
			else
			{
				return productCharacter.type;
			}
		}									
												
		public static function getProductCharacterDescription(item:Object, column:Object):String
		{
			var productCharacter:BProductCharacter = BProductCharacter (item[column.dataField]);
			if( productCharacter == null )
			{
				return null;	
			}
			else
			{
				return productCharacter.description;
			}
		}
		//    ProductCharacter    end	
		
		//    Product    begin	
		public static function getProductCode(item:Object, column:Object):String
		{
			if( item.hasOwnProperty(column.dataField) )
			{
				var product:BProduct = BProduct (item[column.dataField]);
				if( product == null )
				{
					return null;	
				}
				else
				{
					return product.code;
				}				
			}
			else
			{
				return null;
			}
		}
		
		public static function getProductName(item:Object, column:Object):String
		{
			if( item.hasOwnProperty(column.dataField) )
			{
				var product:BProduct = BProduct (item[column.dataField]);
				if( product == null )
				{
					return null;	
				}
				else
				{
					return product.name;
				}
			}
			else
			{
				return null;
			}
		}				
		//    Product    end
		
		//    OrganizationCharacterLayer    begin
		public static function getOrganizationCharacterLayerValue(item:Object, column:Object):String
		{
			var organizationCharacterLayer:BOrganizationCharacterLayer  = BOrganizationCharacterLayer (item[column.dataField]);
			if( organizationCharacterLayer == null )
			{
				return null;	
			}
			else
			{
				return String(organizationCharacterLayer.value);
			}
		}
		
		public static function getOrganizationCharacterLayerDescription(item:Object, column:Object):String
		{		
			var organizationCharacterLayer:BOrganizationCharacterLayer  = BOrganizationCharacterLayer (item[column.dataField]);
			if( organizationCharacterLayer == null )
			{
				return null;	
			}
			else
			{
				return organizationCharacterLayer.description;
			}
		}
		//    OrganizationCharacterLayer    end			
		
		//    OrganizationLayer    begin
		public static function getOrganizationLayerValue(item:Object, column:Object):String
		{
			var organizationLayer:BOrganizationLayer  = BOrganizationLayer (item[column.dataField]);
			if( organizationLayer == null )
			{
				return null;	
			}
			else
			{
				return String(organizationLayer.value);
			}
		}
		
		public static function getOrganizationLayerDescription(item:Object, column:Object):String
		{		
			var organizationLayer:BOrganizationLayer  = BOrganizationLayer (item[column.dataField]);
			if( organizationLayer == null )
			{
				return null;	
			}
			else
			{
				return organizationLayer.description;
			}
		}
		//    OrganizationLayer    end	
		
		public static function getDcNameByDcid(item:Object,column:Object):String{
			var dcid:Number = item[column.dataField] as Number;
			if(dcid == 0 || dcid == -1)
				return null
			else{
				var dc:BDistributionCenter = ClientEnvironment.dcMap.getValue(dcid);
				return dc.name;
			}
				
		}
					
		//    OrganizationCharacter    begin	
		public static function getOrganizationCharacterCode(item:Object, column:Object):String
		{
			var organizationCharacter:BOrganizationCharacter = BOrganizationCharacter (item[column.dataField]);
			if( organizationCharacter == null )
			{
				return null;	
			}
			else
			{
				return organizationCharacter.code;
			}
		}																
			
		public static function getOrganizationCharacterName(item:Object, column:Object):String
		{
			var organizationCharacter:BOrganizationCharacter = BOrganizationCharacter (item[column.dataField]);
			if( organizationCharacter == null )
			{
				return null;	
			}
			else
			{
				return organizationCharacter.name;
			}
		}	
			
		public static function getOrganizationCharacterType(item:Object, column:Object):String
		{
			var organizationCharacter:BOrganizationCharacter = BOrganizationCharacter (item[column.dataField]);
			if( organizationCharacter == null )
			{
				return null;	
			}
			else
			{
				return organizationCharacter.type;
			}
		}									
												
		public static function getOrganizationCharacterDescription(item:Object, column:Object):String
		{
			var organizationCharacter:BOrganizationCharacter = BOrganizationCharacter (item[column.dataField]);
			if( organizationCharacter == null )
			{
				return null;	
			}
			else
			{
				return organizationCharacter.description;
			}
		}
		//    OrganizationCharacter    end	
				
		
		//    Organization    begin	
		public static function getOrganizationCode(item:Object, column:Object):String
		{
			if( item.hasOwnProperty(column.dataField) )
			{
				var organization:BOrganization = BOrganization (item[column.dataField]);
				if( organization == null )
				{
					return null;	
				}
				else
				{
					return organization.code;
				}
			}
			else
			{
				return null;
			}
		}
		
		public static function getOrganizationName(item:Object, column:Object):String
		{
			if( item.hasOwnProperty(column.dataField) )
			{
				var organization:BOrganization = BOrganization (item[column.dataField]);
				if( organization == null )
				{
					return null;	
				}
				else
				{
					return organization.name;
				}
			}
			else
			{
				return null;
			}
		}		
		//    Organization    end		
		
		//    BizData    begin	
		public static function getBizDataCode(item:Object, column:Object):String
		{
			if( item.hasOwnProperty(column.dataField) )
			{
				var bizData:BBizData = BBizData (item[column.dataField]);
				if( bizData == null )
				{
					return null;	
				}
				else
				{
					return bizData.code;
				}				
			}
			return null;
		}				
		
		public static function getBizDataName(item:Object, column:Object):String
		{
			if( item.hasOwnProperty(column.dataField) )
			{
				var bizData:BBizData = BBizData (item[column.dataField]);
				if( bizData == null )
				{
					return null;	
				}
				else
				{
					return bizData.name;
				}				
			}
			return null;
		}		
		//    BizData    end
		
		//    FunPermission    begin
		public static function getFunPermissionCode(item:Object, column:Object):String
		{
			if( item.hasOwnProperty(column.dataField) )
			{
				var funPermission:BFunPermission = BFunPermission (item[column.dataField]);
				if( funPermission == null )
				{
					return null;	
				}
				else
				{
					return funPermission.code;
				}				
			}
			return null;
		}
		
		public static function getFunPermissionName(item:Object, column:Object):String
		{
			if( item.hasOwnProperty(column.dataField) )
			{
				var funPermission:BFunPermission = BFunPermission (item[column.dataField]);
				if( funPermission == null )
				{
					return null;	
				}
				else
				{
					return funPermission.name;
				}				
			}
			return null;
		}
		
		public static function getFunPermissionComments(item:Object, column:Object):String
		{
			if( item.hasOwnProperty(column.dataField) )
			{
				var funPermission:BFunPermission = BFunPermission (item[column.dataField]);
				if( funPermission == null )
				{
					return null;	
				}
				else
				{
					return funPermission.comments;
				}				
			}
			return null;
		}
		
		public static function getFunPermissionDescriptionLocaleByDescription(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var description:String = String (item[column.dataField]);
				return UtilFunPermission.getDescriptionLocale(description);
			}	
			
			return null;			
		}
		
		public static function getFunPermissionDescriptionLocaleByFunPermission(item:Object, column:Object):String
		{			
			if( item.hasOwnProperty(column.dataField) )
			{
				var funPermission:BFunPermission = BFunPermission (item[column.dataField]);
				if( funPermission == null )
				{
					return null;	
				}
				else
				{
					return UtilFunPermission.getDescriptionLocale(funPermission.description);
				}
			}	
			else
			{
				return null;
			}			
		}									
		//    FunPermission    end
		
		//BForecastMakeLogHfcItem begin
		public static function getRationStr(item:Object, column:Object):String
		{
			if(item.newValue==null||item.oldValue==null)
				return null; 
			var newValue:Number=Number(item.newValue);
			var oldValue:Number=Number(item.oldValue);
			if(oldValue==0)
				return "100";
			else
			{
				var value_ratio:Number=(newValue-oldValue)/oldValue*100;
				return value_ratio.toFixed(2);
				
			} 
			return null;			
		}
		//BForecastMakeLogHfcItem end
		//    others    begin
		public static function getYearMonthStr(item:Object, column:Object):String
		{
			if( item.hasOwnProperty(column.dataField) )
			{
				var date4month:Date = item[column.dataField] as Date;
				if( date4month == null )
				{
					return null;	
				}
				else
				{
					var dateTimeFormatter:DateFormatter = new DateFormatter();
					dateTimeFormatter.formatString = "YYYY/MM";
					return dateTimeFormatter.format( date4month );
				}
			}	
			else
			{
				return null;
			}						
		}
		
		public static function getDateStr(item:Object, column:Object):String
		{
			if( item.hasOwnProperty(column.dataField) )
			{
				var dateTime:Date = item[column.dataField] as Date;
				if( dateTime == null )
				{
					return null;	
				}
				else
				{
					var dateTimeFormatter:DateFormatter = new DateFormatter();
					dateTimeFormatter.formatString = "YYYY-MM-DD";
					return dateTimeFormatter.format( dateTime );
				}
			}	
			else
			{
				return null;
			}						
		}			
		
		public static function getDateTimeStr(item:Object, column:Object):String
		{
			if( item.hasOwnProperty(column.dataField) )
			{
				var dateTime:Date = item[column.dataField] as Date;
				if( dateTime == null )
				{
					return null;	
				}
				else
				{
					var dateTimeFormatter:DateFormatter = new DateFormatter();
					dateTimeFormatter.formatString = "YYYY-MM-DD JJ:NN:SS";
					return dateTimeFormatter.format( dateTime );
				}
			}	
			else
			{
				return null;
			}						
		}		
		//    others    end
		
	}
}