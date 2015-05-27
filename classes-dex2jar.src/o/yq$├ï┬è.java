package o;

import android.media.AudioRecord;
import java.nio.ByteBuffer;

class yq$ˊ
{
  private byte[] bqO;
  private int bqP;
  private long bqQ;
  
  yq$ˊ(int paramInt)
  {
    this.bqO = new byte[paramInt * 2];
  }
  
  public void clear()
  {
    int i = 0;
    while (i < this.bqO.length)
    {
      this.bqO[i] = 0;
      i += 1;
    }
  }
  
  public long uC()
  {
    return this.bqQ;
  }
  
  public int ˊ(AudioRecord paramAudioRecord, long paramLong)
  {
    this.bqP = paramAudioRecord.read(this.bqO, 0, this.bqO.length);
    this.bqQ = (System.nanoTime() - paramLong);
    return this.bqP;
  }
  
  public void ˊ(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.clear();
    paramByteBuffer.put(this.bqO, 0, this.bqP);
    paramByteBuffer.flip();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.yq.Ë
 * JD-Core Version:    0.7.0.1
 */