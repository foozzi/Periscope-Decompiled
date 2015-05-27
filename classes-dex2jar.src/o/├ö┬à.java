package o;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import java.nio.ByteBuffer;

@TargetApi(16)
public class ԅ
  extends ҫ
{
  private final ԅ.ˊ se;
  private final ԅ.if sf;
  private final long sg;
  private final int sh;
  private final int si;
  private Surface sj;
  private boolean sk;
  private boolean sl;
  private long sm;
  private long sn;
  private int so;
  private int sp;
  private int sq;
  private float sr;
  private int ss;
  private int st;
  private float su;
  
  public ԅ(ڒ paramڒ, int paramInt1, long paramLong, Handler paramHandler, ԅ.if paramif, int paramInt2)
  {
    this(paramڒ, null, true, paramInt1, paramLong, null, paramHandler, paramif, paramInt2);
  }
  
  public ԅ(ڒ paramڒ, ᐴ paramᐴ, boolean paramBoolean, int paramInt1, long paramLong, ԅ.ˊ paramˊ, Handler paramHandler, ԅ.if paramif, int paramInt2)
  {
    super(paramڒ, paramᐴ, paramBoolean, paramHandler, paramif);
    this.sh = paramInt1;
    this.sg = (1000L * paramLong);
    this.se = paramˊ;
    this.sf = paramif;
    this.si = paramInt2;
    this.sm = -1L;
    this.sp = -1;
    this.sq = -1;
    this.sr = -1.0F;
    this.ss = -1;
    this.st = -1;
    this.su = -1.0F;
  }
  
  private void setSurface(Surface paramSurface)
  {
    if (this.sj == paramSurface) {
      return;
    }
    this.sj = paramSurface;
    this.sk = false;
    int i = getState();
    if ((i == 2) || (i == 3))
    {
      ʢ();
      ʄ();
    }
  }
  
  private void ҫ()
  {
    if ((this.qK == null) || (this.sf == null) || ((this.ss == this.sp) && (this.st == this.sq) && (this.su == this.sr))) {
      return;
    }
    int i = this.sp;
    int j = this.sq;
    float f = this.sr;
    this.qK.post(new ւ(this, i, j, f));
    this.ss = i;
    this.st = j;
    this.su = f;
  }
  
  private void ү()
  {
    if ((this.qK == null) || (this.sf == null) || (this.sk)) {
      return;
    }
    Surface localSurface = this.sj;
    this.qK.post(new ח(this, localSurface));
    this.sk = true;
  }
  
  private void ҷ()
  {
    if ((this.qK == null) || (this.sf == null) || (this.so == 0)) {
      return;
    }
    long l1 = SystemClock.elapsedRealtime();
    int i = this.so;
    long l2 = this.sn;
    this.qK.post(new צ(this, i, l1 - l2));
    this.so = 0;
    this.sn = l1;
  }
  
  protected void onStopped()
  {
    this.sm = -1L;
    ҷ();
    super.onStopped();
  }
  
  protected void seekTo(long paramLong)
  {
    super.seekTo(paramLong);
    this.sl = false;
    this.sm = -1L;
  }
  
  protected void ɛ()
  {
    super.ɛ();
    this.so = 0;
    this.sn = SystemClock.elapsedRealtime();
  }
  
  public void ɜ()
  {
    this.sp = -1;
    this.sq = -1;
    this.sr = -1.0F;
    this.ss = -1;
    this.st = -1;
    this.su = -1.0F;
    if (this.se != null) {
      this.se.disable();
    }
    super.ɜ();
  }
  
  protected boolean ʈ()
  {
    return (super.ʈ()) && (this.sj != null) && (this.sj.isValid());
  }
  
  protected void ˊ(long paramLong, boolean paramBoolean)
  {
    super.ˊ(paramLong, paramBoolean);
    this.sl = false;
    if ((paramBoolean) && (this.sg > 0L)) {
      this.sm = (SystemClock.elapsedRealtime() * 1000L + this.sg);
    }
    if (this.se != null) {
      this.se.enable();
    }
  }
  
  protected void ˊ(MediaCodec paramMediaCodec, int paramInt)
  {
    ท.beginSection("skipVideoBuffer");
    paramMediaCodec.releaseOutputBuffer(paramInt, false);
    ท.endSection();
    paramMediaCodec = this.rp;
    paramMediaCodec.qF += 1;
  }
  
  @TargetApi(21)
  protected void ˊ(MediaCodec paramMediaCodec, int paramInt, long paramLong)
  {
    ҫ();
    ท.beginSection("releaseOutputBufferTimed");
    paramMediaCodec.releaseOutputBuffer(paramInt, paramLong);
    ท.endSection();
    paramMediaCodec = this.rp;
    paramMediaCodec.qE += 1;
    this.sl = true;
    ү();
  }
  
  protected void ˊ(MediaCodec paramMediaCodec, String paramString, MediaFormat paramMediaFormat, MediaCrypto paramMediaCrypto)
  {
    paramMediaCodec.configure(paramMediaFormat, this.sj, paramMediaCrypto, 0);
    paramMediaCodec.setVideoScalingMode(this.sh);
  }
  
  protected void ˊ(ب paramب, MediaFormat paramMediaFormat)
  {
    int i;
    if ((paramMediaFormat.containsKey("crop-right")) && (paramMediaFormat.containsKey("crop-left")) && (paramMediaFormat.containsKey("crop-bottom")) && (paramMediaFormat.containsKey("crop-top"))) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (i != 0) {
      j = paramMediaFormat.getInteger("crop-right") - paramMediaFormat.getInteger("crop-left") + 1;
    } else {
      j = paramMediaFormat.getInteger("width");
    }
    this.sp = j;
    if (i != 0) {
      i = paramMediaFormat.getInteger("crop-bottom") - paramMediaFormat.getInteger("crop-top") + 1;
    } else {
      i = paramMediaFormat.getInteger("height");
    }
    this.sq = i;
  }
  
  protected void ˊ(م paramم)
  {
    super.ˊ(paramم);
    float f;
    if (paramم.ry.sD == -1.0F) {
      f = 1.0F;
    } else {
      f = paramم.ry.sD;
    }
    this.sr = f;
  }
  
  protected boolean ˊ(long paramLong1, long paramLong2, MediaCodec paramMediaCodec, ByteBuffer paramByteBuffer, MediaCodec.BufferInfo paramBufferInfo, int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ˊ(paramMediaCodec, paramInt);
      return true;
    }
    long l = SystemClock.elapsedRealtime();
    paramLong1 = paramBufferInfo.presentationTimeUs - paramLong1 - (l * 1000L - paramLong2);
    l = System.nanoTime();
    paramLong2 = l + 1000L * paramLong1;
    if (this.se != null)
    {
      paramLong2 = this.se.ˎ(paramBufferInfo.presentationTimeUs, paramLong2);
      paramLong1 = (paramLong2 - l) / 1000L;
    }
    if (paramLong1 < -30000L)
    {
      ˋ(paramMediaCodec, paramInt);
      return true;
    }
    if (!this.sl)
    {
      ˎ(paramMediaCodec, paramInt);
      return true;
    }
    if (getState() != 3) {
      return false;
    }
    if (ผ.SDK_INT >= 21)
    {
      if (paramLong1 < 50000L)
      {
        ˊ(paramMediaCodec, paramInt, paramLong2);
        return true;
      }
    }
    else if (paramLong1 < 30000L)
    {
      if (paramLong1 > 11000L) {
        try
        {
          Thread.sleep((paramLong1 - 10000L) / 1000L);
        }
        catch (InterruptedException paramByteBuffer)
        {
          Thread.currentThread().interrupt();
        }
      }
      ˎ(paramMediaCodec, paramInt);
      return true;
    }
    return false;
  }
  
  protected boolean ˊ(MediaCodec paramMediaCodec, boolean paramBoolean, ب paramب1, ب paramب2)
  {
    return (paramب2.mimeType.equals(paramب1.mimeType)) && ((paramBoolean) || ((paramب1.width == paramب2.width) && (paramب1.height == paramب2.height)));
  }
  
  public void ˋ(int paramInt, Object paramObject)
  {
    if (paramInt == 1)
    {
      setSurface((Surface)paramObject);
      return;
    }
    super.ˋ(paramInt, paramObject);
  }
  
  protected void ˋ(MediaCodec paramMediaCodec, int paramInt)
  {
    ท.beginSection("dropVideoBuffer");
    paramMediaCodec.releaseOutputBuffer(paramInt, false);
    ท.endSection();
    paramMediaCodec = this.rp;
    paramMediaCodec.qG += 1;
    this.so += 1;
    if (this.so == this.si) {
      ҷ();
    }
  }
  
  protected void ˎ(MediaCodec paramMediaCodec, int paramInt)
  {
    ҫ();
    ท.beginSection("renderVideoBufferImmediate");
    paramMediaCodec.releaseOutputBuffer(paramInt, true);
    ท.endSection();
    paramMediaCodec = this.rp;
    paramMediaCodec.qE += 1;
    this.sl = true;
    ү();
  }
  
  protected boolean ᴵ(String paramString)
  {
    return (দ.ˇ(paramString)) && (super.ᴵ(paramString));
  }
  
  protected boolean ﺓ()
  {
    if ((super.ﺓ()) && ((this.sl) || (!ʡ()) || (ν() == 2)))
    {
      this.sm = -1L;
      return true;
    }
    if (this.sm == -1L) {
      return false;
    }
    if (SystemClock.elapsedRealtime() * 1000L < this.sm) {
      return true;
    }
    this.sm = -1L;
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ô
 * JD-Core Version:    0.7.0.1
 */