package o;

import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.Date;
import java.util.concurrent.Semaphore;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public class ala
  implements Runnable
{
  private String bJH;
  private int bJI;
  private aky bKG = new aky();
  private if bLe;
  private Socket bLf;
  private InputStream bLg;
  private ala.ˊ bLh;
  private boolean bLi = false;
  private aky bLj = new aky();
  private Thread bqT;
  
  public long AZ()
  {
    if (this.bLh != null) {
      return this.bLh.AZ();
    }
    return 0L;
  }
  
  public long Ba()
  {
    if (this.bLh != null) {
      return this.bLh.Ba();
    }
    return 0L;
  }
  
  public Date Bb()
  {
    if (this.bLh != null) {
      return this.bLh.Bb();
    }
    return null;
  }
  
  public void run()
  {
    byte[] arrayOfByte = new byte[32768];
    try
    {
      if (this.bLi)
      {
        SSLSocket localSSLSocket = (SSLSocket)SSLSocketFactory.getDefault().createSocket(this.bJH, this.bJI);
        Semaphore localSemaphore = new Semaphore(0);
        localSSLSocket.addHandshakeCompletedListener(new alb(this, localSemaphore));
        localSSLSocket.startHandshake();
        localSemaphore.acquire();
        this.bLf = localSSLSocket;
      }
      else
      {
        this.bLf = new Socket(this.bJH, this.bJI);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      this.bLe.ˋ(this);
      return;
    }
    this.bLh = new ala.ˊ(this);
    this.bLe.ˊ(this);
    try
    {
      this.bLf.setSoTimeout(50);
      this.bLg = this.bLf.getInputStream();
      for (;;)
      {
        int i;
        try
        {
          i = this.bLg.read(localException, 0, 32768);
        }
        catch (SocketTimeoutException localSocketTimeoutException)
        {
          i = 0;
          this.bLf.setSoTimeout(200);
        }
        if (i > 0)
        {
          this.bLf.setSoTimeout(50);
          akz localakz = this.bKG.ᓽ(i);
          localakz.ᴶ(localException, i);
          this.bLe.ˊ(this, localakz);
        }
      }
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      this.bLe.ˋ(this);
    }
  }
  
  public void shutdown()
  {
    try
    {
      if (this.bLh != null) {
        this.bLh.shutdown();
      }
      this.bqT.interrupt();
      this.bLf.close();
    }
    catch (Exception localException) {}
    this.bKG.shutdown();
  }
  
  public void ˊ(String paramString, int paramInt, boolean paramBoolean, if paramif)
  {
    this.bLe = paramif;
    this.bJH = paramString;
    this.bJI = paramInt;
    this.bLi = paramBoolean;
    this.bqT = new Thread(this);
    this.bqT.start();
  }
  
  public void ˊ(akz paramakz)
  {
    this.bKG.ˋ(paramakz);
  }
  
  public void יִ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.bLh != null) {
      this.bLh.יִ(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
  
  public static abstract interface if
  {
    public abstract void ˊ(ala paramala);
    
    public abstract void ˊ(ala paramala, akz paramakz);
    
    public abstract void ˋ(ala paramala);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ala
 * JD-Core Version:    0.7.0.1
 */