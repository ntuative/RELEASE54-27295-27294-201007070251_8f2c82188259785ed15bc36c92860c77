package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1701:String;
      
      private var var_696:String;
      
      private var var_1702:String;
      
      private var var_1700:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1700 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1701 = _loc5_[0];
         var_1702 = _loc5_[1];
         _name = param2;
         var_696 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1701;
      }
      
      public function get languageCode() : String
      {
         return var_1700;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_696;
      }
      
      public function get encoding() : String
      {
         return var_1702;
      }
      
      public function get id() : String
      {
         return var_1700 + "_" + var_1701 + "." + var_1702;
      }
   }
}
