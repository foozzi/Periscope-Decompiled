package o;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import java.io.IOException;
import java.nio.ByteBuffer;

public class ﾏ<T>
  extends ڹ
  implements Handler.Callback
{
  private int rM;
  private boolean rO;
  private long rl;
  private final ڒ rs;
  private final ڋ rt;
  private final م ru;
  private final ｱ<T> zn;
  private final ﾏ.if<T> zo;
  private final Handler zp;
  private long zq;
  private T zr;
  
  public ﾏ(ڒ paramڒ, ｱ<T> paramｱ, ﾏ.if<T> paramif, Looper paramLooper)
  {
    this.rs = ((ڒ)ړ.יּ(paramڒ));
    this.zn = ((ｱ)ړ.יּ(paramｱ));
    this.zo = ((ﾏ.if)ړ.יּ(paramif));
    if (paramLooper == null) {
      paramڒ = null;
    } else {
      paramڒ = new Handler(paramLooper, this);
    }
    this.zp = paramڒ;
    this.ru = new م();
    this.rt = new ڋ(1);
  }
  
  private void ˌ(long paramLong)
  {
    this.rl = paramLong;
    this.zr = null;
    this.rO = false;
  }
  
  private void ᕀ(T paramT)
  {
    if (this.zp != null)
    {
      this.zp.obtainMessage(0, paramT).sendToTarget();
      return;
    }
    ᵕ(paramT);
  }
  
  private void ᵕ(T paramT)
  {
    this.zo.ᵣ(paramT);
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      break;
    case 0: 
      ᵕ(paramMessage.obj);
      return true;
    }
    return false;
  }
  
  protected void seekTo(long paramLong)
  {
    this.rs.ﹳ(paramLong);
    ˌ(paramLong);
  }
  
  protected void ɜ()
  {
    this.zr = null;
    this.rs.ג(this.rM);
  }
  
  protected int ˉ(long paramLong)
  {
    try
    {
      boolean bool = this.rs.ᐧ(paramLong);
      if (!bool) {
        return 0;
      }
    }
    catch (IOException localIOException)
    {
      throw new ʡ(localIOException);
    }
    int i = 0;
    while (i < this.rs.getTrackCount())
    {
      if (this.zn.ᵢ(this.rs.ϊ(i).mimeType))
      {
        this.rM = i;
        return 1;
      }
      i += 1;
    }
    return -1;
  }
  
  protected void ˊ(long paramLong1, long paramLong2)
  {
    this.rl = paramLong1;
    try
    {
      this.rs.ᐨ(paramLong1);
    }
    catch (IOException localIOException1)
    {
      throw new ʡ(localIOException1);
    }
    if ((!this.rO) && (this.zr == null)) {
      try
      {
        int i = this.rs.ˊ(this.rM, paramLong1, this.ru, this.rt, false);
        if (i == -3)
        {
          this.zq = this.rt.sJ;
          this.zr = this.zn.ˏ(this.rt.ko.array(), this.rt.size);
          this.rt.ko.clear();
        }
        else if (i == -1)
        {
          this.rO = true;
        }
      }
      catch (IOException localIOException2)
      {
        throw new ʡ(localIOException2);
      }
    }
    if ((this.zr != null) && (this.zq <= this.rl))
    {
      ᕀ(this.zr);
      this.zr = null;
    }
  }
  
  protected void ˊ(long paramLong, boolean paramBoolean)
  {
    this.rs.ˏ(this.rM, paramLong);
    ˌ(paramLong);
  }
  
  protected boolean ﮈ()
  {
    return this.rO;
  }
  
  protected boolean ﺓ()
  {
    return true;
  }
  
  protected long ﻤ()
  {
    return this.rs.ϊ(this.rM).re;
  }
  
  protected long ﻥ()
  {
    return -3L;
  }
  
  protected long ｆ()
  {
    return this.rl;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¾
 * JD-Core Version:    0.7.0.1
 */