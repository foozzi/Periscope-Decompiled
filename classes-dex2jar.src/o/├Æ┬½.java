package o;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodec.CryptoException;
import android.media.MediaCodec.CryptoInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

@TargetApi(16)
public abstract class ҫ
  extends ڹ
{
  protected final Handler qK;
  private MediaCodec rA;
  private boolean rB;
  private ByteBuffer[] rC;
  private ByteBuffer[] rD;
  private long rE;
  private int rF;
  private int rG;
  private boolean rH;
  private boolean rI;
  private int rJ;
  private int rK;
  private boolean rL;
  private int rM;
  private int rN;
  private boolean rO;
  private boolean rP;
  private boolean rQ;
  private boolean rR;
  private long rl;
  public final ɛ rp;
  private final ᐴ rq;
  private final boolean rr;
  private final ڒ rs;
  private final ڋ rt;
  private final م ru;
  private final List<Long> rv;
  private final MediaCodec.BufferInfo rw;
  private final ҫ.ˊ rx;
  private ب ry;
  private ᐯ rz;
  
  public ҫ(ڒ paramڒ, ᐴ paramᐴ, boolean paramBoolean, Handler paramHandler, ҫ.ˊ paramˊ)
  {
    boolean bool;
    if (ผ.SDK_INT >= 16) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    this.rs = paramڒ;
    this.rq = paramᐴ;
    this.rr = paramBoolean;
    this.qK = paramHandler;
    this.rx = paramˊ;
    this.rp = new ɛ();
    this.rt = new ڋ(0);
    this.ru = new م();
    this.rv = new ArrayList();
    this.rw = new MediaCodec.BufferInfo();
    this.rJ = 0;
    this.rK = 0;
  }
  
  private static MediaCodec.CryptoInfo ˊ(ڋ paramڋ, int paramInt)
  {
    paramڋ = paramڋ.sI.冖();
    if (paramInt == 0) {
      return paramڋ;
    }
    if (paramڋ.numBytesOfClearData == null) {
      paramڋ.numBytesOfClearData = new int[1];
    }
    int[] arrayOfInt = paramڋ.numBytesOfClearData;
    arrayOfInt[0] += paramInt;
    return paramڋ;
  }
  
  private void ˊ(MediaCodec.CryptoException paramCryptoException)
  {
    if ((this.qK != null) && (this.rx != null)) {
      this.qK.post(new Һ(this, paramCryptoException));
    }
  }
  
  private void ˊ(String paramString, long paramLong1, long paramLong2)
  {
    if ((this.qK != null) && (this.rx != null)) {
      this.qK.post(new ӌ(this, paramString, paramLong1, paramLong2));
    }
  }
  
  private void ˊ(ҫ.if paramif)
  {
    ˋ(paramif);
    throw new ʡ(paramif);
  }
  
  private void ˋ(ҫ.if paramif)
  {
    if ((this.qK != null) && (this.rx != null)) {
      this.qK.post(new ҷ(this, paramif));
    }
  }
  
  private boolean ˋ(long paramLong1, long paramLong2)
  {
    if (this.rP) {
      return false;
    }
    if (this.rG < 0) {
      this.rG = this.rA.dequeueOutputBuffer(this.rw, Ч());
    }
    if (this.rG == -2)
    {
      ˊ(this.ry, this.rA.getOutputFormat());
      localObject = this.rp;
      ((ɛ)localObject).qC += 1;
      return true;
    }
    if (this.rG == -3)
    {
      this.rD = this.rA.getOutputBuffers();
      localObject = this.rp;
      ((ɛ)localObject).qD += 1;
      return true;
    }
    if (this.rG < 0) {
      return false;
    }
    if ((this.rw.flags & 0x4) != 0)
    {
      if (this.rK == 2)
      {
        ʢ();
        ʄ();
      }
      else
      {
        this.rP = true;
      }
      return false;
    }
    int i = ـ(this.rw.presentationTimeUs);
    Object localObject = this.rA;
    ByteBuffer localByteBuffer = this.rD[this.rG];
    MediaCodec.BufferInfo localBufferInfo = this.rw;
    int j = this.rG;
    boolean bool;
    if (i != -1) {
      bool = true;
    } else {
      bool = false;
    }
    if (ˊ(paramLong1, paramLong2, (MediaCodec)localObject, localByteBuffer, localBufferInfo, j, bool))
    {
      if (i != -1) {
        this.rv.remove(i);
      } else {
        this.rl = this.rw.presentationTimeUs;
      }
      this.rG = -1;
      return true;
    }
    return false;
  }
  
  private void γ()
  {
    if (this.rs.ˊ(this.rM, this.rl, this.ru, this.rt, false) == -4) {
      ˊ(this.ru);
    }
  }
  
  private void ε()
  {
    if (this.rA == null) {
      return;
    }
    if (this.rs.ˊ(this.rM, this.rl, this.ru, this.rt, true) == -5) {
      κ();
    }
  }
  
  private void κ()
  {
    this.rE = -1L;
    this.rF = -1;
    this.rG = -1;
    this.rR = true;
    this.rQ = false;
    this.rv.clear();
    if ((ผ.SDK_INT >= 18) && (this.rK == 0))
    {
      this.rA.flush();
      this.rL = false;
    }
    else
    {
      ʢ();
      ʄ();
    }
    if ((this.rI) && (this.ry != null)) {
      this.rJ = 1;
    }
  }
  
  private boolean Ϛ()
  {
    return SystemClock.elapsedRealtime() < this.rE + 1000L;
  }
  
  private int ـ(long paramLong)
  {
    int j = this.rv.size();
    int i = 0;
    while (i < j)
    {
      if (((Long)this.rv.get(i)).longValue() == paramLong) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  private boolean ᵕ(boolean paramBoolean)
  {
    if ((this.rO) || (this.rK == 2)) {
      return false;
    }
    if (this.rF < 0)
    {
      this.rF = this.rA.dequeueInputBuffer(0L);
      if (this.rF < 0) {
        return false;
      }
      this.rt.ko = this.rC[this.rF];
      this.rt.ko.clear();
    }
    if (this.rK == 1)
    {
      this.rA.queueInputBuffer(this.rF, 0, 0, 0L, 4);
      this.rF = -1;
      this.rK = 2;
      return false;
    }
    int i;
    int j;
    if (this.rQ)
    {
      i = -3;
    }
    else
    {
      if (this.rJ == 1)
      {
        i = 0;
        while (i < this.ry.sG.size())
        {
          byte[] arrayOfByte = (byte[])this.ry.sG.get(i);
          this.rt.ko.put(arrayOfByte);
          i += 1;
        }
        this.rJ = 2;
      }
      j = this.rs.ˊ(this.rM, this.rl, this.ru, this.rt, false);
      i = j;
      if (paramBoolean)
      {
        i = j;
        if (this.rN == 1)
        {
          i = j;
          if (j == -2)
          {
            this.rN = 2;
            i = j;
          }
        }
      }
    }
    if (i == -2) {
      return false;
    }
    if (i == -5)
    {
      κ();
      return true;
    }
    if (i == -4)
    {
      if (this.rJ == 2)
      {
        this.rt.ko.clear();
        this.rJ = 1;
      }
      ˊ(this.ru);
      return true;
    }
    if (i == -1)
    {
      if (this.rJ == 2)
      {
        this.rt.ko.clear();
        this.rJ = 1;
      }
      this.rO = true;
      try
      {
        this.rA.queueInputBuffer(this.rF, 0, 0, 0L, 4);
        this.rF = -1;
      }
      catch (MediaCodec.CryptoException localCryptoException1)
      {
        ˊ(localCryptoException1);
        throw new ʡ(localCryptoException1);
      }
      return false;
    }
    if (this.rR)
    {
      if (!this.rt.צ())
      {
        this.rt.ko.clear();
        if (this.rJ == 2) {
          this.rJ = 1;
        }
        return true;
      }
      this.rR = false;
    }
    paramBoolean = this.rt.ւ();
    this.rQ = ᵣ(paramBoolean);
    if (this.rQ) {
      return false;
    }
    try
    {
      i = this.rt.ko.position();
      j = this.rt.size;
      long l = this.rt.sJ;
      if (this.rt.ח()) {
        this.rv.add(Long.valueOf(l));
      }
      if (paramBoolean)
      {
        MediaCodec.CryptoInfo localCryptoInfo = ˊ(this.rt, i - j);
        this.rA.queueSecureInputBuffer(this.rF, 0, localCryptoInfo, l, 0);
      }
      else
      {
        this.rA.queueInputBuffer(this.rF, 0, i, l, 0);
      }
      this.rF = -1;
      this.rL = true;
      this.rJ = 0;
    }
    catch (MediaCodec.CryptoException localCryptoException2)
    {
      ˊ(localCryptoException2);
      throw new ʡ(localCryptoException2);
    }
    return true;
  }
  
  private boolean ᵣ(boolean paramBoolean)
  {
    if (!this.rH) {
      return false;
    }
    int i = this.rq.getState();
    if (i == 0) {
      throw new ʡ(this.rq.ᒌ());
    }
    return (i != 4) && ((paramBoolean) || (!this.rr));
  }
  
  protected void onStopped() {}
  
  protected void seekTo(long paramLong)
  {
    this.rl = paramLong;
    this.rs.ﹳ(paramLong);
    this.rN = 0;
    this.rO = false;
    this.rP = false;
  }
  
  protected void ɛ() {}
  
  /* Error */
  protected void ɜ()
  {
    // Byte code:
    //   0: aload_0
    //   1: aconst_null
    //   2: putfield 188	o/ҫ:ry	Lo/ب;
    //   5: aload_0
    //   6: aconst_null
    //   7: putfield 384	o/ҫ:rz	Lo/ᐯ;
    //   10: aload_0
    //   11: invokevirtual 213	o/ҫ:ʢ	()V
    //   14: aload_0
    //   15: getfield 365	o/ҫ:rH	Z
    //   18: ifeq +17 -> 35
    //   21: aload_0
    //   22: getfield 81	o/ҫ:rq	Lo/ᐴ;
    //   25: invokeinterface 387 1 0
    //   30: aload_0
    //   31: iconst_0
    //   32: putfield 365	o/ҫ:rH	Z
    //   35: aload_0
    //   36: getfield 79	o/ҫ:rs	Lo/ڒ;
    //   39: aload_0
    //   40: getfield 237	o/ҫ:rM	I
    //   43: invokeinterface 390 2 0
    //   48: goto +19 -> 67
    //   51: astore_1
    //   52: aload_0
    //   53: getfield 79	o/ҫ:rs	Lo/ڒ;
    //   56: aload_0
    //   57: getfield 237	o/ҫ:rM	I
    //   60: invokeinterface 390 2 0
    //   65: aload_1
    //   66: athrow
    //   67: return
    //   68: astore_1
    //   69: aload_0
    //   70: getfield 365	o/ҫ:rH	Z
    //   73: ifeq +17 -> 90
    //   76: aload_0
    //   77: getfield 81	o/ҫ:rq	Lo/ᐴ;
    //   80: invokeinterface 387 1 0
    //   85: aload_0
    //   86: iconst_0
    //   87: putfield 365	o/ҫ:rH	Z
    //   90: aload_0
    //   91: getfield 79	o/ҫ:rs	Lo/ڒ;
    //   94: aload_0
    //   95: getfield 237	o/ҫ:rM	I
    //   98: invokeinterface 390 2 0
    //   103: goto +19 -> 122
    //   106: astore_1
    //   107: aload_0
    //   108: getfield 79	o/ҫ:rs	Lo/ڒ;
    //   111: aload_0
    //   112: getfield 237	o/ҫ:rM	I
    //   115: invokeinterface 390 2 0
    //   120: aload_1
    //   121: athrow
    //   122: aload_1
    //   123: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	124	0	this	ҫ
    //   51	15	1	localObject1	Object
    //   68	1	1	localObject2	Object
    //   106	17	1	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   14	35	51	finally
    //   10	14	68	finally
    //   69	90	106	finally
  }
  
  protected final void ʄ()
  {
    if (!ʈ()) {
      return;
    }
    Object localObject2 = this.ry.mimeType;
    MediaCrypto localMediaCrypto = null;
    boolean bool = false;
    if (this.rz != null)
    {
      if (this.rq == null) {
        throw new ʡ("Media requires a DrmSessionManager");
      }
      if (!this.rH)
      {
        this.rq.ˊ(this.rz);
        this.rH = true;
      }
      int i = this.rq.getState();
      if (i == 0) {
        throw new ʡ(this.rq.ᒌ());
      }
      if ((i == 3) || (i == 4))
      {
        localMediaCrypto = this.rq.ᐹ();
        bool = this.rq.requiresSecureDecoderComponent((String)localObject2);
      }
      else
      {
        return;
      }
    }
    Object localObject1 = null;
    try
    {
      localObject2 = ˋ((String)localObject2, bool);
      localObject1 = localObject2;
    }
    catch (ԁ.ˊ localˊ)
    {
      ˊ(new ҫ.if(this.ry, localˊ, -49998));
    }
    if (localObject1 == null) {
      ˊ(new ҫ.if(this.ry, null, -49999));
    }
    String str = localObject1.name;
    this.rB = localObject1.qI;
    long l1;
    try
    {
      l1 = SystemClock.elapsedRealtime();
      this.rA = MediaCodec.createByCodecName(str);
      ˊ(this.rA, str, this.ry.ԅ(), localMediaCrypto);
      this.rA.start();
      long l2 = SystemClock.elapsedRealtime();
      ˊ(str, l2, l2 - l1);
      this.rC = this.rA.getInputBuffers();
      this.rD = this.rA.getOutputBuffers();
    }
    catch (Exception localException)
    {
      ˊ(new ҫ.if(this.ry, localException, str));
    }
    if (getState() == 3) {
      l1 = SystemClock.elapsedRealtime();
    } else {
      l1 = -1L;
    }
    this.rE = l1;
    this.rF = -1;
    this.rG = -1;
    this.rR = true;
    ɛ localɛ = this.rp;
    localɛ.qA += 1;
  }
  
  protected boolean ʈ()
  {
    return (this.rA == null) && (this.ry != null);
  }
  
  protected final boolean ʡ()
  {
    return this.rA != null;
  }
  
  protected void ʢ()
  {
    if (this.rA != null)
    {
      this.rE = -1L;
      this.rF = -1;
      this.rG = -1;
      this.rQ = false;
      this.rv.clear();
      this.rC = null;
      this.rD = null;
      this.rI = false;
      this.rL = false;
      this.rB = false;
      this.rJ = 0;
      this.rK = 0;
      ɛ localɛ = this.rp;
      localɛ.qB += 1;
      try
      {
        this.rA.stop();
        try
        {
          this.rA.release();
          this.rA = null;
        }
        finally
        {
          this.rA = null;
        }
        return;
      }
      finally
      {
        try
        {
          this.rA.release();
          this.rA = null;
        }
        finally
        {
          this.rA = null;
          throw localObject3;
        }
      }
    }
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
      if (ᴵ(this.rs.ϊ(i).mimeType))
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
    for (;;)
    {
      try
      {
        if (this.rs.ᐨ(paramLong1))
        {
          if (this.rN == 0) {
            i = 1;
          } else {
            i = this.rN;
          }
          this.rN = i;
          ε();
          if (this.ry == null) {
            γ();
          }
          if ((this.rA == null) && (ʈ())) {
            ʄ();
          }
          if (this.rA != null)
          {
            if (ˋ(paramLong1, paramLong2)) {
              continue;
            }
            if ((ᵕ(true)) && (ᵕ(false))) {
              continue;
            }
          }
          this.rp.ⅈ();
          return;
        }
      }
      catch (IOException localIOException)
      {
        throw new ʡ(localIOException);
      }
      int i = 0;
    }
  }
  
  protected void ˊ(long paramLong, boolean paramBoolean)
  {
    this.rs.ˏ(this.rM, paramLong);
    this.rN = 0;
    this.rO = false;
    this.rP = false;
    this.rQ = false;
    this.rl = paramLong;
  }
  
  protected void ˊ(MediaCodec paramMediaCodec, String paramString, MediaFormat paramMediaFormat, MediaCrypto paramMediaCrypto)
  {
    paramMediaCodec.configure(paramMediaFormat, null, paramMediaCrypto, 0);
  }
  
  protected void ˊ(ب paramب, MediaFormat paramMediaFormat) {}
  
  protected void ˊ(م paramم)
  {
    ب localب = this.ry;
    this.ry = paramم.ry;
    this.rz = paramم.rz;
    if ((this.rA != null) && (ˊ(this.rA, this.rB, localب, this.ry)))
    {
      this.rI = true;
      this.rJ = 1;
      return;
    }
    if (this.rL)
    {
      this.rK = 1;
      return;
    }
    ʢ();
    ʄ();
  }
  
  protected abstract boolean ˊ(long paramLong1, long paramLong2, MediaCodec paramMediaCodec, ByteBuffer paramByteBuffer, MediaCodec.BufferInfo paramBufferInfo, int paramInt, boolean paramBoolean);
  
  protected boolean ˊ(MediaCodec paramMediaCodec, boolean paramBoolean, ب paramب1, ب paramب2)
  {
    return false;
  }
  
  protected ʄ ˋ(String paramString, boolean paramBoolean)
  {
    return ԁ.ˋ(paramString, paramBoolean);
  }
  
  protected void Ϋ()
  {
    this.rs.release();
  }
  
  protected final int ν()
  {
    return this.rN;
  }
  
  protected long Ч()
  {
    return 0L;
  }
  
  protected boolean ᴵ(String paramString)
  {
    return true;
  }
  
  protected boolean ﮈ()
  {
    return this.rP;
  }
  
  protected boolean ﺓ()
  {
    return (this.ry != null) && (!this.rQ) && ((this.rN != 0) || (this.rG >= 0) || (Ϛ()));
  }
  
  protected long ﻤ()
  {
    return this.rs.ϊ(this.rM).re;
  }
  
  protected long ﻥ()
  {
    long l = this.rs.ﻥ();
    if ((l == -1L) || (l == -3L)) {
      return l;
    }
    return Math.max(l, ｆ());
  }
  
  protected long ｆ()
  {
    return this.rl;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ò«
 * JD-Core Version:    0.7.0.1
 */