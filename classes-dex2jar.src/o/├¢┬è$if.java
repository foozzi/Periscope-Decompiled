package o;

import android.media.AudioTrack;

class ۊ$if
{
  private int sF;
  protected AudioTrack sS;
  private boolean ts;
  private long tt;
  private long tu;
  private long tv;
  
  public void ˊ(AudioTrack paramAudioTrack, boolean paramBoolean)
  {
    this.sS = paramAudioTrack;
    this.ts = paramBoolean;
    this.tt = 0L;
    this.tu = 0L;
    this.tv = 0L;
    if (paramAudioTrack != null) {
      this.sF = paramAudioTrack.getSampleRate();
    }
  }
  
  public boolean ܪ()
  {
    return (ผ.SDK_INT <= 22) && (this.ts) && (this.sS.getPlayState() == 2) && (this.sS.getPlaybackHeadPosition() == 0);
  }
  
  public long ܬ()
  {
    long l2 = 0xFFFFFFFF & this.sS.getPlaybackHeadPosition();
    long l1 = l2;
    if (ผ.SDK_INT <= 22)
    {
      l1 = l2;
      if (this.ts)
      {
        if (this.sS.getPlayState() == 1) {
          this.tt = l2;
        } else if ((this.sS.getPlayState() == 2) && (l2 == 0L)) {
          this.tv = this.tt;
        }
        l1 = l2 + this.tv;
      }
    }
    if (this.tt > l1) {
      this.tu += 1L;
    }
    this.tt = l1;
    return (this.tu << 32) + l1;
  }
  
  public long र()
  {
    return ܬ() * 1000000L / this.sF;
  }
  
  public boolean ঌ()
  {
    return false;
  }
  
  public long গ()
  {
    throw new UnsupportedOperationException();
  }
  
  public long ঢ()
  {
    throw new UnsupportedOperationException();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Û.if
 * JD-Core Version:    0.7.0.1
 */