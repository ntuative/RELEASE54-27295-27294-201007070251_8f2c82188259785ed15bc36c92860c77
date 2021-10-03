package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_123:String = "RWPUW_CONTENT";
      
      public static const const_135:String = "RWPUW_OFFER";
      
      public static const const_60:String = "RWPUW_ERROR";
       
      
      private var var_1104:Array = null;
      
      private var var_1326:String = "";
      
      private var var_1463:String;
      
      private var var_1327:String = "";
      
      private var var_1105:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
      }
      
      public function get questionArray() : Array
      {
         return var_1104;
      }
      
      public function get startMessage() : String
      {
         return var_1326;
      }
      
      public function get summary() : String
      {
         return var_1463;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1326 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1105 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1463 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1105;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1327 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1327;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1104 = param1;
      }
   }
}
