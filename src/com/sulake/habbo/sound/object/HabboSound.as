package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1072:SoundChannel = null;
      
      private var var_886:Boolean;
      
      private var var_1073:Sound = null;
      
      private var var_807:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1073 = param1;
         var_1073.addEventListener(Event.COMPLETE,onComplete);
         var_807 = 1;
         var_886 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_886;
      }
      
      public function stop() : Boolean
      {
         var_1072.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_886 = false;
         var_1072 = var_1073.play(0);
         this.volume = var_807;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_807;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1072.position;
      }
      
      public function get length() : Number
      {
         return var_1073.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_807 = param1;
         if(var_1072 != null)
         {
            var_1072.soundTransform = new SoundTransform(var_807);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_886 = true;
      }
   }
}
