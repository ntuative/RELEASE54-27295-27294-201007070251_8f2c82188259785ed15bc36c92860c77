package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1743:int;
      
      private var var_1851:int;
      
      private var var_1850:int;
      
      private var _type:int;
      
      private var var_1220:int = -1;
      
      private var var_1853:int;
      
      private var _nutrition:int;
      
      private var var_1854:int;
      
      private var _energy:int;
      
      private var var_2193:int;
      
      private var var_1852:int;
      
      private var var_2160:int;
      
      private var var_1849:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_2162:Boolean;
      
      private var _name:String = "";
      
      private var var_1848:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_2162;
      }
      
      public function get level() : int
      {
         return var_1743;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1854;
      }
      
      public function get id() : int
      {
         return var_1220;
      }
      
      public function get nutritionMax() : int
      {
         return var_1850;
      }
      
      public function get ownerId() : int
      {
         return var_1848;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1220 = param1.id;
         _type = param1.petType;
         var_2193 = param1.petRace;
         _image = param1.image;
         var_2162 = param1.isOwnPet;
         var_1848 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1743 = param1.level;
         var_1853 = param1.levelMax;
         var_1851 = param1.experience;
         var_1854 = param1.experienceMax;
         _energy = param1.energy;
         var_1852 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1850 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_2160 = param1.roomIndex;
         var_1849 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_2160;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1852;
      }
      
      public function get levelMax() : int
      {
         return var_1853;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_2193;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1851;
      }
      
      public function get age() : int
      {
         return var_1849;
      }
   }
}
