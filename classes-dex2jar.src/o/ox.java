package o;

import android.os.Handler;
import android.os.Looper;

final class ox
  extends Handler
{
  private final pa TH;
  private final ot TI;
  private final int Uj;
  private boolean Uk;
  
  ox(ot paramot, Looper paramLooper, int paramInt)
  {
    super(paramLooper);
    this.TI = paramot;
    this.Uj = paramInt;
    this.TH = new pa();
  }
  
  /* Error */
  public void handleMessage(android.os.Message paramMessage)
  {
    // Byte code:
    //   0: invokestatic 37	android/os/SystemClock:uptimeMillis	()J
    //   3: lstore_2
    //   4: aload_0
    //   5: getfield 28	o/ox:TH	Lo/pa;
    //   8: invokevirtual 41	o/pa:bZ	()Lo/oz;
    //   11: astore 4
    //   13: aload 4
    //   15: astore_1
    //   16: aload 4
    //   18: ifnonnull +40 -> 58
    //   21: aload_0
    //   22: monitorenter
    //   23: aload_0
    //   24: getfield 28	o/ox:TH	Lo/pa;
    //   27: invokevirtual 41	o/pa:bZ	()Lo/oz;
    //   30: astore_1
    //   31: aload_1
    //   32: ifnonnull +16 -> 48
    //   35: aload_0
    //   36: iconst_0
    //   37: putfield 43	o/ox:Uk	Z
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_0
    //   43: iconst_0
    //   44: putfield 43	o/ox:Uk	Z
    //   47: return
    //   48: aload_0
    //   49: monitorexit
    //   50: goto +8 -> 58
    //   53: astore_1
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_1
    //   57: athrow
    //   58: aload_0
    //   59: getfield 19	o/ox:TI	Lo/ot;
    //   62: aload_1
    //   63: invokevirtual 49	o/ot:ˊ	(Lo/oz;)V
    //   66: invokestatic 37	android/os/SystemClock:uptimeMillis	()J
    //   69: lload_2
    //   70: lsub
    //   71: aload_0
    //   72: getfield 21	o/ox:Uj	I
    //   75: i2l
    //   76: lcmp
    //   77: iflt +30 -> 107
    //   80: aload_0
    //   81: aload_0
    //   82: invokevirtual 53	o/ox:obtainMessage	()Landroid/os/Message;
    //   85: invokevirtual 57	o/ox:sendMessage	(Landroid/os/Message;)Z
    //   88: ifne +13 -> 101
    //   91: new 59	o/ow
    //   94: dup
    //   95: ldc 61
    //   97: invokespecial 64	o/ow:<init>	(Ljava/lang/String;)V
    //   100: athrow
    //   101: aload_0
    //   102: iconst_1
    //   103: putfield 43	o/ox:Uk	Z
    //   106: return
    //   107: goto -103 -> 4
    //   110: astore_1
    //   111: aload_0
    //   112: iconst_0
    //   113: putfield 43	o/ox:Uk	Z
    //   116: aload_1
    //   117: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	this	ox
    //   0	118	1	paramMessage	android.os.Message
    //   3	67	2	l	long
    //   11	6	4	localoz	oz
    // Exception table:
    //   from	to	target	type
    //   23	31	53	finally
    //   35	40	53	finally
    //   0	4	110	finally
    //   4	13	110	finally
    //   21	23	110	finally
    //   56	58	110	finally
    //   58	101	110	finally
  }
  
  void ˊ(pe parampe, Object paramObject)
  {
    parampe = oz.ˎ(parampe, paramObject);
    try
    {
      this.TH.ˎ(parampe);
      if (!this.Uk)
      {
        this.Uk = true;
        if (!sendMessage(obtainMessage())) {
          throw new ow("Could not send handler message");
        }
      }
      return;
    }
    finally
    {
      parampe = finally;
      throw parampe;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ox
 * JD-Core Version:    0.7.0.1
 */