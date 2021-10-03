package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1080:int = 31;
      
      private static const const_1079:int = 32;
      
      private static const const_515:int = 30;
      
      private static const const_775:int = 20;
      
      private static const const_514:int = 10;
       
      
      private var var_628:Boolean = false;
      
      private var var_231:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_231 = new Array();
         super();
         super.setAnimation(const_515);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_514)
         {
            if(var_628)
            {
               var_628 = false;
               var_231 = new Array();
               if(_direction == 2)
               {
                  var_231.push(const_775 + 5 - param1);
                  var_231.push(const_514 + 5 - param1);
               }
               else
               {
                  var_231.push(const_775 + param1);
                  var_231.push(const_514 + param1);
               }
               var_231.push(const_515);
               return;
            }
            super.setAnimation(const_515);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
