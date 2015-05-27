package o;

import android.util.Log;
import java.io.IOException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;

class zc
{
  private final BlockingQueue<zd> bra = new LinkedBlockingQueue();
  private final if brb = new if(null);
  private String brc;
  
  public void kill()
  {
    this.brb.kill();
  }
  
  public void ˊ(String paramString1, String paramString2, byte[] paramArrayOfByte, String paramString3)
  {
    if (this.brc != null) {
      Log.e("ChatMan", String.format("join another room=%s while still on room=%s", new Object[] { paramString1, this.brc }));
    }
    Log.v("ChatMan", "join room " + paramString1);
    this.brc = paramString1;
    if (anw.isEmpty(paramString3))
    {
      Log.v("ChatMan", "no endpoint, chatman is disabled");
      return;
    }
    if (!this.bra.offer(new zd.if(paramString1, paramString2, paramArrayOfByte, paramString3))) {
      Log.e("ChatMan", "unexpected queue joinroom failure");
    }
  }
  
  public void ˋ(ant paramant)
  {
    if (this.brc == null)
    {
      Log.e("ChatMan", "send message before join a room");
      return;
    }
    Log.v("ChatMan", "send message " + paramant.du());
    if (this.bra.size() >= 100)
    {
      Log.w("ChatMan", "queue full, drop message:" + paramant.du());
      return;
    }
    if (!this.bra.offer(new zd.ˋ(paramant))) {
      Log.e("ChatMan", "unexpected queue send failure");
    }
  }
  
  public void ḯ(String paramString)
  {
    if ((this.brc == null) || (!this.brc.equals(paramString)))
    {
      Log.e("ChatMan", "leave the wrong room=" + paramString);
      return;
    }
    Log.v("ChatMan", "leave room " + paramString);
    this.brc = null;
    if (!this.bra.offer(new zd.ˊ(paramString))) {
      Log.e("ChatMan", "unexpected queue leaveroom failure");
    }
  }
  
  class if
    extends Thread
  {
    private volatile boolean bf = true;
    private za brd;
    
    private if() {}
    
    private void reset() {}
    
    private void ˊ(zd.ˊ paramˊ)
    {
      paramˊ = new ano(paramˊ.brf);
      Log.v("ChatMan", "send " + paramˊ);
      this.brd.ˊ(anp.ˊ(paramˊ));
      Log.v("ChatMan", "close chatconn");
      this.brd.close();
    }
    
    private void ˋ(zd.if paramif)
    {
      Log.v("ChatMan", "dojoin accesstoken=" + paramif.brg + ",room=" + paramif.brf);
      try
      {
        this.brd = ((za)za.ˊ(paramif).get());
      }
      catch (InterruptedException|ExecutionException localInterruptedException)
      {
        paramif = "open chatconn to " + paramif.bri + " error";
        Log.e("ChatMan", paramif);
        throw new IOException(paramif, localInterruptedException);
      }
      anm localanm = new anm(paramif.brg);
      Log.v("ChatMan", "send " + localanm);
      this.brd.ˊ(anp.ˊ(localanm));
      paramif = new ann(paramif.brf);
      Log.v("ChatMan", "send " + paramif);
      this.brd.ˊ(anp.ˊ(paramif));
    }
    
    private void ˎ(ant paramant)
    {
      paramant = new anl(za.ˊ(paramant));
      Log.v("ChatMan", "send " + paramant);
      this.brd.ˊ(anp.ˊ(paramant));
    }
    
    public void kill()
    {
      this.bf = false;
      interrupt();
    }
    
    public void run()
    {
      while (this.bf) {
        try
        {
          zd localzd = (zd)zc.ˊ(zc.this).take();
          if ((localzd instanceof zd.if)) {}
          try
          {
            ˋ((zd.if)localzd);
            break label70;
            if ((localzd instanceof zd.ˊ)) {
              ˊ((zd.ˊ)localzd);
            } else {
              ˎ(((zd.ˋ)localzd).brj);
            }
          }
          catch (IOException localIOException)
          {
            label70:
            Log.e("ChatMan", "write io error", localIOException);
            reset();
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          Log.v("ChatMan", "chatman writer is interrupted");
        }
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.zc
 * JD-Core Version:    0.7.0.1
 */