package android.support.v7.widget;

import android.util.Log;
import android.view.View;

public abstract class RecyclerView$ˈ
{
  private RecyclerView.ʻ D;
  private RecyclerView aL;
  private int bd = -1;
  private boolean be;
  private boolean bf;
  private View bg;
  private final RecyclerView.ˈ.if bh = new RecyclerView.ˈ.if(0, 0);
  
  private void ᐪ(int paramInt1, int paramInt2)
  {
    if ((!this.bf) || (this.bd == -1)) {
      stop();
    }
    this.be = false;
    if (this.bg != null) {
      if (ﹴ(this.bg) == this.bd)
      {
        ˊ(this.bg, this.aL.ar, this.bh);
        RecyclerView.ˈ.if.ˊ(this.bh, this.aL);
        stop();
      }
      else
      {
        Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
        this.bg = null;
      }
    }
    if (this.bf)
    {
      ˊ(paramInt1, paramInt2, this.aL.ar, this.bh);
      RecyclerView.ˈ.if.ˊ(this.bh, this.aL);
    }
  }
  
  public boolean isRunning()
  {
    return this.bf;
  }
  
  protected abstract void onStop();
  
  protected final void stop()
  {
    if (!this.bf) {
      return;
    }
    onStop();
    RecyclerView.ˉ.ˏ(this.aL.ar, -1);
    this.bg = null;
    this.bd = -1;
    this.be = false;
    this.bf = false;
    RecyclerView.ʻ.ˊ(this.D, this);
    this.D = null;
    this.aL = null;
  }
  
  protected abstract void ˊ(int paramInt1, int paramInt2, RecyclerView.ˉ paramˉ, RecyclerView.ˈ.if paramif);
  
  protected abstract void ˊ(View paramView, RecyclerView.ˉ paramˉ, RecyclerView.ˈ.if paramif);
  
  public boolean ء()
  {
    return this.be;
  }
  
  public int ر()
  {
    return this.bd;
  }
  
  public void ᕽ(int paramInt)
  {
    this.bd = paramInt;
  }
  
  protected void ᵀ(View paramView)
  {
    if (ﹴ(paramView) == ر()) {
      this.bg = paramView;
    }
  }
  
  public int ﹴ(View paramView)
  {
    return this.aL.ᴸ(paramView);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView.Ë
 * JD-Core Version:    0.7.0.1
 */