package o;

import android.content.Context;
import android.util.AttributeSet;
import android.view.TextureView;

public class amk
  extends TextureView
{
  public amk(Context paramContext)
  {
    super(paramContext);
  }
  
  public amk(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public amk(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    amr.ˊ(this, paramInt2, paramInt4);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amk
 * JD-Core Version:    0.7.0.1
 */