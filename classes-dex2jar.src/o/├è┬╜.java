package o;

import android.support.v4.app.Fragment;
import android.view.View;

public class ʽ
  implements con
{
  public ʽ(Fragment paramFragment) {}
  
  public View findViewById(int paramInt)
  {
    if (this.ᵕ.mView == null) {
      throw new IllegalStateException("Fragment does not have a view");
    }
    return this.ᵕ.mView.findViewById(paramInt);
  }
  
  public boolean ˊ()
  {
    return this.ᵕ.mView != null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê½
 * JD-Core Version:    0.7.0.1
 */