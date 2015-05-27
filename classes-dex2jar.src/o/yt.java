package o;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import java.io.IOException;

class yt
  implements abh.ˋ
{
  yt(yq paramyq) {}
  
  public void uB()
  {
    try
    {
      yq.ˎ(this.bqL);
      abn localabn = yq.ˏ(this.bqL);
      if (localabn != null) {
        try
        {
          yq.ˏ(this.bqL).vQ();
        }
        catch (IllegalStateException localIllegalStateException)
        {
          localIllegalStateException.printStackTrace();
        }
      }
      yq.ˊ(this.bqL, new abn());
      yq.ˏ(this.bqL).getSurfaceTexture().setOnFrameAvailableListener(this.bqL);
      yq.ˊ(this.bqL).setPreviewTexture(yq.ˏ(this.bqL).getSurfaceTexture());
      this.bqL.uA();
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.yt
 * JD-Core Version:    0.7.0.1
 */