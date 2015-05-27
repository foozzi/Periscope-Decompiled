package o;

import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import java.util.Iterator;

public final class 乀
  implements Handler.Callback
{
  private final 乀.if Eq;
  private final ArrayList<ᒴ.ˊ> Er = new ArrayList();
  final ArrayList<ᒴ.ˊ> Es = new ArrayList();
  private boolean Et = false;
  private final ArrayList<ᒴ.ˋ> Eu = new ArrayList();
  private final Handler mHandler;
  
  public 乀(Looper paramLooper, 乀.if paramif)
  {
    this.Eq = paramif;
    this.mHandler = new Handler(paramLooper, this);
  }
  
  public boolean handleMessage(Message arg1)
  {
    if (???.what == 1)
    {
      ᒴ.ˊ localˊ = (ᒴ.ˊ)???.obj;
      synchronized (this.Er)
      {
        if ((this.Eq.ᐵ()) && (this.Eq.isConnected()) && (this.Er.contains(localˊ))) {
          localˊ.ˊ(this.Eq.ᑈ());
        }
      }
      return true;
    }
    Log.wtf("GmsClientEvents", "Don't know how to handle this message.");
    return false;
  }
  
  public void ʽ(ConnectionResult paramConnectionResult)
  {
    this.mHandler.removeMessages(1);
    synchronized (this.Eu)
    {
      Iterator localIterator = new ArrayList(this.Eu).iterator();
      while (localIterator.hasNext())
      {
        ᒴ.ˋ localˋ = (ᒴ.ˋ)localIterator.next();
        boolean bool = this.Eq.ᐵ();
        if (!bool) {
          return;
        }
        if (this.Eu.contains(localˋ)) {
          localˋ.ˊ(paramConnectionResult);
        }
      }
      return;
    }
  }
  
  public void ˊ(ᒴ.ˊ paramˊ)
  {
    ﺧ.ᔈ(paramˊ);
    synchronized (this.Er)
    {
      if (this.Er.contains(paramˊ)) {
        Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + paramˊ + " is already registered");
      } else {
        this.Er.add(paramˊ);
      }
    }
    if (this.Eq.isConnected()) {
      this.mHandler.sendMessage(this.mHandler.obtainMessage(1, paramˊ));
    }
  }
  
  public void ˊ(ᒴ.ˋ paramˋ)
  {
    ﺧ.ᔈ(paramˋ);
    synchronized (this.Eu)
    {
      if (this.Eu.contains(paramˋ)) {
        Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + paramˋ + " is already registered");
      } else {
        this.Eu.add(paramˋ);
      }
      return;
    }
  }
  
  public void ˋ(ᒴ.ˊ paramˊ)
  {
    ﺧ.ᔈ(paramˊ);
    synchronized (this.Er)
    {
      if (!this.Er.remove(paramˊ)) {
        Log.w("GmsClientEvents", "unregisterConnectionCallbacks(): listener " + paramˊ + " not found");
      } else if (this.Et) {
        this.Es.add(paramˊ);
      }
      return;
    }
  }
  
  public void ˋ(ᒴ.ˋ paramˋ)
  {
    ﺧ.ᔈ(paramˋ);
    synchronized (this.Eu)
    {
      if (!this.Eu.remove(paramˋ)) {
        Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + paramˋ + " not found");
      }
      return;
    }
  }
  
  public void ˎ(Bundle paramBundle)
  {
    label168:
    label173:
    for (;;)
    {
      synchronized (this.Er)
      {
        if (!this.Et)
        {
          bool = true;
          ﺧ.ᐪ(bool);
          this.mHandler.removeMessages(1);
          this.Et = true;
          if (this.Es.size() != 0) {
            break label168;
          }
          bool = true;
          ﺧ.ᐪ(bool);
          Iterator localIterator = new ArrayList(this.Er).iterator();
          if (localIterator.hasNext())
          {
            ᒴ.ˊ localˊ = (ᒴ.ˊ)localIterator.next();
            if ((this.Eq.ᐵ()) && (this.Eq.isConnected()))
            {
              if (this.Es.contains(localˊ)) {
                break label173;
              }
              localˊ.ˊ(paramBundle);
              break label173;
            }
          }
          this.Es.clear();
          this.Et = false;
          return;
        }
      }
      boolean bool = false;
      continue;
      bool = false;
    }
  }
  
  public void ᵅ(int paramInt)
  {
    this.mHandler.removeMessages(1);
    label113:
    for (;;)
    {
      synchronized (this.Er)
      {
        this.Et = true;
        Iterator localIterator = new ArrayList(this.Er).iterator();
        if (localIterator.hasNext())
        {
          ᒴ.ˊ localˊ = (ᒴ.ˊ)localIterator.next();
          if (this.Eq.ᐵ())
          {
            if (!this.Er.contains(localˊ)) {
              break label113;
            }
            localˊ.ܙ(paramInt);
            break label113;
          }
        }
        this.Es.clear();
        this.Et = false;
        return;
      }
    }
  }
  
  protected void ọ()
  {
    synchronized (this.Er)
    {
      ˎ(this.Eq.ᑈ());
      return;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ä¹
 * JD-Core Version:    0.7.0.1
 */