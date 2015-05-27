package o;

import java.util.Enumeration;
import java.util.Hashtable;

class lp
{
  private Hashtable PG = new Hashtable();
  fz PH = new fz();
  
  public lo aH()
  {
    lo locallo = null;
    synchronized (this.PG)
    {
      if (this.PG.size() > 0) {
        locallo = (lo)this.PG.elements().nextElement();
      }
      return locallo;
    }
  }
  
  public String[] aI()
  {
    return li.ʼ(this.PG);
  }
  
  public String aJ()
  {
    return li.ˊ(this.PG, ",", "-pnpres");
  }
  
  public String aK()
  {
    return li.ˊ(this.PG, ",");
  }
  
  public void ˊ(lo paramlo)
  {
    this.PG.put(paramlo.name, paramlo);
  }
  
  public void ˋ(lg paramlg)
  {
    synchronized (this.PG)
    {
      Enumeration localEnumeration = this.PG.elements();
      while (localEnumeration.hasMoreElements())
      {
        lo locallo = (lo)localEnumeration.nextElement();
        locallo.PF = true;
        locallo.OE.ˊ(locallo.name, paramlg);
      }
      return;
    }
  }
  
  public void ˋ(String[] paramArrayOfString, String paramString)
  {
    int i = 0;
    try
    {
      while (i < paramArrayOfString.length)
      {
        lo locallo = (lo)this.PG.get(paramArrayOfString[i]);
        if ((locallo != null) && (!locallo.connected))
        {
          locallo.connected = true;
          ft localft;
          if (!locallo.PE)
          {
            localft = new ft();
            localft.ˎ(new gc(Integer.valueOf(1)));
            localft.ˎ(new gc("Subscribe connected"));
            localft.ˎ(new gc(paramString));
            locallo.OE.ˎ(locallo.name, localft);
          }
          else
          {
            locallo.PE = true;
            localft = new ft();
            localft.ˎ(new gc(Integer.valueOf(1)));
            localft.ˎ(new gc("Subscribe reconnected"));
            localft.ˎ(new gc(paramString));
            locallo.OE.ˏ(locallo.name, localft);
          }
        }
        i += 1;
      }
      return;
    }
    finally {}
  }
  
  public void ˎ(String[] paramArrayOfString, String paramString)
  {
    int i = 0;
    try
    {
      while (i < paramArrayOfString.length)
      {
        lo locallo = (lo)this.PG.get(paramArrayOfString[i]);
        if (locallo != null)
        {
          locallo.connected = true;
          if (locallo.PF)
          {
            ft localft = new ft();
            localft.ˎ(new gc(Integer.valueOf(1)));
            localft.ˎ(new gc("Subscribe reconnected"));
            localft.ˎ(new gc(paramString));
            locallo.OE.ˏ(locallo.name, localft);
            locallo.PF = false;
          }
        }
        i += 1;
      }
      return;
    }
    finally {}
  }
  
  public void ˏ(String[] paramArrayOfString, String paramString)
  {
    int i = 0;
    try
    {
      while (i < paramArrayOfString.length)
      {
        lo locallo = (lo)this.PG.get(paramArrayOfString[i]);
        if ((locallo != null) && (locallo.connected == true))
        {
          locallo.connected = false;
          ft localft = new ft();
          localft.ˎ(new gc(Integer.valueOf(0)));
          localft.ˎ(new gc("Subscribe unable to connect"));
          localft.ˎ(new gc(paramString));
          locallo.OE.ᐝ(locallo.name, localft);
        }
        i += 1;
      }
      return;
    }
    finally {}
  }
  
  public void ᐢ(String paramString)
  {
    this.PG.remove(paramString);
  }
  
  public lo ᒻ(String paramString)
  {
    return (lo)this.PG.get(paramString);
  }
  
  public void ᔅ(String paramString)
  {
    ˋ(aI(), paramString);
  }
  
  public void ᔉ(String paramString)
  {
    ˏ(aI(), paramString);
  }
  
  public void ᔊ(String paramString)
  {
    ˎ(aI(), paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.lp
 * JD-Core Version:    0.7.0.1
 */