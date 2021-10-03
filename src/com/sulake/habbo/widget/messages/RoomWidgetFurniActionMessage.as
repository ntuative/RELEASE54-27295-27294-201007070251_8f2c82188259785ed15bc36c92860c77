package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_290:String = "RWFAM_MOVE";
      
      public static const const_752:String = "RWFUAM_ROTATE";
      
      public static const const_620:String = "RWFAM_PICKUP";
       
      
      private var _furniId:int = 0;
      
      private var var_2072:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         _furniId = param2;
         var_2072 = param3;
      }
      
      public function get furniId() : int
      {
         return _furniId;
      }
      
      public function get furniCategory() : int
      {
         return var_2072;
      }
   }
}
