package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1940:int;
      
      private var var_1943:Boolean = false;
      
      private var var_1942:int;
      
      private var var_1937:int;
      
      private var var_1941:int;
      
      private var var_1298:String;
      
      private var var_1446:int;
      
      private var _offerId:int;
      
      private var var_1936:int;
      
      private var var_1939:Boolean;
      
      private var var_1938:Boolean;
      
      private var var_448:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1298 = param2;
         var_1446 = param3;
         var_1938 = param4;
         var_1939 = param5;
         var_1942 = param6;
         var_1941 = param7;
         var_1937 = param8;
         var_1940 = param9;
         var_1936 = param10;
      }
      
      public function get month() : int
      {
         return var_1940;
      }
      
      public function get page() : ICatalogPage
      {
         return var_448;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_1939;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_448 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_349;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1938;
      }
      
      public function get localizationId() : String
      {
         return var_1298;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1941;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_1943;
      }
      
      public function get day() : int
      {
         return var_1936;
      }
      
      public function get year() : int
      {
         return var_1937;
      }
      
      public function get price() : int
      {
         return var_1446;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_1943 = param1;
      }
      
      public function get periods() : int
      {
         return var_1942;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1446;
      }
      
      public function get productCode() : String
      {
         return var_1298;
      }
   }
}
