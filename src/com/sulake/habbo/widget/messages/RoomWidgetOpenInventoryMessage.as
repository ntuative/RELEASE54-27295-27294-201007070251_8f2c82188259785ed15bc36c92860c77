package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_966:String = "inventory_badges";
      
      public static const const_1199:String = "inventory_clothes";
      
      public static const const_1256:String = "inventory_furniture";
      
      public static const const_745:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_902:String = "inventory_effects";
       
      
      private var var_2399:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_745);
         var_2399 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2399;
      }
   }
}
