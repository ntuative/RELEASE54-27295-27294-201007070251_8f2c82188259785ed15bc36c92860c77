package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_981:Array;
      
      private var var_885:int;
      
      private var var_1272:String;
      
      private var _offerId:int;
      
      private var var_884:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1272 = param1.readString();
         var_885 = param1.readInteger();
         var_884 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_981 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_981.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_981;
      }
      
      public function get priceInCredits() : int
      {
         return var_885;
      }
      
      public function get localizationId() : String
      {
         return var_1272;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_884;
      }
   }
}
