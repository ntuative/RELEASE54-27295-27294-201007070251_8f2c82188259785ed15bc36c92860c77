package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_986:String = "price_type_none";
      
      public static const const_474:String = "pricing_model_multi";
      
      public static const const_349:String = "price_type_credits";
      
      public static const const_430:String = "price_type_credits_and_pixels";
      
      public static const const_471:String = "pricing_model_bundle";
      
      public static const const_415:String = "pricing_model_single";
      
      public static const const_758:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1357:String = "pricing_model_unknown";
      
      public static const const_505:String = "price_type_pixels";
       
      
      private var var_1883:int;
      
      private var var_885:int;
      
      private var _offerId:int;
      
      private var var_884:int;
      
      private var var_414:String;
      
      private var var_622:String;
      
      private var var_448:ICatalogPage;
      
      private var var_415:IProductContainer;
      
      private var var_1272:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1272 = param1.localizationId;
         var_885 = param1.priceInCredits;
         var_884 = param1.priceInPixels;
         var_448 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_414;
      }
      
      public function get page() : ICatalogPage
      {
         return var_448;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1883 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_415;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_884;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1272 = "";
         var_885 = 0;
         var_884 = 0;
         var_448 = null;
         if(var_415 != null)
         {
            var_415.dispose();
            var_415 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_1883;
      }
      
      public function get priceInCredits() : int
      {
         return var_885;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_414 = const_415;
            }
            else
            {
               var_414 = const_474;
            }
         }
         else if(param1.length > 1)
         {
            var_414 = const_471;
         }
         else
         {
            var_414 = const_1357;
         }
      }
      
      public function get priceType() : String
      {
         return var_622;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_414)
         {
            case const_415:
               var_415 = new SingleProductContainer(this,param1);
               break;
            case const_474:
               var_415 = new MultiProductContainer(this,param1);
               break;
            case const_471:
               var_415 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_414);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1272;
      }
      
      private function analyzePriceType() : void
      {
         if(var_885 > 0 && var_884 > 0)
         {
            var_622 = const_430;
         }
         else if(var_885 > 0)
         {
            var_622 = const_349;
         }
         else if(var_884 > 0)
         {
            var_622 = const_505;
         }
         else
         {
            var_622 = const_986;
         }
      }
   }
}
