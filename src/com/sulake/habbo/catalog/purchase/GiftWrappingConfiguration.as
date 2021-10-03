package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_687:Array;
      
      private var var_1446:int;
      
      private var var_1711:Array;
      
      private var var_688:Array;
      
      private var var_1287:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1287 = _loc2_.isWrappingEnabled;
         var_1446 = _loc2_.wrappingPrice;
         var_1711 = _loc2_.stuffTypes;
         var_688 = _loc2_.boxTypes;
         var_687 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_687;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1711;
      }
      
      public function get price() : int
      {
         return var_1446;
      }
      
      public function get boxTypes() : Array
      {
         return var_688;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1287;
      }
   }
}
