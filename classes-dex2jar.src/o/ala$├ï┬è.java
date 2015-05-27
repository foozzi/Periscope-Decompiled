package o;

import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Date;
import java.util.concurrent.LinkedBlockingQueue;

class ala$ˊ
  implements Runnable
{
  private LinkedBlockingQueue<akz> bLm = new LinkedBlockingQueue();
  private long bLn;
  private long bLo;
  private Date bLp;
  private boolean bLq;
  private long bLr = 0L;
  private long bLs = 0L;
  private Date bLt = null;
  private Thread bqT = new Thread(this);
  
  public ala$ˊ(ala paramala)
  {
    this.bqT.start();
  }
  
  public long AZ()
  {
    try
    {
      this.bLr = this.bLn;
      this.bLs = this.bLo;
      this.bLt = this.bLp;
      this.bLp = new Date();
      this.bLo = 0L;
      long l = this.bLs;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public long Ba()
  {
    return this.bLr;
  }
  
  public Date Bb()
  {
    return this.bLt;
  }
  
  public void run()
  {
    Object localObject1 = null;
    try
    {
      OutputStream localOutputStream = ala.ˏ(this.bLl).getOutputStream();
      localObject1 = localOutputStream;
    }
    catch (IOException localIOException1)
    {
      localIOException1.printStackTrace();
    }
    for (;;)
    {
      Object localObject3 = null;
      try
      {
        akz localakz = (akz)this.bLm.take();
        localObject3 = localakz;
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
      if (this.bLq) {
        return;
      }
      if (localObject3 != null) {
        try
        {
          this.bLn -= localObject3.length;
        }
        finally
        {
          localObject2 = finally;
          throw localObject2;
        }
      }
      try
      {
        localObject2.write(localObject3.buffer, 0, localObject3.length);
        this.bLo += localObject3.length;
        ala.ˎ(this.bLl).ˋ(localObject3);
      }
      catch (IOException localIOException2)
      {
        localIOException2.printStackTrace();
      }
    }
  }
  
  public void shutdown()
  {
    this.bLq = true;
    this.bqT.interrupt();
    try
    {
      this.bqT.join();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
    }
  }
  
  public void יִ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      if (this.bLp == null)
      {
        this.bLp = new Date();
        this.bLo = 0L;
      }
      akz localakz = ala.ˎ(this.bLl).ᓽ(paramInt2);
      localakz.ᵣ(paramArrayOfByte, paramInt1, paramInt2);
      this.bLm.add(localakz);
      this.bLn += paramInt2;
      return;
    }
    finally {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ala.Ë
 * JD-Core Version:    0.7.0.1
 */