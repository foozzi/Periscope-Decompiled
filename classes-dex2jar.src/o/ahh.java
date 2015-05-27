package o;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.aux;
import android.support.v7.widget.RecyclerView.if;
import android.support.v7.widget.RecyclerView.ʻ;
import android.support.v7.widget.RecyclerView.ˉ;
import android.support.v7.widget.RecyclerView.ˑ;
import android.view.View;

public class ahh
  extends RecyclerView.aux
{
  private static final int[] bEy = { 7, 3 };
  private final int bEz;
  private final Paint mPaint;
  
  public ahh(int paramInt1, int paramInt2)
  {
    this.bEz = paramInt1;
    this.mPaint = new Paint();
    this.mPaint.setColor(paramInt2);
  }
  
  private boolean ˊ(int paramInt, int[] paramArrayOfInt, RecyclerView paramRecyclerView)
  {
    paramInt -= 1;
    if (paramInt >= 0)
    {
      int i = paramRecyclerView.ᵇ().getItemViewType(paramInt);
      int j = paramArrayOfInt.length;
      paramInt = 0;
      while (paramInt < j)
      {
        if (i == paramArrayOfInt[paramInt]) {
          return true;
        }
        paramInt += 1;
      }
    }
    return false;
  }
  
  public void ˊ(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.ˉ paramˉ)
  {
    switch (paramRecyclerView.ᵣ(paramView).getItemViewType())
    {
    default: 
      break;
    case 3: 
    case 7: 
      if (ˊ(paramRecyclerView.ᴶ(paramView), bEy, paramRecyclerView)) {
        paramRect.top = 0;
      } else {
        paramRect.top = this.bEz;
      }
      paramRect.left = this.bEz;
      paramRect.right = this.bEz;
      paramRect.bottom = this.bEz;
      return;
    }
    paramRect.top = 0;
    paramRect.left = 0;
    paramRect.right = 0;
    paramRect.bottom = 0;
  }
  
  public void ˋ(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.ˉ paramˉ)
  {
    super.ˋ(paramCanvas, paramRecyclerView, paramˉ);
    int i = paramRecyclerView.getChildCount();
    if (i > 0)
    {
      paramˉ = paramRecyclerView.getChildAt(i - 1);
      i = paramRecyclerView.ᵖ().ᒡ(paramˉ);
      if (i < paramRecyclerView.getHeight()) {
        paramCanvas.drawRect(paramRecyclerView.getLeft(), i, paramRecyclerView.getWidth(), paramRecyclerView.getHeight(), this.mPaint);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahh
 * JD-Core Version:    0.7.0.1
 */