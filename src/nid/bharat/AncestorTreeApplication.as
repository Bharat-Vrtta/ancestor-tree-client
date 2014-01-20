package nid.bharat 
{
	import flash.display.Sprite;
	import nid.bharat.config.AppConfig;
	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.framework.impl.Context;
	
	/**
	 * ...
	 * @author Nidin Vinayak
	 * @company RTT AG | Munich | Germany
	 */
	public class AncestorTreeApplication extends Sprite 
	{
		
		public function AncestorTreeApplication() 
		{
			var context:Context = new Context()
						.install(MVCSBundle)
						.configure(AppConfig)
						.configure(new ContextView(this));
		}
		
	}

}