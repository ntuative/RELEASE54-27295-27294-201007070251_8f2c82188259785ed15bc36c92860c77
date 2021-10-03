package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_608:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1784:int;
      
      private var var_1782:int;
      
      private var var_2360:Boolean;
      
      private var var_1190:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_608);
         var_1782 = param1;
         var_1784 = param2;
         _color = param3;
         var_1190 = param4;
         var_2360 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1784;
      }
      
      public function get presetNumber() : int
      {
         return var_1782;
      }
      
      public function get brightness() : int
      {
         return var_1190;
      }
      
      public function get apply() : Boolean
      {
         return var_2360;
      }
   }
}
