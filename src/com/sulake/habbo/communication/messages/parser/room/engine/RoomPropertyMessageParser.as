package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomPropertyMessageParser implements IMessageParser
   {
       
      
      private var var_1438:String = null;
      
      private var _floorType:String = null;
      
      private var var_1440:String = null;
      
      private var _roomId:int = 0;
      
      private var var_1439:String = null;
      
      private var _roomCategory:int = 0;
      
      public function RoomPropertyMessageParser()
      {
         super();
      }
      
      public function get wallType() : String
      {
         return var_1438;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get floorType() : String
      {
         return _floorType;
      }
      
      public function get animatedLandskapeType() : String
      {
         return var_1440;
      }
      
      public function flush() : Boolean
      {
         _floorType = null;
         var_1438 = null;
         var_1439 = null;
         var_1440 = null;
         return true;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:String = param1.readString();
         var _loc3_:String = param1.readString();
         switch(_loc2_)
         {
            case "floor":
               _floorType = _loc3_;
               break;
            case "wallpaper":
               var_1438 = _loc3_;
               break;
            case "landscape":
               var_1439 = _loc3_;
               break;
            case "landscapeanim":
               var_1440 = _loc3_;
         }
         return true;
      }
      
      public function get landscapeType() : String
      {
         return var_1439;
      }
   }
}
