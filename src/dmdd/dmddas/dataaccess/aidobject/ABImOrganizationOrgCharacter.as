package dmdd.dmddas.dataaccess.aidobject
{
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.aidobject.ABImOrganizationOrgCharacter")]		
	public class ABImOrganizationOrgCharacter
	{
		public function ABImOrganizationOrgCharacter()
		{
		}
		
		public var detailOrganizationCode:String = null;
		public var detailOrganizationCharacterCode:String = null;
		
		public var importResult:String = null;

	}
}