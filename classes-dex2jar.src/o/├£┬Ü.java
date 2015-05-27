package o;

import android.media.AudioTrack;
import android.os.ConditionVariable;

class ܚ
  extends Thread
{
  ܚ(ۊ paramۊ, AudioTrack paramAudioTrack) {}
  
  public void run()
  {
    try
    {
      this.tq.release();
      return;
    }
    finally
    {
      ۊ.ˊ(this.tr).open();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ü
 * JD-Core Version:    0.7.0.1
 */