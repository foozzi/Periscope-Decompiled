package o;

import android.widget.MediaController.MediaPlayerControl;

public class য
  implements MediaController.MediaPlayerControl
{
  private final ʢ Bq;
  
  public য(ʢ paramʢ)
  {
    this.Bq = paramʢ;
  }
  
  public boolean canPause()
  {
    return true;
  }
  
  public boolean canSeekBackward()
  {
    return true;
  }
  
  public boolean canSeekForward()
  {
    return true;
  }
  
  public int getAudioSessionId()
  {
    throw new UnsupportedOperationException();
  }
  
  public int getBufferPercentage()
  {
    return this.Bq.ｬ();
  }
  
  public int getCurrentPosition()
  {
    if (this.Bq.getDuration() == -1L) {
      return 0;
    }
    return (int)this.Bq.ｖ();
  }
  
  public int getDuration()
  {
    if (this.Bq.getDuration() == -1L) {
      return 0;
    }
    return (int)this.Bq.getDuration();
  }
  
  public boolean isPlaying()
  {
    return this.Bq.ｔ();
  }
  
  public void pause()
  {
    this.Bq.ᑊ(false);
  }
  
  public void seekTo(int paramInt)
  {
    long l;
    if (this.Bq.getDuration() == -1L) {
      l = 0L;
    } else {
      l = Math.min(Math.max(0, paramInt), getDuration());
    }
    this.Bq.seekTo(l);
  }
  
  public void start()
  {
    this.Bq.ᑊ(true);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¦¯
 * JD-Core Version:    0.7.0.1
 */