package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_76:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_246:Vector3d = null;
      
      private var var_2015:int = 0;
      
      private var var_2173:String = null;
      
      private var _category:int = 0;
      
      private var var_2174:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_2174 = param3;
         var_76 = new Vector3d();
         var_76.assign(param4);
         var_246 = new Vector3d();
         var_246.assign(param5);
         var_2015 = param6;
         var_2173 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_76;
      }
      
      public function get typeId() : int
      {
         return var_2015;
      }
      
      public function get dir() : Vector3d
      {
         return var_246;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_2173;
      }
      
      public function get operation() : String
      {
         return var_2174;
      }
      
      public function dispose() : void
      {
         var_76 = null;
         var_246 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
