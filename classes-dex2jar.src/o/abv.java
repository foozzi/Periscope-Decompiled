package o;

import java.math.BigInteger;
import java.util.Comparator;
import java.util.Locale;

public class abv
  implements abt
{
  private final ot bny;
  private final aad bwR;
  private final abw bwS;
  private final abs bwT;
  private String bwU;
  private String bwV;
  
  public abv(ot paramot, aad paramaad, aek.ˊ paramˊ, abs paramabs)
  {
    this.bny = paramot;
    this.bwR = paramaad;
    this.bwS = new abw(paramˊ, paramot);
    this.bwT = paramabs;
    prepare();
  }
  
  private void ˏ(ant paramant)
  {
    this.bwT.log(String.format(Locale.US, "PubNub: (%s) delivered.", new Object[] { paramant.Cf() }));
    this.bwS.ʼ(paramant);
  }
  
  public void kill()
  {
    this.bwS.kill();
    this.bny.ː(this);
  }
  
  public void onEventMainThread(acb paramacb)
  {
    ant localant = paramacb.bxr;
    if (this.bwR.רּ(localant.Cb()))
    {
      akk.ᐪ("ChatQueue", "Dropping message from blocked user: " + localant.Cb());
      return;
    }
    if ((localant.Cf().bOk == anu.if.bOp) && (this.bwU != null) && (!this.bwU.equals(localant.Cb())))
    {
      akk.ᐧ("ChatQueue", "Received broadcast message from non-broadcaster: " + localant);
      return;
    }
    switch (1.bwW[paramacb.bxq.ordinal()])
    {
    default: 
      break;
    case 1: 
      if (this.bwR.vx().equals(localant.Cb()))
      {
        akk.ᐪ("ChatQueue", "Dropping our own broadcast ended event. ");
        this.bwT.log("PubNub: Message received that was sent by own id.");
        return;
      }
      this.bwS.ᓪ(true);
      ˏ(localant);
      return;
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
      if (!this.bwR.vx().equals(localant.Cb()))
      {
        ˏ(localant);
        return;
      }
      akk.ᐪ("ChatQueue", "Not queuing our own event: " + localant.Cf());
      return;
    case 7: 
      this.bwT.log("PubNub: Received message with type UNKNOWN");
      return;
    }
    ˏ(localant);
  }
  
  public void prepare()
  {
    this.bwS.start();
    this.bny.ʲ(this);
  }
  
  public void ʽ(String paramString1, String paramString2, String paramString3)
  {
    this.bwV = paramString2;
    this.bwU = paramString3;
  }
  
  static class if
    implements Comparator<ant>
  {
    private int ˋ(ant paramant1, ant paramant2)
    {
      paramant1 = paramant1.Ci();
      paramant2 = paramant2.Ci();
      if ((paramant1 == null) && (paramant2 == null)) {
        return 0;
      }
      if (paramant1 == null) {
        return -1;
      }
      if (paramant2 == null) {
        return 1;
      }
      return paramant1.compareTo(paramant2);
    }
    
    public int ˊ(ant paramant1, ant paramant2)
    {
      return ˋ(paramant1, paramant2);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abv
 * JD-Core Version:    0.7.0.1
 */