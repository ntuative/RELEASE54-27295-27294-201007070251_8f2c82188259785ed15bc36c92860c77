package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_116:String = "RWPUE_VOTE_RESULT";
      
      public static const const_130:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1295:int;
      
      private var var_1165:String;
      
      private var var_818:Array;
      
      private var var_1078:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1165 = param2;
         var_1078 = param3;
         var_818 = param4;
         if(var_818 == null)
         {
            var_818 = [];
         }
         var_1295 = param5;
      }
      
      public function get votes() : Array
      {
         return var_818.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1295;
      }
      
      public function get question() : String
      {
         return var_1165;
      }
      
      public function get choices() : Array
      {
         return var_1078.slice();
      }
   }
}
