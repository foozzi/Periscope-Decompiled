package o;

import android.annotation.TargetApi;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.os.ConditionVariable;
import android.util.Log;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

@TargetApi(16)
public final class ۊ
{
  public static boolean sN = false;
  private int sF;
  private final ConditionVariable sO = new ConditionVariable(true);
  private final long[] sP;
  private final ۊ.if sQ;
  private AudioTrack sR;
  private AudioTrack sS;
  private int sT;
  private int sU;
  private int sV;
  private int sW;
  private int sX;
  private int sY;
  private int sZ;
  private long ta;
  private long tb;
  private boolean tc;
  private long td;
  private Method te;
  private long tf;
  private int tg;
  private long th;
  private long ti;
  private long tj;
  private float tk;
  private byte[] tl;
  private int tm;
  private int tn;
  private boolean to;
  private int tp;
  
  public ۊ()
  {
    if (ผ.SDK_INT >= 18) {
      try
      {
        this.te = AudioTrack.class.getMethod("getLatency", null);
      }
      catch (NoSuchMethodException localNoSuchMethodException) {}
    }
    if (ผ.SDK_INT >= 19) {
      this.sQ = new ۊ.ˊ();
    } else {
      this.sQ = new ۊ.if(null);
    }
    this.sP = new long[10];
    this.tk = 1.0F;
    this.tg = 0;
  }
  
  private long ʹ(long paramLong)
  {
    if (this.to)
    {
      if (this.tp == 0) {
        return 0L;
      }
      return 8L * paramLong * this.sF / (this.tp * 1000);
    }
    return paramLong / this.sV;
  }
  
  @TargetApi(21)
  private static int ˊ(AudioTrack paramAudioTrack, ByteBuffer paramByteBuffer, int paramInt)
  {
    return paramAudioTrack.write(paramByteBuffer, paramInt, 1);
  }
  
  @TargetApi(21)
  private static void ˊ(AudioTrack paramAudioTrack, float paramFloat)
  {
    paramAudioTrack.setVolume(paramFloat);
  }
  
  private static void ˋ(AudioTrack paramAudioTrack, float paramFloat)
  {
    paramAudioTrack.setStereoVolume(paramFloat, paramFloat);
  }
  
  private long ՙ(long paramLong)
  {
    return 1000000L * paramLong / this.sF;
  }
  
  private long י(long paramLong)
  {
    return this.sF * paramLong / 1000000L;
  }
  
  private void ڕ()
  {
    if (this.sR == null) {
      return;
    }
    AudioTrack localAudioTrack = this.sR;
    this.sR = null;
    new ܪ(this, localAudioTrack).start();
  }
  
  private boolean ڹ()
  {
    return (isInitialized()) && (this.tg != 0);
  }
  
  private void ۂ()
  {
    long l1 = this.sQ.र();
    if (l1 == 0L) {
      return;
    }
    long l2 = System.nanoTime() / 1000L;
    if (l2 - this.tb >= 30000L)
    {
      this.sP[this.sY] = (l1 - l2);
      this.sY = ((this.sY + 1) % 10);
      if (this.sZ < 10) {
        this.sZ += 1;
      }
      this.tb = l2;
      this.ta = 0L;
      int i = 0;
      while (i < this.sZ)
      {
        this.ta += this.sP[i] / this.sZ;
        i += 1;
      }
    }
    if ((!this.to) && (l2 - this.td >= 500000L))
    {
      this.tc = this.sQ.ঌ();
      if (this.tc)
      {
        long l3 = this.sQ.গ() / 1000L;
        long l4 = this.sQ.ঢ();
        if (l3 < this.ti)
        {
          this.tc = false;
        }
        else if (Math.abs(l3 - l2) > 5000000L)
        {
          this.tc = false;
          Log.w("AudioTrack", "Spurious audio timestamp (system clock mismatch): " + l4 + ", " + l3 + ", " + l2 + ", " + l1);
        }
        else if (Math.abs(ՙ(l4) - l1) > 5000000L)
        {
          this.tc = false;
          Log.w("AudioTrack", "Spurious audio timestamp (frame position mismatch): " + l4 + ", " + l3 + ", " + l2 + ", " + l1);
        }
      }
      if (this.te != null) {
        try
        {
          this.tj = (((Integer)this.te.invoke(this.sS, null)).intValue() * 1000L - ՙ(ʹ(this.sX)));
          this.tj = Math.max(this.tj, 0L);
          if (this.tj > 5000000L)
          {
            Log.w("AudioTrack", "Ignoring impossibly large audio latency: " + this.tj);
            this.tj = 0L;
          }
        }
        catch (Exception localException)
        {
          this.te = null;
        }
      }
      this.td = l2;
    }
  }
  
