package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1080:int = 31;
      
      private static const const_1079:int = 32;
      
      private static const const_775:int = 10;
      
      private static const const_514:int = 20;
       
      
      private var var_628:Boolean = false;
      
      private var var_231:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_231 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!var_628)
            {
               var_628 = true;
               var_231 = new Array();
               var_231.push(const_1080);
               var_231.push(const_1079);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_775)
         {
            if(var_628)
            {
               var_628 = false;
               var_231 = new Array();
               var_231.push(const_775 + param1);
               var_231.push(const_514 + param1);
               var_231.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
