package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1106:int = 1;
      
      private static const const_1079:int = 3;
      
      private static const const_1107:int = 2;
      
      private static const const_1108:int = 15;
       
      
      private var var_908:int;
      
      private var var_231:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_231 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1107)
         {
            var_231 = new Array();
            var_231.push(const_1106);
            var_908 = const_1108;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_908 > 0)
         {
            --var_908;
         }
         if(var_908 == 0)
         {
            if(false)
            {
               super.setAnimation(var_231.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
