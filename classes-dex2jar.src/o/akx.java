package o;

import java.io.InterruptedIOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetSocketAddress;
import java.net.SocketAddress;

public class akx
{
  private static final akx bKR = new akx();
  private long bKS = 0L;
  private if bKT;
  private long bKU = 0L;
  
  private akx()
  {
    Bn();
  }
  
  public static akx Bl()
  {
    return bKR;
  }
  
  protected long Bm()
  {
    try
    {
      long l = this.bKS;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void Bn()
  {
    if ((this.bKT == null) || (!this.bKT.bKV)) {
      this.bKT = new if();
    }
  }
  
  public long getTime()
  {
    long l1 = Bm();
    long l2 = System.currentTimeMillis();
    if ((l1 == 0L) || (this.bKU == 0L) || (l2 - this.bKU > 3600000L))
    {
      akk.ᐪ("RTMP", "Requesting clock update");
      Bn();
    }
    return l2 + l1;
  }
  
  protected void ᐢ(long paramLong)
  {
    try
    {
      this.bKS = paramLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  class if
    implements Runnable
  {
    public boolean bKV = true;
    private DatagramSocket bKW = null;
    private Thread bqT = new Thread(this);
    
    public if()
    {
      this.bqT.start();
    }
    
    private void ᐝ(byte[] paramArrayOfByte, int paramInt, long paramLong)
    {
      long l = paramLong / 1000L + 2208988800L;
      akw.ͺ(l, paramArrayOfByte, paramInt);
      akw.ͺ(4294967296L * (paramLong - 1000L * l) / 1000L, paramArrayOfByte, paramInt + 4);
    }
    
    private long ᗮ(byte[] paramArrayOfByte, int paramInt)
    {
      return 1000L * (akt.ᒽ(paramArrayOfByte, paramInt) - 2208988800L) + 1000L * akt.ᒽ(paramArrayOfByte, paramInt + 4) / 4294967296L;
    }
    
    public void run()
    {
      try
      {
        for (;;)
        {
          this.bKW = new DatagramSocket();
          this.bKW.setSoTimeout(800);
          Object localObject3 = new InetSocketAddress("pool.ntp.org", 123);
          long l1 = System.currentTimeMillis();
          long l2 = System.nanoTime();
          Object localObject1 = new byte[48];
          localObject1[0] = 27;
          ᐝ((byte[])localObject1, 40, l1);
          localObject3 = new DatagramPacket((byte[])localObject1, localObject1.length, (SocketAddress)localObject3);
          this.bKW.send((DatagramPacket)localObject3);
          localObject3 = new DatagramPacket((byte[])localObject1, localObject1.length);
          int i;
          try
          {
            this.bKW.receive((DatagramPacket)localObject3);
            i = 1;
          }
          catch (InterruptedIOException localInterruptedIOException)
          {
            i = 0;
          }
          if (i != 0)
          {
            l2 = l1 + (System.nanoTime() - l2) / 1000000L;
            long l3 = ᗮ((byte[])localObject1, 24);
            long l4 = ᗮ((byte[])localObject1, 32);
            long l5 = ᗮ((byte[])localObject1, 40);
            l1 = l2 - l1 - (l5 - l4);
            if (l1 < 250L)
            {
              l2 = (l4 - l3 + (l5 - l2)) / 2L;
              akx.this.ᐢ(l2);
              akk.ᐪ("RTMP", "Clock offset: " + l2 + " roundtrip: " + l1 + " msecs");
              akx.ˊ(akx.this, System.currentTimeMillis());
              this.bKW.close();
              this.bKW = null;
              break;
            }
            akk.ᐪ("RTMP", "Round-trip msecs: " + l1);
          }
          localObject1 = this.bqT;
          Thread.sleep(500L);
        }
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      finally
      {
        this.bKV = false;
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akx
 * JD-Core Version:    0.7.0.1
 */