  /* Error */
  private void ۊ()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 234	o/ۊ:sS	Landroid/media/AudioTrack;
    //   4: invokevirtual 262	android/media/AudioTrack:getState	()I
    //   7: istore_1
    //   8: iload_1
    //   9: iconst_1
    //   10: if_icmpne +4 -> 14
    //   13: return
    //   14: aload_0
    //   15: getfield 234	o/ۊ:sS	Landroid/media/AudioTrack;
    //   18: invokevirtual 265	android/media/AudioTrack:release	()V
    //   21: aload_0
    //   22: aconst_null
    //   23: putfield 234	o/ۊ:sS	Landroid/media/AudioTrack;
    //   26: goto +20 -> 46
    //   29: astore_2
    //   30: aload_0
    //   31: aconst_null
    //   32: putfield 234	o/ۊ:sS	Landroid/media/AudioTrack;
    //   35: goto +11 -> 46
    //   38: astore_2
    //   39: aload_0
    //   40: aconst_null
    //   41: putfield 234	o/ۊ:sS	Landroid/media/AudioTrack;
    //   44: aload_2
    //   45: athrow
    //   46: new 12	o/ۊ$ˋ
    //   49: dup
    //   50: iload_1
    //   51: aload_0
    //   52: getfield 115	o/ۊ:sF	I
    //   55: aload_0
    //   56: getfield 267	o/ۊ:sT	I
    //   59: aload_0
    //   60: getfield 248	o/ۊ:sX	I
    //   63: invokespecial 270	o/ۊ$ˋ:<init>	(IIII)V
    //   66: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	67	0	this	ۊ
    //   7	44	1	i	int
    //   29	1	2	localException	Exception
    //   38	7	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   14	21	29	java/lang/Exception
    //   14	21	38	finally
  }
  
  private void ܚ()
  {
    this.ta = 0L;
    this.sZ = 0;
    this.sY = 0;
    this.tb = 0L;
    this.tc = false;
    this.td = 0L;
  }
  
  public boolean isInitialized()
  {
    return this.sS != null;
  }
  
  public void pause()
  {
    if (isInitialized())
    {
      ܚ();
      this.sS.pause();
    }
  }
  
  public void play()
  {
    if (isInitialized())
    {
      this.ti = (System.nanoTime() / 1000L);
      this.sS.play();
    }
  }
  
  public void release()
  {
    reset();
    ڕ();
  }
  
  public void reset()
  {
    if (isInitialized())
    {
      this.tf = 0L;
      this.tn = 0;
      this.tg = 0;
      this.tj = 0L;
      ܚ();
      if (this.sS.getPlayState() == 3) {
        this.sS.pause();
      }
      AudioTrack localAudioTrack = this.sS;
      this.sS = null;
      this.sQ.ˊ(null, false);
      this.sO.close();
      new ܚ(this, localAudioTrack).start();
    }
  }
  
  public int ˊ(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, long paramLong)
  {
    if (paramInt2 == 0) {
      return 2;
    }
    if ((ผ.SDK_INT <= 22) && (this.to))
    {
      if (this.sS.getPlayState() == 2) {
        return 0;
      }
      if ((this.sS.getPlayState() == 1) && (this.sQ.ܬ() != 0L)) {
        return 0;
      }
    }
    int j = 0;
    int i = j;
    if (this.tn == 0)
    {
      if ((this.to) && (this.tp == 0)) {
        this.tp = ٻ.เ(paramInt2, this.sF);
      }
      paramLong -= ՙ(ʹ(paramInt2));
      if (this.tg == 0)
      {
        this.th = Math.max(0L, paramLong);
        this.tg = 1;
        i = j;
      }
      else
      {
        long l = this.th + ՙ(ʹ(this.tf));
        if ((this.tg == 1) && (Math.abs(l - paramLong) > 200000L))
        {
          Log.e("AudioTrack", "Discontinuity detected [expected " + l + ", got " + paramLong + "]");
          this.tg = 2;
        }
        i = j;
        if (this.tg == 2)
        {
          this.th += paramLong - l;
          this.tg = 1;
          i = 1;
        }
      }
    }
    if (this.tn == 0)
    {
      this.tn = paramInt2;
      paramByteBuffer.position(paramInt1);
      if (ผ.SDK_INT < 21)
      {
        if ((this.tl == null) || (this.tl.length < paramInt2)) {
          this.tl = new byte[paramInt2];
        }
        paramByteBuffer.get(this.tl, 0, paramInt2);
        this.tm = 0;
      }
    }
    paramInt1 = 0;
    if (ผ.SDK_INT < 21)
    {
      paramInt2 = (int)(this.tf - this.sQ.ܬ() * this.sV);
      paramInt2 = this.sX - paramInt2;
      if (paramInt2 > 0)
      {
        paramInt1 = Math.min(this.tn, paramInt2);
        paramInt2 = this.sS.write(this.tl, this.tm, paramInt1);
        paramInt1 = paramInt2;
        if (paramInt2 >= 0)
        {
          this.tm += paramInt2;
          paramInt1 = paramInt2;
        }
      }
    }
    else
    {
      paramInt1 = ˊ(this.sS, paramByteBuffer, this.tn);
    }
    if (paramInt1 < 0) {
      throw new ۊ.ˎ(paramInt1);
    }
    this.tn -= paramInt1;
    this.tf += paramInt1;
    paramInt1 = i;
    if (this.tn == 0) {
      paramInt1 = i | 0x2;
    }
    return paramInt1;
  }
  
  public void ˊ(MediaFormat paramMediaFormat, int paramInt)
  {
    int j = paramMediaFormat.getInteger("channel-count");
    switch (j)
    {
    default: 
      break;
    case 1: 
      i = 4;
      break;
    case 2: 
      i = 12;
      break;
    case 6: 
      i = 252;
      break;
    case 8: 
      i = 1020;
      break;
    }
    throw new IllegalArgumentException("Unsupported channel count: " + j);
    int k = paramMediaFormat.getInteger("sample-rate");
    int m = দ.ˡ(paramMediaFormat.getString("mime"));
    boolean bool;
    if ((m == 5) || (m == 6)) {
      bool = true;
    } else {
      bool = false;
    }
    if ((isInitialized()) && (this.sF == k) && (this.sT == i) && (!this.to) && (!bool)) {
      return;
    }
    reset();
    this.sU = m;
    this.sF = k;
    this.sT = i;
    this.to = bool;
    this.tp = 0;
    this.sV = (j * 2);
    this.sW = AudioTrack.getMinBufferSize(k, i, m);
    if (this.sW != -2) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    if (paramInt != 0)
    {
      this.sX = paramInt;
      return;
    }
    paramInt = this.sW * 4;
    int i = (int)י(250000L) * this.sV;
    j = (int)Math.max(this.sW, י(750000L) * this.sV);
    if (paramInt < i) {
      paramInt = i;
    } else if (paramInt > j) {
      paramInt = j;
    }
    this.sX = paramInt;
  }
  
  public void ˋ(MediaFormat paramMediaFormat)
  {
    ˊ(paramMediaFormat, 0);
  }
  
  public int ן(int paramInt)
  {
    this.sO.block();
    if (paramInt == 0) {
      this.sS = new AudioTrack(3, this.sF, this.sT, this.sU, this.sX, 1);
    } else {
      this.sS = new AudioTrack(3, this.sF, this.sT, this.sU, this.sX, 1, paramInt);
    }
    ۊ();
    paramInt = this.sS.getAudioSessionId();
    if ((sN) && (ผ.SDK_INT < 21))
    {
      if ((this.sR != null) && (paramInt != this.sR.getAudioSessionId())) {
        ڕ();
      }
      if (this.sR == null) {
        this.sR = new AudioTrack(3, 4000, 4, 2, 2, 0, paramInt);
      }
    }
    this.sQ.ˊ(this.sS, this.to);
    ᐨ(this.tk);
    return paramInt;
  }
  
  public int م()
  {
    return ן(0);
  }
  
  public void ٵ()
  {
    if (this.tg == 1) {
      this.tg = 2;
    }
  }
  
  public boolean ڋ()
  {
    return (isInitialized()) && ((ʹ(this.tf) > this.sQ.ܬ()) || (this.sQ.ܪ()));
  }
  
  public boolean ڒ()
  {
    return this.tf > this.sW * 3 / 2;
  }
  
  public void ᐨ(float paramFloat)
  {
    this.tk = paramFloat;
    if (isInitialized())
    {
      if (ผ.SDK_INT >= 21)
      {
        ˊ(this.sS, paramFloat);
        return;
      }
      ˋ(this.sS, paramFloat);
    }
  }
  
  public long יִ(boolean paramBoolean)
  {
    if (!ڹ()) {
      return -9223372036854775808L;
    }
    if (this.sS.getPlayState() == 3) {
      ۂ();
    }
    long l1 = System.nanoTime() / 1000L;
    if (this.tc)
    {
      l1 = י(l1 - this.sQ.গ() / 1000L);
      return ՙ(this.sQ.ঢ() + l1) + this.th;
    }
    if (this.sZ == 0) {
      l1 = this.sQ.र() + this.th;
    } else {
      l1 = this.ta + l1 + this.th;
    }
    long l2 = l1;
    if (!paramBoolean) {
      l2 = l1 - this.tj;
    }
    return l2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Û
 * JD-Core Version:    0.7.0.1
 */