package o;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import java.nio.ByteBuffer;

@TargetApi(16)
public class з
  extends ҫ
{
  private final з.if ri;
  private final ۊ rj;
  private int rk;
  private long rl;
  
  public з(ڒ paramڒ)
  {
    this(paramڒ, null, true);
  }
  
  public з(ڒ paramڒ, ᐴ paramᐴ, boolean paramBoolean)
  {
    this(paramڒ, paramᐴ, paramBoolean, null, null);
  }
  
  public з(ڒ paramڒ, ᐴ paramᐴ, boolean paramBoolean, Handler paramHandler, з.if paramif)
  {
    super(paramڒ, paramᐴ, paramBoolean, paramHandler, paramif);
    this.ri = paramif;
    this.rk = 0;
    this.rj = new ۊ();
  }
  
  private void ˊ(ۊ.ˋ paramˋ)
  {
    if ((this.qK != null) && (this.ri != null)) {
      this.qK.post(new л(this, paramˋ));
    }
  }
  
  private void ˊ(ۊ.ˎ paramˎ)
  {
    if ((this.qK != null) && (this.ri != null)) {
      this.qK.post(new ь(this, paramˎ));
    }
  }
  
  protected void onStopped()
  {
    this.rj.pause();
    super.onStopped();
  }
  
  protected void seekTo(long paramLong)
  {
    super.seekTo(paramLong);
    this.rj.reset();
    this.rl = -9223372036854775808L;
  }
  
  protected void İ(int paramInt) {}
  
  protected boolean ƭ()
  {
    return true;
  }
  
  protected void ɛ()
  {
    super.ɛ();
    this.rj.play();
  }
  
  protected void ɜ()
  {
    this.rk = 0;
    try
    {
      this.rj.release();
      return;
    }
    finally
    {
      super.ɜ();
    }
  }
  
  protected void ˊ(long paramLong, boolean paramBoolean)
  {
    super.ˊ(paramLong, paramBoolean);
    this.rl = -9223372036854775808L;
  }
  
  protected void ˊ(MediaCodec paramMediaCodec, String paramString, MediaFormat paramMediaFormat, MediaCrypto paramMediaCrypto)
  {
    if ("OMX.google.raw.decoder".equals(paramString))
    {
      paramString = paramMediaFormat.getString("mime");
      paramMediaFormat.setString("mime", "audio/raw");
      paramMediaCodec.configure(paramMediaFormat, null, paramMediaCrypto, 0);
      paramMediaFormat.setString("mime", paramString);
      return;
    }
    paramMediaCodec.configure(paramMediaFormat, null, paramMediaCrypto, 0);
  }
  
  protected void ˊ(ب paramب, MediaFormat paramMediaFormat)
  {
    if (দ.ˮ(paramب.mimeType))
    {
      this.rj.ˋ(paramب.ԅ());
      return;
    }
    this.rj.ˋ(paramMediaFormat);
  }
  
  protected boolean ˊ(long paramLong1, long paramLong2, MediaCodec paramMediaCodec, ByteBuffer paramByteBuffer, MediaCodec.BufferInfo paramBufferInfo, int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramMediaCodec.releaseOutputBuffer(paramInt, false);
      paramMediaCodec = this.rp;
      paramMediaCodec.qF += 1;
      this.rj.ٵ();
      return true;
    }
    if (!this.rj.isInitialized())
    {
      try
      {
        if (this.rk != 0)
        {
          this.rj.ן(this.rk);
        }
        else
        {
          this.rk = this.rj.م();
          İ(this.rk);
        }
      }
      catch (ۊ.ˋ paramMediaCodec)
      {
        ˊ(paramMediaCodec);
        throw new ʡ(paramMediaCodec);
      }
      if (getState() == 3) {
        this.rj.play();
      }
    }
    int i;
    try
    {
      i = this.rj.ˊ(paramByteBuffer, paramBufferInfo.offset, paramBufferInfo.size, paramBufferInfo.presentationTimeUs);
    }
    catch (ۊ.ˎ paramMediaCodec)
    {
      ˊ(paramMediaCodec);
      throw new ʡ(paramMediaCodec);
    }
    if ((i & 0x1) != 0) {
      this.rl = -9223372036854775808L;
    }
    if ((i & 0x2) != 0)
    {
      paramMediaCodec.releaseOutputBuffer(paramInt, false);
      paramMediaCodec = this.rp;
      paramMediaCodec.qE += 1;
      return true;
    }
    return false;
  }
  
  protected ʄ ˋ(String paramString, boolean paramBoolean)
  {
    if (দ.ˮ(paramString)) {
      return new ʄ("OMX.google.raw.decoder", true);
    }
    return super.ˋ(paramString, paramBoolean);
  }
  
  public void ˋ(int paramInt, Object paramObject)
  {
    if (paramInt == 1)
    {
      this.rj.ᐨ(((Float)paramObject).floatValue());
      return;
    }
    super.ˋ(paramInt, paramObject);
  }
  
  protected boolean ᴵ(String paramString)
  {
    return (দ.ˆ(paramString)) && (super.ᴵ(paramString));
  }
  
  protected boolean ﮈ()
  {
    return (super.ﮈ()) && ((!this.rj.ڋ()) || (!this.rj.ڒ()));
  }
  
  protected boolean ﺓ()
  {
    return (this.rj.ڋ()) || ((super.ﺓ()) && (ν() == 2));
  }
  
  protected long ｆ()
  {
    long l = this.rj.יִ(ﮈ());
    if (l == -9223372036854775808L) {
      this.rl = Math.max(this.rl, super.ｆ());
    } else {
      this.rl = Math.max(this.rl, l);
    }
    return this.rl;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ð·
 * JD-Core Version:    0.7.0.1
 */