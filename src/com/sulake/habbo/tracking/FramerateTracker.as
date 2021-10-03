package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class FramerateTracker
   {
       
      
      private var var_1383:int;
      
      private var var_382:Number;
      
      private var var_1627:int;
      
      private var var_955:int;
      
      private var var_2184:int;
      
      private var var_2183:Boolean;
      
      private var _reportIntervalMillis:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++var_955;
         var _loc3_:int = getTimer();
         if(var_955 == 1)
         {
            var_382 = param1;
            var_1383 = _loc3_;
         }
         else
         {
            _loc4_ = Number(var_955);
            var_382 = var_382 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(var_2183 && _loc3_ - var_1383 >= _reportIntervalMillis && var_1627 < var_2184)
         {
            _loc5_ = 1000 / var_382;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++var_1627;
            var_1383 = _loc3_;
            var_955 = 0;
         }
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         _reportIntervalMillis = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         var_2184 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         var_2183 = true;
      }
      
      public function dispose() : void
      {
      }
   }
}
