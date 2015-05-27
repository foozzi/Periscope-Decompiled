package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class RecyclerView$ʼ
  extends ViewGroup.MarginLayoutParams
{
  RecyclerView.ˑ aO;
  final Rect aP = new Rect();
  boolean aQ = true;
  boolean aR = false;
  
  public RecyclerView$ʼ(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
  
  public RecyclerView$ʼ(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public RecyclerView$ʼ(ʼ paramʼ)
  {
    super(paramʼ);
  }
  
  public RecyclerView$ʼ(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public RecyclerView$ʼ(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }
  
  public boolean ϲ()
  {
    return this.aO.isRemoved();
  }
  
  public boolean ϳ()
  {
    return this.aO.Ἱ();
  }
  
  public int Ј()
  {
    return this.aO.getLayoutPosition();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView.Ê¼
 * JD-Core Version:    0.7.0.1
 */