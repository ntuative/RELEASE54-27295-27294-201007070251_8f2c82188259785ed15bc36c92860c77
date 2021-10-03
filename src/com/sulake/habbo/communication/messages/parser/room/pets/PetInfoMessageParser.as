package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1849:int;
      
      private var var_420:String;
      
      private var var_1743:int;
      
      private var var_1767:int;
      
      private var var_1851:int;
      
      private var var_2259:int;
      
      private var _nutrition:int;
      
      private var var_1220:int;
      
      private var var_2257:int;
      
      private var var_2258:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1848:int;
      
      private var var_2260:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1743;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2259;
      }
      
      public function flush() : Boolean
      {
         var_1220 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2257;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2258;
      }
      
      public function get maxNutrition() : int
      {
         return var_2260;
      }
      
      public function get figure() : String
      {
         return var_420;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1767;
      }
      
      public function get petId() : int
      {
         return var_1220;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1220 = param1.readInteger();
         _name = param1.readString();
         var_1743 = param1.readInteger();
         var_2257 = param1.readInteger();
         var_1851 = param1.readInteger();
         var_2258 = param1.readInteger();
         _energy = param1.readInteger();
         var_2259 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2260 = param1.readInteger();
         var_420 = param1.readString();
         var_1767 = param1.readInteger();
         var_1848 = param1.readInteger();
         var_1849 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1851;
      }
      
      public function get ownerId() : int
      {
         return var_1848;
      }
      
      public function get age() : int
      {
         return var_1849;
      }
   }
}
