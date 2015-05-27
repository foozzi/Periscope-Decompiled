package o;

import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import java.io.IOException;
import java.nio.ByteBuffer;

public class aks
{
  private MediaMuxer bJU;
  int bJV = -1;
  int bJW = -1;
  long[] bJX = new long[2];
  
  private void ˊ(int paramInt, ByteBuffer paramByteBuffer, MediaCodec.BufferInfo paramBufferInfo)
  {
    for (;;)
    {
      try
      {
        if ((this.bJU != null) && (paramInt >= 0))
        {
          if (paramBufferInfo.presentationTimeUs < this.bJX[paramInt])
          {
            localObject = new StringBuilder();
            if (paramInt == this.bJV)
            {
              paramByteBuffer = "Audio";
              akk.ᐪ("RTMP", paramByteBuffer + " time reversed from " + this.bJX[paramInt] / 1000L + " to " + paramBufferInfo.presentationTimeUs / 1000L);
            }
          }
          else
          {
            if (paramBufferInfo.presentationTimeUs - this.bJX[paramInt] > 100000L)
            {
              StringBuilder localStringBuilder = new StringBuilder();
              if (paramInt != this.bJV) {
                break label249;
              }
              localObject = "Audio";
              akk.ᐪ("RTMP", (String)localObject + " time jump from " + this.bJX[paramInt] / 1000L + " to " + paramBufferInfo.presentationTimeUs / 1000L);
            }
            this.bJX[paramInt] = paramBufferInfo.presentationTimeUs;
            this.bJU.writeSampleData(paramInt, paramByteBuffer, paramBufferInfo);
            paramByteBuffer.position(paramBufferInfo.offset);
            paramByteBuffer.limit(paramBufferInfo.offset + paramBufferInfo.size);
          }
        }
        else {
          return;
        }
      }
      finally {}
      paramByteBuffer = "Video";
      continue;
      label249:
      Object localObject = "Video";
    }
  }
  
  public void Bd()
  {
    try
    {
      MediaMuxer localMediaMuxer = this.bJU;
      if (localMediaMuxer != null)
      {
        try
        {
          this.bJU.stop();
          this.bJU.release();
          akk.ᐪ("RTMP", "Recording ended");
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
        this.bJU = null;
      }
      return;
    }
    finally {}
  }
  
  public void ˊ(String paramString, MediaFormat paramMediaFormat1, MediaFormat paramMediaFormat2)
  {
    try
    {
      try
      {
        long[] arrayOfLong = this.bJX;
        this.bJX[1] = 0L;
        arrayOfLong[0] = 0L;
        this.bJU = new MediaMuxer(paramString, 0);
        this.bJV = this.bJU.addTrack(paramMediaFormat1);
        this.bJW = this.bJU.addTrack(paramMediaFormat2);
        this.bJU.start();
        akk.ᐪ("RTMP", "Recording started to: " + paramString);
      }
      catch (IOException paramString)
      {
        paramString.printStackTrace();
      }
      return;
    }
    finally {}
  }
  
  public void ˎ(ByteBuffer paramByteBuffer, MediaCodec.BufferInfo paramBufferInfo)
  {
    try
    {
      ˊ(this.bJV, paramByteBuffer, paramBufferInfo);
      return;
    }
    finally
    {
      paramByteBuffer = finally;
      throw paramByteBuffer;
    }
  }
  
  public void ˏ(ByteBuffer paramByteBuffer, MediaCodec.BufferInfo paramBufferInfo)
  {
    try
    {
      ˊ(this.bJW, paramByteBuffer, paramBufferInfo);
      return;
    }
    finally
    {
      paramByteBuffer = finally;
      throw paramByteBuffer;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aks
 * JD-Core Version:    0.7.0.1
 */