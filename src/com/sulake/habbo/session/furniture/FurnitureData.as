package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1539:String = "e";
      
      public static const const_1651:String = "i";
      
      public static const const_1693:String = "s";
       
      
      private var _id:int;
      
      private var var_2108:String;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_2110:int;
      
      private var var_1412:Array;
      
      private var var_2107:int;
      
      private var var_2109:int;
      
      private var var_2111:int;
      
      private var _name:String;
      
      private var _revision:int;
      
      private var var_1307:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String, param12:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_2110 = param4;
         _revision = param5;
         var_2107 = param6;
         var_2109 = param7;
         var_2111 = param8;
         var_1412 = param9;
         _title = param10;
         var_1307 = param11;
         var_2108 = param12;
      }
      
      public function get tileSizeY() : int
      {
         return var_2109;
      }
      
      public function get tileSizeZ() : int
      {
         return var_2111;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get adUrl() : String
      {
         return var_2108;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return _revision;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_2110;
      }
      
      public function get tileSizeX() : int
      {
         return var_2107;
      }
      
      public function get colours() : Array
      {
         return var_1412;
      }
      
      public function get description() : String
      {
         return var_1307;
      }
   }
}
