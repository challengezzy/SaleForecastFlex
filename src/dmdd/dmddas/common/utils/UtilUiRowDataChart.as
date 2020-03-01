package dmdd.dmddas.common.utils
{
	import aks.aksas.charts.AksChartDataObject;
	
	import com.cool.utils.AlertUtil;
	
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.SysConst;
	import dmdd.dmddas.common.system.ClientEnvironment;
	import dmdd.dmddas.dataaccess.aidobject.ABUiRowData;
	import dmdd.dmddmx.com.chart.ForecastDataChartWindow;
	import dmdd.dmddmx.com.uirowdata.Com_UiRowData_UiRowData_AdvancedDataGrid;
	import dmdd.dmddmx.com.uirowdata.Com_UiRowData_UiRowData_RowColor_AdvancedDataGrid;
	
	import mx.collections.ArrayCollection;
	import mx.managers.PopUpManager;
	import mx.resources.ResourceManager;

	/**
	 * 图形化展示UiRowData数据
	 * */
	public class UtilUiRowDataChart
	{
		public function UtilUiRowDataChart()
		{
		}
		
		private static var chartWindow:ForecastDataChartWindow;
		
		public static function showRowDataChartWindow(adgEdit:Com_UiRowData_UiRowData_AdvancedDataGrid,adgRef:Com_UiRowData_UiRowData_AdvancedDataGrid,
							periodBegin:int, periodEnd:int,arrEditPeriods:ArrayCollection=null,
							callbackFunction4SetNewuiRowData:Function=null,callbackFunction4SetNewuiRowDataObject:Object=null ):ForecastDataChartWindow{
			var i:int;
			var uiRowData:ABUiRowData = null;
			
			//	收集被勾选的 uiRowData	begin
			var arr4checkedUiRowData4scale:ArrayCollection = new ArrayCollection();
			var arr4checkedUiRowData4kpi:ArrayCollection = new ArrayCollection();
			
			var dp4datagridEdit:ArrayCollection = adgEdit.dataProvider as ArrayCollection;
				
			if( dp4datagridEdit != null )
			{
				for( i=0; i<dp4datagridEdit.length; i=i+1 )
				{
					uiRowData = ABUiRowData(dp4datagridEdit.getItemAt(i));
					if( uiRowData.isChecked == true )
					{
						if( uiRowData.bizData.type == BizConst.BIZDATA_TYPE_KPI )
						{
							arr4checkedUiRowData4kpi.addItem( uiRowData );
						}
						else
						{
							arr4checkedUiRowData4scale.addItem( uiRowData );
						}
					}
				}
			}
			
			if(adgRef != null){
				var dp4datagridRef:ArrayCollection = adgRef.dataProvider as ArrayCollection;
				if( dp4datagridRef != null )
				{
					for( i=0; i<dp4datagridRef.length; i=i+1 )
					{
						uiRowData = ABUiRowData(dp4datagridRef.getItemAt(i));
						if( uiRowData.isChecked == true )
						{
							if( uiRowData.bizData.type == BizConst.BIZDATA_TYPE_KPI )
							{
								arr4checkedUiRowData4kpi.addItem( uiRowData );
							}
							else
							{
								arr4checkedUiRowData4scale.addItem( uiRowData );
							}	
						}
					}
				}
			}
			
			var alert_msg:String = "";			
			
			if( arr4checkedUiRowData4scale.length > SysConst.CHART_MAX_NUM )
			{
				alert_msg = ResourceManager.getInstance().getString('alert','alert_msg_chartexceedmaxnum_scale17');
				AlertUtil.show( alert_msg);					
			}
			if( arr4checkedUiRowData4kpi.length > SysConst.CHART_MAX_NUM )
			{
				alert_msg = ResourceManager.getInstance().getString('alert','alert_msg_chartexceedmaxnum_kpi17');
				AlertUtil.show( alert_msg);					
			}				
			//	收集被勾选的 uiRowData	begin
			
			//	收集displayName 和 yFieldName	begin
			var displayName:String = null;
			var yFieldName:String = null;	
			var arr4editableLines:ArrayCollection = new ArrayCollection();
			var arr4displayName4chart4scale:ArrayCollection = new ArrayCollection();
			var arr4yField4chart4scale:ArrayCollection = new ArrayCollection();
			for( i=0; i<arr4checkedUiRowData4scale.length; i=i+1 )
			{
				uiRowData = ABUiRowData( arr4checkedUiRowData4scale.getItemAt(i) );
				
				displayName = UtilUiRowData.getDisplayName4Chart( adgEdit.visibleProduct, uiRowData.product,
					adgEdit.visibleProductChar, uiRowData.productCharacter,
					adgEdit.visibleOrganization, uiRowData.organization,
					adgEdit.visibleOrganizationChar, uiRowData.organizationCharacter,
					true, uiRowData.bizData );
				
				yFieldName = AksChartDataObject.getFiledName(i);
				
				arr4displayName4chart4scale.addItem( displayName );
				arr4yField4chart4scale.addItem( yFieldName );	
				if(uiRowData.bizData.type==BizConst.BIZDATA_TYPE_FCHAND 
					&& ClientEnvironment.getBizDataIsManaging(uiRowData.bizData) == BizConst.GLOBAL_YESNO_YES)
				{
					arr4editableLines.addItem(i);
				}
			}	
			
			var arr4displayName4chart4kpi:ArrayCollection = new ArrayCollection();
			var arr4yField4chart4kpi:ArrayCollection = new ArrayCollection();				
			for( i=0; i<arr4checkedUiRowData4kpi.length; i=i+1 )
			{
				uiRowData = ABUiRowData( arr4checkedUiRowData4kpi.getItemAt(i) );
				
				displayName = UtilUiRowData.getDisplayName4Chart( adgEdit.visibleProduct, uiRowData.product,
					adgEdit.visibleProductChar, uiRowData.productCharacter,
					adgEdit.visibleOrganization, uiRowData.organization,
					adgEdit.visibleOrganizationChar, uiRowData.organizationCharacter,
					true, uiRowData.bizData );
				
				yFieldName = AksChartDataObject.getFiledName(i);
				
				arr4displayName4chart4kpi.addItem( displayName );
				arr4yField4chart4kpi.addItem( yFieldName );	
			}					
			//	收集displayName 和 yFieldName	begin			
			
			// 收集chart 数据源    begin
			var dp4chart4scale:ArrayCollection = new ArrayCollection();
			var dp4chart4kpi:ArrayCollection = new ArrayCollection();
			
			var periodDiff:int = UtilPeriod.getPeriodDifference( periodBegin, periodEnd );
			if( periodDiff == SysConst.PERIOD_DIFF_NULL )
			{
				return chartWindow;
			}
			
			var periodLoc:int;
			
			var aksChartDataObject:AksChartDataObject = null;
			var value4chart:Number;
			for( periodLoc=0; periodLoc<=periodDiff; periodLoc=periodLoc+1 )
			{
				aksChartDataObject = new AksChartDataObject();
				aksChartDataObject.categoryFieldValue = String( UtilPeriod.getPeriod( periodBegin, periodLoc ) );
				for( i=0; i<arr4checkedUiRowData4scale.length; i=i+1 )
				{
					uiRowData = ABUiRowData( arr4checkedUiRowData4scale.getItemAt(i) );
					
					//	历史类数据 0 值处不画图，免得掉下来	begin
					value4chart = uiRowData.pubFun4getPeriodDataValue(periodLoc);
					
					if( uiRowData.bizData.type == BizConst.BIZDATA_TYPE_HISTORY ||
						uiRowData.bizData.type == BizConst.BIZDATA_TYPE_HISTORYAD ||
						uiRowData.bizData.type == BizConst.BIZDATA_TYPE_HISTORYADR || 
						uiRowData.bizData.type == BizConst.BIZDATA_TYPE_TIMEHIS )
					{
						if( value4chart == 0 )
						{
							value4chart = NaN;
						}
					}
					//	历史类数据 0 值处不画图，免得掉下来	end
					
					aksChartDataObject.setData( i, value4chart );
				}
				dp4chart4scale.addItem( aksChartDataObject );
			}
			
			for( periodLoc=0; periodLoc<=periodDiff; periodLoc=periodLoc+1 )
			{
				aksChartDataObject = new AksChartDataObject();
				aksChartDataObject.categoryFieldValue = String( UtilPeriod.getPeriod( periodBegin, periodLoc ) );
				for( i=0; i<arr4checkedUiRowData4kpi.length; i=i+1 )
				{
					uiRowData = ABUiRowData( arr4checkedUiRowData4kpi.getItemAt(i) );
					aksChartDataObject.setData( i, uiRowData.pubFun4getPeriodDataValue(periodLoc) );
				}
				dp4chart4kpi.addItem( aksChartDataObject );
			}				
			// 收集chart 数据源    end				
			
			if(chartWindow == null){
				chartWindow = new ForecastDataChartWindow();
				chartWindow.callbackLineAdjustfunction = callbackFunction4SetNewuiRowData;
				chartWindow.callbackLineAdjustObject = callbackFunction4SetNewuiRowDataObject;
			}
			chartWindow.callbackLineAdjustfunction = callbackFunction4SetNewuiRowData;
			chartWindow.callbackLineAdjustObject = callbackFunction4SetNewuiRowDataObject;
			
			if(arrEditPeriods == null){
				arrEditPeriods = new ArrayCollection();
			}
			
			chartWindow.arr4checkedUiRowData4scale = arr4checkedUiRowData4scale;
			chartWindow.arrEditPeriods = arrEditPeriods;
			chartWindow.arr4editableLines = arr4editableLines;
			
			chartWindow.arr4displayName4chart4scale = arr4displayName4chart4scale;
			chartWindow.arr4yField4chart4scale = arr4yField4chart4scale;
			chartWindow.dp4chart4scale = dp4chart4scale;
			
			chartWindow.arr4displayName4chart4kpi = arr4displayName4chart4kpi;
			chartWindow.arr4yField4chart4kpi = arr4yField4chart4kpi;
			chartWindow.dp4chart4kpi = dp4chart4kpi;
			
			PopUpManager.addPopUp(chartWindow,ClientEnvironment.modWork);
			PopUpManager.centerPopUp(chartWindow);
			chartWindow.refreshTabStatus();
			
			return chartWindow;
		}
		
		public static function showRowDataChartWindow2(adgEdit:Com_UiRowData_UiRowData_RowColor_AdvancedDataGrid, periodBegin:int, periodEnd:int,arrEditPeriods:ArrayCollection=null,
													  callbackFunction4SetNewuiRowData:Function=null,callbackFunction4SetNewuiRowDataObject:Object=null ):ForecastDataChartWindow{
			var i:int;
			var uiRowData:ABUiRowData = null;
			
			//	收集被勾选的 uiRowData	begin
			var arr4checkedUiRowData4scale:ArrayCollection = new ArrayCollection();
			var arr4checkedUiRowData4kpi:ArrayCollection = new ArrayCollection();
			
			var dp4datagridEdit:ArrayCollection = adgEdit.dataProvider as ArrayCollection;
			
			if( dp4datagridEdit != null )
			{
				for( i=0; i<dp4datagridEdit.length; i=i+1 )
				{
					uiRowData = ABUiRowData(dp4datagridEdit.getItemAt(i));
					if( uiRowData.isChecked == true )
					{
						if( uiRowData.bizData.type == BizConst.BIZDATA_TYPE_KPI )
						{
							arr4checkedUiRowData4kpi.addItem( uiRowData );
						}
						else
						{
							arr4checkedUiRowData4scale.addItem( uiRowData );
						}
					}
				}
			}
			
			var alert_msg:String = "";			
			
			if( arr4checkedUiRowData4scale.length > SysConst.CHART_MAX_NUM )
			{
				alert_msg = ResourceManager.getInstance().getString('alert','alert_msg_chartexceedmaxnum_scale17');
				AlertUtil.show( alert_msg);					
			}
			if( arr4checkedUiRowData4kpi.length > SysConst.CHART_MAX_NUM )
			{
				alert_msg = ResourceManager.getInstance().getString('alert','alert_msg_chartexceedmaxnum_kpi17');
				AlertUtil.show( alert_msg);					
			}				
			//	收集被勾选的 uiRowData	begin
			
			//	收集displayName 和 yFieldName	begin
			var displayName:String = null;
			var yFieldName:String = null;	
			var arr4editableLines:ArrayCollection = new ArrayCollection();
			var arr4displayName4chart4scale:ArrayCollection = new ArrayCollection();
			var arr4yField4chart4scale:ArrayCollection = new ArrayCollection();
			for( i=0; i<arr4checkedUiRowData4scale.length; i=i+1 )
			{
				uiRowData = ABUiRowData( arr4checkedUiRowData4scale.getItemAt(i) );
				
				displayName = UtilUiRowData.getDisplayName4Chart( adgEdit.visibleProduct, uiRowData.product,
					adgEdit.visibleProductChar, uiRowData.productCharacter,
					adgEdit.visibleOrganization, uiRowData.organization,
					adgEdit.visibleOrganizationChar, uiRowData.organizationCharacter,
					true, uiRowData.bizData );
				
				yFieldName = AksChartDataObject.getFiledName(i);
				
				arr4displayName4chart4scale.addItem( displayName );
				arr4yField4chart4scale.addItem( yFieldName );	
				if(uiRowData.bizData.type==BizConst.BIZDATA_TYPE_FCHAND 
					&& ClientEnvironment.getBizDataIsManaging(uiRowData.bizData) == BizConst.GLOBAL_YESNO_YES)
				{
					arr4editableLines.addItem(i);
				}
			}	
			
			var arr4displayName4chart4kpi:ArrayCollection = new ArrayCollection();
			var arr4yField4chart4kpi:ArrayCollection = new ArrayCollection();				
			for( i=0; i<arr4checkedUiRowData4kpi.length; i=i+1 )
			{
				uiRowData = ABUiRowData( arr4checkedUiRowData4kpi.getItemAt(i) );
				
				displayName = UtilUiRowData.getDisplayName4Chart( adgEdit.visibleProduct, uiRowData.product,
					adgEdit.visibleProductChar, uiRowData.productCharacter,
					adgEdit.visibleOrganization, uiRowData.organization,
					adgEdit.visibleOrganizationChar, uiRowData.organizationCharacter,
					true, uiRowData.bizData );
				
				yFieldName = AksChartDataObject.getFiledName(i);
				
				arr4displayName4chart4kpi.addItem( displayName );
				arr4yField4chart4kpi.addItem( yFieldName );	
			}					
			//	收集displayName 和 yFieldName	begin			
			
			// 收集chart 数据源    begin
			var dp4chart4scale:ArrayCollection = new ArrayCollection();
			var dp4chart4kpi:ArrayCollection = new ArrayCollection();
			
			var periodDiff:int = UtilPeriod.getPeriodDifference( periodBegin, periodEnd );
			if( periodDiff == SysConst.PERIOD_DIFF_NULL )
			{
				return chartWindow;
			}
			
			var periodLoc:int;
			
			var aksChartDataObject:AksChartDataObject = null;
			var value4chart:Number;
			for( periodLoc=0; periodLoc<=periodDiff; periodLoc=periodLoc+1 )
			{
				aksChartDataObject = new AksChartDataObject();
				aksChartDataObject.categoryFieldValue = String( UtilPeriod.getPeriod( periodBegin, periodLoc ) );
				for( i=0; i<arr4checkedUiRowData4scale.length; i=i+1 )
				{
					uiRowData = ABUiRowData( arr4checkedUiRowData4scale.getItemAt(i) );
					
					//	历史类数据 0 值处不画图，免得掉下来	begin
					value4chart = uiRowData.pubFun4getPeriodDataValue(periodLoc);
					
					if( uiRowData.bizData.type == BizConst.BIZDATA_TYPE_HISTORY ||
						uiRowData.bizData.type == BizConst.BIZDATA_TYPE_HISTORYAD ||
						uiRowData.bizData.type == BizConst.BIZDATA_TYPE_HISTORYADR || 
						uiRowData.bizData.type == BizConst.BIZDATA_TYPE_TIMEHIS )
					{
						if( value4chart == 0 )
						{
							value4chart = NaN;
						}
					}
					//	历史类数据 0 值处不画图，免得掉下来	end
					
					aksChartDataObject.setData( i, value4chart );
				}
				dp4chart4scale.addItem( aksChartDataObject );
			}
			
			for( periodLoc=0; periodLoc<=periodDiff; periodLoc=periodLoc+1 )
			{
				aksChartDataObject = new AksChartDataObject();
				aksChartDataObject.categoryFieldValue = String( UtilPeriod.getPeriod( periodBegin, periodLoc ) );
				for( i=0; i<arr4checkedUiRowData4kpi.length; i=i+1 )
				{
					uiRowData = ABUiRowData( arr4checkedUiRowData4kpi.getItemAt(i) );
					aksChartDataObject.setData( i, uiRowData.pubFun4getPeriodDataValue(periodLoc) );
				}
				dp4chart4kpi.addItem( aksChartDataObject );
			}				
			// 收集chart 数据源    end				
			
			if(chartWindow == null){
				chartWindow = new ForecastDataChartWindow();
				chartWindow.callbackLineAdjustfunction = callbackFunction4SetNewuiRowData;
				chartWindow.callbackLineAdjustObject = callbackFunction4SetNewuiRowDataObject;
			}
			
			if(arrEditPeriods == null){
				arrEditPeriods = new ArrayCollection();
			}
			
			chartWindow.arr4checkedUiRowData4scale = arr4checkedUiRowData4scale;
			chartWindow.arrEditPeriods = arrEditPeriods;
			chartWindow.arr4editableLines = arr4editableLines;
			
			chartWindow.arr4displayName4chart4scale = arr4displayName4chart4scale;
			chartWindow.arr4yField4chart4scale = arr4yField4chart4scale;
			chartWindow.dp4chart4scale = dp4chart4scale;
			
			chartWindow.arr4displayName4chart4kpi = arr4displayName4chart4kpi;
			chartWindow.arr4yField4chart4kpi = arr4yField4chart4kpi;
			chartWindow.dp4chart4kpi = dp4chart4kpi;
			
			PopUpManager.addPopUp(chartWindow,ClientEnvironment.modWork);
			PopUpManager.centerPopUp(chartWindow);
			chartWindow.refreshTabStatus();
			
			return chartWindow;
		}

		
	}
}