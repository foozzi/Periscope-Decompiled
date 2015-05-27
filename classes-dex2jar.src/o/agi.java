package o;

import android.view.View;
import android.widget.ImageView;
import tv.periscope.android.ui.broadcast.ViewerActivity;
import tv.periscope.android.ui.broadcast.ViewerActivity.ˊ;

public class agi
  implements adw.ˋ
{
  public agi(ViewerActivity paramViewerActivity) {}
  
  public void ˊ(View paramView, float paramFloat, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramView.getId() == 2131427482)
    {
      ViewerActivity.ˎ(this.bDv).setTitleAlpha(paramFloat);
      ViewerActivity.ˏ(this.bDv).setAlpha(1.0F - paramFloat);
      ViewerActivity.ᐝ(this.bDv).setAlpha(1.0F - paramFloat);
      ViewerActivity.ʻ(this.bDv).setAlpha(1.0F - paramFloat);
    }
  }
  
  public void ˍ(View paramView, int paramInt) {}
  
  public void ৲(View paramView)
  {
    ViewerActivity.ʼ(this.bDv);
    switch (paramView.getId())
    {
    default: 
      return;
    }
    if ((ViewerActivity.ʽ(this.bDv) == ViewerActivity.ˊ.bDy) && (ViewerActivity.ͺ(this.bDv) != null))
    {
      ViewerActivity.ʾ(this.bDv).ˮ(ViewerActivity.ͺ(this.bDv).nD, ViewerActivity.ι(this.bDv));
      return;
    }
    if (ViewerActivity.ʿ(this.bDv)) {
      ViewerActivity.ˉ(this.bDv).ᵡ(ViewerActivity.ˈ(this.bDv).bnm);
    }
  }
  
  public void ᐢ(View paramView)
  {
    ViewerActivity.ˊ(this.bDv);
    switch (paramView.getId())
    {
    default: 
      return;
    }
    if ((!ViewerActivity.ʽ(this.bDv).bDA) || (ViewerActivity.ͺ(this.bDv) == null) || (!ViewerActivity.ͺ(this.bDv).boT)) {
      return;
    }
    if (ViewerActivity.ˋ(this.bDv).isPaused())
    {
      ViewerActivity.ˌ(this.bDv);
      ViewerActivity.ˋ(this.bDv, true);
      ViewerActivity.ˍ(this.bDv);
      return;
    }
    if (!ViewerActivity.ˋ(this.bDv).isPlaying())
    {
      ViewerActivity.ˋ(this.bDv, true);
      ViewerActivity.ˑ(this.bDv);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.agi
 * JD-Core Version:    0.7.0.1
 */