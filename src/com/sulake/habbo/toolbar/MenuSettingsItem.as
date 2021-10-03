package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2075:Array;
      
      private var var_1885:String;
      
      private var var_2074:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1885 = param1;
         var_2075 = param2;
         var_2074 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1885;
      }
      
      public function get yieldList() : Array
      {
         return var_2075;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_2074;
      }
   }
}
