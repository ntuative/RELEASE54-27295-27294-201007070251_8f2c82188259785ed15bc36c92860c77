package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_1926:String = "";
      
      private var var_168:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_1926 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_168 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_1926;
      }
      
      public function get objectId() : String
      {
         return var_168;
      }
   }
}
