package nid.bharat.mediators 
{
	import robotlegs.bender.bundles.mvcs.Mediator;
	/**
	 * ...
	 * @author Nidin Vinayak
	 */
	public class UserProfileMediator extends Mediator 
	{
		
		[Inject]
		public var view:UserProfileView;

		override public function initialize():void
		{
			// Redispatch an event from the view to the framework
			addViewListener(UserEvent.SIGN_IN, dispatch);
		}
		
	}

}