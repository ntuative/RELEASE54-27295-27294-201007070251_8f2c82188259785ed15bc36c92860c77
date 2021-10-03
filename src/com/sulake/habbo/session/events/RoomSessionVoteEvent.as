package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_116:String = "RSPE_VOTE_RESULT";
      
      public static const const_130:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1295:int = 0;
      
      private var var_1165:String = "";
      
      private var var_818:Array;
      
      private var var_1078:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1078 = [];
         var_818 = [];
         super(param1,param2,param7,param8);
         var_1165 = param3;
         var_1078 = param4;
         var_818 = param5;
         if(var_818 == null)
         {
            var_818 = [];
         }
         var_1295 = param6;
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
