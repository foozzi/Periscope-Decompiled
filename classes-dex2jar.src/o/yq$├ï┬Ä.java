package o;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import java.nio.ByteBuffer;

class yq$ˎ
  extends yq.ˏ
{
  private yq$ˎ(yq paramyq) {}
  
  public void run()
  {
    ByteBuffer[] arrayOfByteBuffer1 = yq.ˌ(this.bqL).getOutputBuffers();
    ByteBuffer[] arrayOfByteBuffer2 = yq.ʻ(this.bqL).getOutputBuffers();
    MediaCodec.BufferInfo localBufferInfo = new MediaCodec.BufferInfo();
    try
    {
      yq.ˌ(this.bqL).getOutputFormat();
    }
    catch (IllegalStateException localIllegalStateException1) {}
    while (uE())
    {
      i = yq.ˌ(this.bqL).dequeueOutputBuffer(localBufferInfo, 1000L);
      if (i == -2) {
        break;
      }
      if (i >= 0) {
        throw new IllegalStateException("Unexpected audio buffer");
      }
    }
    try
    {
      yq.ʻ(this.bqL).getOutputFormat();
    }
    catch (IllegalStateException localIllegalStateException2) {}
    while (uE())
    {
      i = yq.ʻ(this.bqL).dequeueOutputBuffer(localBufferInfo, 1000L);
      if (i == -2) {
        break;
      }
      if (i >= 0) {
        throw new IllegalStateException("Unexpected video buffer");
      }
    }
    int i = 0;
    int k = 0;
    int j = 0;
    while (uE())
    {
      int m = yq.ˌ(this.bqL).dequeueOutputBuffer(localBufferInfo, 1000L);
      ByteBuffer localByteBuffer;
      if (m >= 0)
      {
        j = 1;
        localByteBuffer = arrayOfByteBuffer1[m];
        localByteBuffer.position(localBufferInfo.offset);
        localByteBuffer.limit(localBufferInfo.offset + localBufferInfo.size);
        yq.ˋ(this.bqL).ˋ(localByteBuffer, localBufferInfo);
        yq.ˌ(this.bqL).releaseOutputBuffer(m, false);
      }
      m = yq.ʻ(this.bqL).dequeueOutputBuffer(localBufferInfo, 1000L);
      if (m >= 0)
      {
        k = 1;
        localByteBuffer = arrayOfByteBuffer2[m];
        localByteBuffer.limit(localBufferInfo.size);
        yq.ˋ(this.bqL).ˊ(localByteBuffer, localBufferInfo);
        yq.ʻ(this.bqL).releaseOutputBuffer(m, false);
      }
      m = i;
      if (i == 0)
      {
        m = i;
        if (j != 0)
        {
          m = i;
          if (k != 0)
          {
            yq.ˋ(this.bqL).ˊ(yq.ˌ(this.bqL).getOutputFormat(), yq.ʻ(this.bqL).getOutputFormat());
            uF();
            m = 1;
          }
        }
      }
      i = m;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.yq.Ë
 * JD-Core Version:    0.7.0.1
 */