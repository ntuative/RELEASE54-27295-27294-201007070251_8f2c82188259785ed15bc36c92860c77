package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_456:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_447:int = 0;
      
      public static const const_873:int = 2;
      
      public static const const_897:int = 1;
      
      public static const const_674:Boolean = false;
      
      public static const const_536:String = "";
      
      public static const const_428:int = 0;
      
      public static const const_390:int = 0;
      
      public static const const_491:int = 0;
       
      
      private var var_2356:int = 0;
      
      private var var_1835:String = "";
      
      private var var_1567:int = 0;
      
      private var var_2359:int = 0;
      
      private var var_2357:Number = 0;
      
      private var var_1988:int = 255;
      
      private var var_2358:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2356;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1567 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2357;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2359 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2356 = param1;
      }
      
      public function get tag() : String
      {
         return var_1835;
      }
      
      public function get alpha() : int
      {
         return var_1988;
      }
      
      public function get ink() : int
      {
         return var_1567;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2357 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2359;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2358 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2358;
      }
      
      public function set tag(param1:String) : void
      {
         var_1835 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1988 = param1;
      }
   }
}
