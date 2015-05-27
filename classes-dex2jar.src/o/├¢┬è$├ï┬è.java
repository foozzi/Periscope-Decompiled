package o;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;

@TargetApi(19)
class ۊ$ˊ
  extends ۊ.if
{
  private final AudioTimestamp tw = new AudioTimestamp();
  private long tx;
  private long ty;
  private long tz;
  
  public ۊ$ˊ()
  {
    super(null);
  }
  
  public void ˊ(AudioTrack paramAudioTrack, boolean paramBoolean)
  {
    super.ˊ(paramAudioTrack, paramBoolean);
    this.tx = 0L;
    this.ty = 0L;
    this.tz = 0L;
  }
  
  public boolean ঌ()
  {
    boolean bool = this.sS.getTimestamp(this.tw);
    if (bool)
    {
      long l = this.tw.framePosition;
      if (this.ty > l) {
        this.tx += 1L;
      }
      this.ty = l;
      this.tz = ((this.tx << 32) + l);
    }
    return bool;
  }
  
  public long গ()
  {
    return this.tw.nanoTime;
  }
  
  public long ঢ()
  {
    return this.tz;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Û.Ë
 * JD-Core Version:    0.7.0.1
 */