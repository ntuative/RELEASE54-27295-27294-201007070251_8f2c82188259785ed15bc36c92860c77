package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_896:String = "select_outfit";
       
      
      private var var_2026:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_896);
         var_2026 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2026;
      }
   }
}
