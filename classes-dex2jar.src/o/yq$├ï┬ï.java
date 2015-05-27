package o;

import android.media.AudioRecord;
import java.util.concurrent.ArrayBlockingQueue;

class yq$ˋ
  extends yq.ˏ
{
  private yq$ˋ(yq paramyq) {}
  
  public void run()
  {
    yq.ʾ(this.bqL).startRecording();
    uF();
    while (uE())
    {
      yq.ˊ localˊ2 = (yq.ˊ)yq.ʿ(this.bqL).poll();
      yq.ˊ localˊ1 = localˊ2;
      if (localˊ2 == null) {
        localˊ1 = new yq.ˊ(1024);
      }
      localˊ1.ˊ(yq.ʾ(this.bqL), yq.ˈ(this.bqL));
      if (!yq.ˉ(this.bqL)) {
        localˊ1.clear();
      }
      yq.ˊ(this.bqL, localˊ1);
    }
    yq.ʿ(this.bqL).clear();
    yq.ʾ(this.bqL).stop();
    yq.ʾ(this.bqL).release();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.yq.Ë
 * JD-Core Version:    0.7.0.1
 */