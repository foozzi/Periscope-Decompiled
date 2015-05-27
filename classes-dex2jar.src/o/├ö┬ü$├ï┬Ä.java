package o;

import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecList;

final class ԁ$ˎ
  implements ԁ.ˋ
{
  public int getCodecCount()
  {
    return MediaCodecList.getCodecCount();
  }
  
  public MediaCodecInfo getCodecInfoAt(int paramInt)
  {
    return MediaCodecList.getCodecInfoAt(paramInt);
  }
  
  public boolean ˊ(String paramString, MediaCodecInfo.CodecCapabilities paramCodecCapabilities)
  {
    return "video/avc".equals(paramString);
  }
  
  public boolean л()
  {
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ô.Ë
 * JD-Core Version:    0.7.0.1
 */