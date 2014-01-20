package nid.bharat.commands 
{
	import robotlegs.bender.bundles.mvcs.Command;
	/**
	 * ...
	 * @author Nidin Vinayak
	 */
	public class UserSignInCommand extends Command
	{
		[Inject]
		public var event:UserEvent;

		[Inject]
		public var model:UserModel;

		override public function execute():void
		{
			if (event.username == "bob")
				model.signedIn = true;
		}
		
	}

}