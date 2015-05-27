package o;

import android.content.Context;
import android.os.Bundle;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.LinkedList;

public abstract class ﭴ<T extends ﭖ>
{
  private T EZ;
  private Bundle Fa;
  private LinkedList<ﭴ.if> Fb;
  private final ﺙ<T> Fc = new ﭸ(this);
  
  private void ˊ(Bundle paramBundle, ﭴ.if paramif)
  {
    if (this.EZ != null)
    {
      paramif.ˋ(this.EZ);
      return;
    }
    if (this.Fb == null) {
      this.Fb = new LinkedList();
    }
    this.Fb.add(paramif);
    if (paramBundle != null) {
      if (this.Fa == null) {
        this.Fa = ((Bundle)paramBundle.clone());
      } else {
        this.Fa.putAll(paramBundle);
      }
    }
    ˊ(this.Fc);
  }
  
  public static void ˊ(FrameLayout paramFrameLayout)
  {
    Context localContext = paramFrameLayout.getContext();
    int i = ძ.ٴ(localContext);
    String str2 = ძ.ʻ(localContext, i);
    String str1 = ძ.ʼ(localContext, i);
    LinearLayout localLinearLayout = new LinearLayout(paramFrameLayout.getContext());
    localLinearLayout.setOrientation(1);
    localLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    paramFrameLayout.addView(localLinearLayout);
    paramFrameLayout = new TextView(paramFrameLayout.getContext());
    paramFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    paramFrameLayout.setText(str2);
    localLinearLayout.addView(paramFrameLayout);
    if (str1 != null)
    {
      paramFrameLayout = new Button(localContext);
      paramFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      paramFrameLayout.setText(str1);
      localLinearLayout.addView(paramFrameLayout);
      paramFrameLayout.setOnClickListener(new ﮌ(localContext, i));
    }
  }
  
  private void ᵊ(int paramInt)
  {
    while ((!this.Fb.isEmpty()) && (((ﭴ.if)this.Fb.getLast()).getState() >= paramInt)) {
      this.Fb.removeLast();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    ˊ(paramBundle, new ﮉ(this, paramBundle));
  }
  
  public void onDestroy()
  {
    if (this.EZ != null)
    {
      this.EZ.onDestroy();
      return;
    }
    ᵊ(1);
  }
  
  public void onLowMemory()
  {
    if (this.EZ != null) {
      this.EZ.onLowMemory();
    }
  }
  
  public void onPause()
  {
    if (this.EZ != null)
    {
      this.EZ.onPause();
      return;
    }
    ᵊ(5);
  }
  
  public void onResume()
  {
    ˊ(null, new ﮐ(this));
  }
  
  protected abstract void ˊ(ﺙ<T> paramﺙ);
  
  public T ァ()
  {
    return this.EZ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­´
 * JD-Core Version:    0.7.0.1
 */