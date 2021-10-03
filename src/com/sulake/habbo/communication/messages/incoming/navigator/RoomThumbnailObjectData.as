package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1642:int;
      
      private var var_1643:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1642;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1642 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1642 = this.var_1642;
         _loc1_.var_1643 = this.var_1643;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1643 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1643;
      }
   }
}
