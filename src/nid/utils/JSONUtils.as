package nid.utils 
{
	/**
	 * ...
	 * @author Nidin Vinayak
	 */
	public class JSONUtils 
	{
		
		public function JSONUtils() 
		{
			
		}
		static public function ArrayToStringVector(data:Array):Vector.<String> {
			var vect:Vector.<String> = new Vector.<String>();
			for (var i:int = 0; i < data.length; i++) {
				vect.push(String(data[i]));
			}
			return vect;
		}
		
	}

}