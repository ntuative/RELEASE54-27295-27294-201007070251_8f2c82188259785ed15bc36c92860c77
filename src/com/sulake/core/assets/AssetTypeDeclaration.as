package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2037:Class;
      
      private var var_2039:Class;
      
      private var var_2038:String;
      
      private var var_1330:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2038 = param1;
         var_2039 = param2;
         var_2037 = param3;
         if(rest == null)
         {
            var_1330 = new Array();
         }
         else
         {
            var_1330 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2037;
      }
      
      public function get assetClass() : Class
      {
         return var_2039;
      }
      
      public function get mimeType() : String
      {
         return var_2038;
      }
      
      public function get fileTypes() : Array
      {
         return var_1330;
      }
   }
}
