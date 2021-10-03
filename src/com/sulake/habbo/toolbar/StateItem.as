package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1216:Boolean;
      
      private var var_1886:String;
      
      private var _frames:XMLList;
      
      private var var_1046:String = "-1";
      
      private var var_690:String;
      
      private var var_190:int = 120;
      
      private var var_1273:String = "-1";
      
      private var var_1274:String;
      
      private var var_1887:Boolean;
      
      private var var_1551:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1216 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_1887 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_190 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1274 = param1.@namebase;
         }
         else
         {
            var_1274 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_1046 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1273 = param1.@nextState;
         }
         else
         {
            var_1273 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1551 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_1886 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_690 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_1046 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_1887;
      }
      
      public function get defaultState() : String
      {
         return var_1551;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1551 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_1886;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_190;
      }
      
      public function get loop() : Boolean
      {
         return var_1216;
      }
      
      public function get nextState() : String
      {
         return var_1273;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_690;
      }
      
      public function get stateOver() : String
      {
         return var_1046;
      }
      
      public function get nameBase() : String
      {
         return var_1274;
      }
   }
}
