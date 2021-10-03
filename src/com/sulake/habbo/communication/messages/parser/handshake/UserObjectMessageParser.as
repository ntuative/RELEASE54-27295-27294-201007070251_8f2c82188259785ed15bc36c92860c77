package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_420:String;
      
      private var var_2485:String;
      
      private var var_2487:int;
      
      private var var_2488:int;
      
      private var var_660:String;
      
      private var var_1381:String;
      
      private var _name:String;
      
      private var var_582:int;
      
      private var var_1006:int;
      
      private var var_2484:int;
      
      private var _respectTotal:int;
      
      private var var_2486:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2488;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1381;
      }
      
      public function get customData() : String
      {
         return this.var_2485;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_582;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2487;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2486;
      }
      
      public function get figure() : String
      {
         return this.var_420;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_660;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_420 = param1.readString();
         this.var_660 = param1.readString();
         this.var_2485 = param1.readString();
         this.var_1381 = param1.readString();
         this.var_2484 = param1.readInteger();
         this.var_2486 = param1.readString();
         this.var_2487 = param1.readInteger();
         this.var_2488 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_1006 = param1.readInteger();
         this.var_582 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2484;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1006;
      }
   }
}
