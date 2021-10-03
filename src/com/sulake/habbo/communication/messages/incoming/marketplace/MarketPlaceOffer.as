package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1446:int;
      
      private var var_2127:int;
      
      private var var_2310:int = -1;
      
      private var var_155:int;
      
      private var var_2311:int;
      
      private var _offerId:int;
      
      private var var_1447:int;
      
      private var _furniId:int;
      
      private var var_1485:String;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         _offerId = param1;
         _furniId = param2;
         var_2311 = param3;
         var_1485 = param4;
         var_1446 = param5;
         var_155 = param6;
         var_2310 = param7;
         var_2127 = param8;
         var_1447 = param9;
      }
      
      public function get status() : int
      {
         return var_155;
      }
      
      public function get price() : int
      {
         return var_1446;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_2310;
      }
      
      public function get offerCount() : int
      {
         return var_1447;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_2311;
      }
      
      public function get averagePrice() : int
      {
         return var_2127;
      }
      
      public function get furniId() : int
      {
         return _furniId;
      }
      
      public function get stuffData() : String
      {
         return var_1485;
      }
   }
}
