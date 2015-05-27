package o;

import android.os.Handler;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.HashMap;

class aey
  implements Runnable
{
  aey(aet paramaet) {}
  
  public void run()
  {
    long l4 = aet.ᵔ(this.bBV).AZ();
    long l5 = aet.ᵔ(this.bBV).Ba();
    Date localDate = aet.ᵔ(this.bBV).Bb();
    if (localDate == null)
    {
      this.bBV.bBT.postDelayed(this, 5000L);
      return;
    }
    long l1 = System.currentTimeMillis();
    if (l4 == 0L)
    {
      if ((aet.ᵢ(this.bBV) > 0L) && (l1 - aet.ᵢ(this.bBV) > 12000L) && (aet.ᵔ(this.bBV) != null))
      {
        akk.ᐪ("RTMP", "Reconnect on zero-send timeout");
        aet.ˊ(this.bBV, 0L);
        aet.ᵔ(this.bBV).Bc();
      }
    }
    else {
      aet.ˊ(this.bBV, l1);
    }
    int j = 0;
    int i = j;
    try
    {
      if (aet.ⁱ(this.bBV) > 0L)
      {
        i = j;
        if (l1 - aet.ⁱ(this.bBV) > 3000L)
        {
          akk.ᐪ("RTMP", "Restart encoder on video output timeout");
          aet.ˋ(this.bBV, 0L);
          i = 1;
        }
      }
    }
    finally {}
    if (i != 0)
    {
      aet.ﾞ(this.bBV).ut();
      aet.ᵔ(this.bBV).AS();
    }
    double d = (new Date().getTime() - localObject.getTime()) / 1000.0D;
    l1 = 0L;
    if (l5 > aet.ﹶ(this.bBV)) {
      l1 = l5 - aet.ﹶ(this.bBV);
    }
    long l3 = l4;
    long l2 = l1;
    if (d > 0.0D)
    {
      l3 = (l4 / d);
      l2 = (l1 / d);
    }
    if (aet.ﹺ(this.bBV).ʺ((int)l3, (int)l2))
    {
      akk.ᐪ("RTMP", "Change video rate: " + aet.ﹺ(this.bBV).AH() * 8 / 1024);
      aet.ﾞ(this.bBV).ﻠ(aet.ﹺ(this.bBV).AH() * 8);
    }
    aet.ˎ(this.bBV, l5);
    if (aet.ﹺ(this.bBV).AD()) {
      aet.ｰ(this.bBV).put("BadConnection", Integer.valueOf(1));
    }
    aet.ʳ(this.bBV);
    i = (int)l3 * 8 / 1024;
    j = (int)l2 * 8 / 1024;
    int k = aet.ﾞ(this.bBV).ur() / 1024;
    DecimalFormat localDecimalFormat = new DecimalFormat("#.#");
    akk.ᐪ("RTMP", "Rate/Sent/Not Sent " + k + "/" + i + "/" + j + " kbits/s fps req/actual:" + localDecimalFormat.format(aet.ﹺ(this.bBV).AI()) + "/" + localDecimalFormat.format(aet.ﹺ(this.bBV).AJ()));
    this.bBV.bBT.postDelayed(this, 5000L);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aey
 * JD-Core Version:    0.7.0.1
 */