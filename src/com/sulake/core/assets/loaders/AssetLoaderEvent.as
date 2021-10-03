package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_955:String = "AssetLoaderEventUnload";
      
      public static const const_42:String = "AssetLoaderEventError";
      
      public static const const_906:String = "AssetLoaderEventOpen";
      
      public static const const_972:String = "AssetLoaderEventProgress";
      
      public static const const_1052:String = "AssetLoaderEventStatus";
      
      public static const const_29:String = "AssetLoaderEventComplete";
       
      
      private var var_155:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_155 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_155;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_155);
      }
   }
}
