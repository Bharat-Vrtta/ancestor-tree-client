package nid.bharat.tree.data 
{
	import nid.utils.JSONUtils;
	/**
	 * ...
	 * @author Nidin Vinayak
	 */
	public class TNode 
	{
		/**
		 * Unique Identification Number
		 */
		private var _uid:Boolean;
		public function get UID():Boolean { return _uid; }
		
		/**
		 * Editable flag
		 */
		private var _editable:Boolean;
		public function get editable():Boolean { return _editable; }
		
		/**
		 * Names
		 */
		private var _names:Vector.<String>;
		public function get name():String{ return _names[0]; }
		public function get names():Vector.<String>{ return _names; }
		public function addName(value:String):void {
			if (_editable)_names.push(value); 
		}
		
		/**
		 * Description
		 */
		private var _info:String;
		public function get info():String{ return _info; }
		public function set info(value:String):void {
			if (_editable)_info = value;
		}
		
		/**
		 * Gender
		 */
		private var _gender:String;
		public function get gender():String{ return _gender; }
		public function set gender(value:String):void { 
			if (_editable)_gender = value; 
		}
		
		/**
		 * Date of birth
		 */
		private var _dob:String;
		public function get dateOfBirth():String{ return _dob; }
		public function set dateOfBirth(value:String):void { 
			if (_editable)_dob = value; 
		}
		
		/**
		 * Parents
		 */
		private var _parents:Vector.<TNode>;
		public function get parents():Vector.<TNode> { return _parents; }
		public function set parents(value:Vector.<TNode>):void {
			if (_editable)_parents = value;
		}
		public function addParent(value:TNode):void {
			if (_editable)_parents.push(value);
		}
		
		/**
		 * Partners
		 */
		private var _partners:Vector.<TNode>;
		public function get partners():Vector.<TNode> { return _partners; }
		public function set partners(value:Vector.<TNode>):void {
			if (_editable)_partners = value;
		}
		public function addPartner(value:TNode):void {
			if (_editable)_partners.push(value);
		}
		
		/**
		 * Children
		 */
		private var _children:Vector.<TNode>;
		public function get children():Vector.<TNode> { return _children; }
		public function set (value:Vector.<TNode>):void {
			if (_editable)_children = value;
		}
		public function addChild(value:TNode):void {
			if (_editable)_children.push(value);
		}
		
		/**
		 * is loaded flag
		 */
		private var _loaded:Boolean;
		public function get isLoaded():Boolean { return _loaded; }
		
		public function get hasParents():Boolean { return _parents && _parents.length > 0; }
		public function get hasPartners():Boolean { return _partners && _partners.length > 0; }
		public function get hasChildren():Boolean { return _children && _children.length > 0; }
		
		public function TNode(data:Object=null,editable:Boolean=false) 
		{
			_editable = editable;
			_uid = data.uid;
			_names = JSONUtils.ArrayToStringVector(Array(data.names));
			_gender = data.gender;
			_dob = data.dob;
			_info = data.info;
		}
		
	}

}