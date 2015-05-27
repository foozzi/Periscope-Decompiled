package o;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ﮇ$if
{
  private final List<丿> hJ = new ArrayList();
  private ﮇ.if.if mU;
  private Point mV;
  private final View view;
  
  public ﮇ$if(View paramView)
  {
    this.view = paramView;
  }
  
  private int ˍ(int paramInt, boolean paramBoolean)
  {
    if (paramInt == -2)
    {
      Point localPoint = ἴ();
      if (paramBoolean) {
        return localPoint.y;
      }
      return localPoint.x;
    }
    return paramInt;
  }
  
  private boolean ᕐ(int paramInt)
  {
    return (paramInt > 0) || (paramInt == -2);
  }
  
  private void ᴸ(int paramInt1, int paramInt2)
  {
    Iterator localIterator = this.hJ.iterator();
    while (localIterator.hasNext()) {
      ((丿)localIterator.next()).ᴶ(paramInt1, paramInt2);
    }
    this.hJ.clear();
  }
  
  private void ṿ()
  {
    if (this.hJ.isEmpty()) {
      return;
    }
    int i = ἳ();
    int j = ἲ();
    if ((!ᕐ(i)) || (!ᕐ(j))) {
      return;
    }
    ᴸ(i, j);
    ViewTreeObserver localViewTreeObserver = this.view.getViewTreeObserver();
    if (localViewTreeObserver.isAlive()) {
      localViewTreeObserver.removeOnPreDrawListener(this.mU);
    }
    this.mU = null;
  }
  
  private int ἲ()
  {
    ViewGroup.LayoutParams localLayoutParams = this.view.getLayoutParams();
    if (ᕐ(this.view.getHeight())) {
      return this.view.getHeight();
    }
    if (localLayoutParams != null) {
      return ˍ(localLayoutParams.height, true);
    }
    return 0;
  }
  
  private int ἳ()
  {
    ViewGroup.LayoutParams localLayoutParams = this.view.getLayoutParams();
    if (ᕐ(this.view.getWidth())) {
      return this.view.getWidth();
    }
    if (localLayoutParams != null) {
      return ˍ(localLayoutParams.width, false);
    }
    return 0;
  }
  
  @TargetApi(13)
  private Point ἴ()
  {
    if (this.mV != null) {
      return this.mV;
    }
    Display localDisplay = ((WindowManager)this.view.getContext().getSystemService("window")).getDefaultDisplay();
    if (Build.VERSION.SDK_INT >= 13)
    {
      this.mV = new Point();
      localDisplay.getSize(this.mV);
    }
    else
    {
      this.mV = new Point(localDisplay.getWidth(), localDisplay.getHeight());
    }
    return this.mV;
  }
  
  public void ˊ(丿 param丿)
  {
    int i = ἳ();
    int j = ἲ();
    if ((ᕐ(i)) && (ᕐ(j)))
    {
      param丿.ᴶ(i, j);
      return;
    }
    if (!this.hJ.contains(param丿)) {
      this.hJ.add(param丿);
    }
    if (this.mU == null)
    {
      param丿 = this.view.getViewTreeObserver();
      this.mU = new ﮇ.if.if(this);
      param丿.addOnPreDrawListener(this.mU);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï®.if
 * JD-Core Version:    0.7.0.1
 */