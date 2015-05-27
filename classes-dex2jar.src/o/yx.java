package o;

import android.opengl.GLES20;

class yx
  implements abh.ˋ
{
  yx(yq.ᐝ paramᐝ) {}
  
  public void uB()
  {
    if (yq.ˏ(this.bqW.bqL).getTimestamp() >= yq.ˈ(this.bqW.bqL))
    {
      if (yq.ˉ(this.bqW.bqL))
      {
        yq.ˑ(this.bqW.bqL).ᑦ(true);
        yq.ˑ(this.bqW.bqL).ˊ(yq.ˏ(this.bqW.bqL));
        if (yq.ـ(this.bqW.bqL))
        {
          yq.ᐧ(this.bqW.bqL);
          yq.ˊ(this.bqW.bqL, false);
        }
      }
      else
      {
        GLES20.glClearColor(0.0F, 0.0F, 0.0F, 1.0F);
        GLES20.glClear(16384);
      }
      yq.ʼ(this.bqW.bqL).ʵ(yq.ˏ(this.bqW.bqL).getTimestamp() - yq.ˈ(this.bqW.bqL));
      yq.ʼ(this.bqW.bqL).vU();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.yx
 * JD-Core Version:    0.7.0.1
 */