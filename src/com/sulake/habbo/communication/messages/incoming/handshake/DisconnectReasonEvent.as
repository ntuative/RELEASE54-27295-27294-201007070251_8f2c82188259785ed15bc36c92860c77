package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1638:int = 5;
      
      public static const const_1630:int = 113;
      
      public static const const_1557:int = 29;
      
      public static const const_1514:int = 0;
      
      public static const const_1559:int = 102;
      
      public static const const_1669:int = 25;
      
      public static const const_1573:int = 20;
      
      public static const const_1698:int = 116;
      
      public static const const_1537:int = 114;
      
      public static const const_1717:int = 101;
      
      public static const const_1506:int = 108;
      
      public static const const_1580:int = 112;
      
      public static const const_1690:int = 100;
      
      public static const const_1686:int = 24;
      
      public static const const_1305:int = 10;
      
      public static const const_1581:int = 111;
      
      public static const const_1663:int = 23;
      
      public static const const_1671:int = 26;
      
      public static const const_1353:int = 2;
      
      public static const const_1562:int = 22;
      
      public static const const_1568:int = 17;
      
      public static const const_1600:int = 18;
      
      public static const const_1707:int = 3;
      
      public static const const_1613:int = 109;
      
      public static const const_1376:int = 1;
      
      public static const const_1681:int = 103;
      
      public static const const_1665:int = 11;
      
      public static const const_1615:int = 28;
      
      public static const const_1592:int = 104;
      
      public static const const_1720:int = 13;
      
      public static const const_1593:int = 107;
      
      public static const const_1624:int = 27;
      
      public static const const_1588:int = 118;
      
      public static const const_1682:int = 115;
      
      public static const const_1503:int = 16;
      
      public static const const_1658:int = 19;
      
      public static const const_1700:int = 4;
      
      public static const const_1497:int = 105;
      
      public static const const_1596:int = 117;
      
      public static const const_1585:int = 119;
      
      public static const const_1565:int = 106;
      
      public static const const_1675:int = 12;
      
      public static const const_1576:int = 110;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(reason)
         {
            case const_1376:
            case const_1305:
               return "banned";
            case const_1353:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
