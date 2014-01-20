package nid.bharat.config 
{
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	/**
	 * ...
	 * @author Nidin Vinayak
	 */
	public class AppConfig implements IConfig
	{
		
		[Inject]
		public var injector:IInjector;

		[Inject]
		public var mediatorMap:IMediatorMap;

		[Inject]
		public var commandMap:IEventCommandMap;

		[Inject]
		public var contextView:ContextView;

		public function configure():void
		{
			injector.map(UserModel).asSingleton();
			
			mediatorMap.map(UserProfileView).toMediator(UserProfileMediator);
			
			commandMap.map(UserEvent.SIGN_IN).toCommand(UserSignInCommand);
			
			contextView.view.addChild(new MainView());
		}
		
	}

}