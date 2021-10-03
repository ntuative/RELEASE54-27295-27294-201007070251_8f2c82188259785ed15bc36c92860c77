package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1632:GarbageMonitor = null;
      
      private var var_1383:int = 0;
      
      private var var_1367:Boolean = false;
      
      private var var_2156:String = "";
      
      private var var_1633:String = "";
      
      private var var_382:Number = 0;
      
      private var var_1390:int = 10;
      
      private var var_2472:Array;
      
      private var var_699:int = 0;
      
      private var var_1388:int = 60;
      
      private var var_1135:int = 0;
      
      private var var_1134:int = 0;
      
      private var var_2151:String = "";
      
      private var var_2200:Number = 0;
      
      private var var_1389:int = 1000;
      
      private var var_2199:Boolean = true;
      
      private var var_2201:Number = 0.15;
      
      private var var_136:IHabboConfigurationManager = null;
      
      private var var_2154:String = "";
      
      private var var_1391:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2472 = [];
         super();
         var_1633 = Capabilities.version;
         var_2156 = Capabilities.os;
         var_1367 = Capabilities.isDebugger;
         var_2154 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1632 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1383 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1632.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1632.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_382;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1388 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1633;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1134;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1389)
         {
            ++var_1135;
            _loc3_ = true;
         }
         else
         {
            ++var_699;
            if(var_699 <= 1)
            {
               var_382 = param1;
            }
            else
            {
               _loc4_ = Number(var_699);
               var_382 = var_382 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1383 > var_1388 * 1000 && var_1391 < var_1390)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_382);
            _loc5_ = true;
            if(var_2199 && var_1391 > 0)
            {
               _loc6_ = differenceInPercents(var_2200,var_382);
               if(_loc6_ < var_2201)
               {
                  _loc5_ = false;
               }
            }
            var_1383 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2200 = var_382;
               if(sendReport())
               {
                  ++var_1391;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1390 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1389 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_2154,var_1633,var_2156,var_2151,var_1367,_loc4_,_loc3_,var_1134,var_382,var_1135);
            _connection.send(_loc1_);
            var_1134 = 0;
            var_382 = 0;
            var_699 = 0;
            var_1135 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_136 = param1;
         var_1388 = int(var_136.getKey("performancetest.interval","60"));
         var_1389 = int(var_136.getKey("performancetest.slowupdatelimit","1000"));
         var_1390 = int(var_136.getKey("performancetest.reportlimit","10"));
         var_2201 = Number(var_136.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2199 = Boolean(int(var_136.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
