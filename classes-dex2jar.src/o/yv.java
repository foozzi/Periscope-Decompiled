package o;

import android.graphics.SurfaceTexture;
import android.hardware.Camera.CameraInfo;
import tv.periscope.android.util.Size;

class yv
  implements abh.ˋ
{
  yv(yq paramyq, SurfaceTexture paramSurfaceTexture) {}
  
  public void uB()
  {
    if (!yq.ˋ(this.bqL).ﹸ(this.bqN.getTimestamp()))
    {
      yq.ˏ(this.bqL).wu();
    }
    else
    {
      int i = yq.ʽ(this.bqL).orientation;
      yq.ˏ(this.bqL).ˊ(Size.ﻧ(yq.ͺ(this.bqL).width(), yq.ͺ(this.bqL).height()), i);
    }
    yq.ι(this.bqL).requestRender();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.yv
 * JD-Core Version:    0.7.0.1
 */