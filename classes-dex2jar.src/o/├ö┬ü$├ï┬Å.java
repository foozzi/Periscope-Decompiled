package o;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecList;

@TargetApi(21)
final class ԁ$ˏ
  implements ԁ.ˋ
{
  private final int sc;
  private MediaCodecInfo[] sd;
  
  public ԁ$ˏ(boolean paramBoolean)
  {
    int i;
    if (paramBoolean) {
      i = 1;
    } else {
      i = 0;
    }
    this.sc = i;
  }
  
  private void ь()
  {
    if (this.sd == null) {
      this.sd = new MediaCodecList(this.sc).getCodecInfos();
    }
  }
  
  public int getCodecCount()
  {
    ь();
    return this.sd.length;
  }
  
  public MediaCodecInfo getCodecInfoAt(int paramInt)
  {
    ь();
    return this.sd[paramInt];
  }
  
  public boolean ˊ(String paramString, MediaCodecInfo.CodecCapabilities paramCodecCapabilities)
  {
    return paramCodecCapabilities.isFeatureSupported("secure-playback");
  }
  
  public boolean л()
  {
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ô.Ë
 * JD-Core Version:    0.7.0.1
 */