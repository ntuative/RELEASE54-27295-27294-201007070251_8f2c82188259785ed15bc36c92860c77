package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_222:String = "e";
      
      public static const const_79:String = "i";
      
      public static const const_82:String = "s";
       
      
      private var var_1032:String;
      
      private var var_1212:String;
      
      private var var_1215:int;
      
      private var var_2172:int;
      
      private var var_1033:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1212 = param1.readString();
         var_2172 = param1.readInteger();
         var_1032 = param1.readString();
         var_1033 = param1.readInteger();
         var_1215 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1033;
      }
      
      public function get productType() : String
      {
         return var_1212;
      }
      
      public function get expiration() : int
      {
         return var_1215;
      }
      
      public function get furniClassId() : int
      {
         return var_2172;
      }
      
      public function get extraParam() : String
      {
         return var_1032;
      }
   }
}
