package android.support.v7.widget;

import java.util.ArrayList;

public abstract class RecyclerView$ˎ
{
  private RecyclerView.ˎ.ˊ aE = null;
  private ArrayList<RecyclerView.ˎ.if> aF = new ArrayList();
  private long aG = 120L;
  private long aH = 120L;
  private long aI = 250L;
  private long aJ = 250L;
  private boolean aK = true;
  
  public abstract boolean isRunning();
  
  public abstract void ĭ();
  
  public abstract void ļ();
  
  public long ľ()
  {
    return this.aI;
  }
  
  public long ǀ()
  {
    return this.aG;
  }
  
  public long ɔ()
  {
    return this.aH;
  }
  
  public long ɟ()
  {
    return this.aJ;
  }
  
  public boolean ɺ()
  {
    return this.aK;
  }
  
  public final void ɼ()
  {
    int j = this.aF.size();
    int i = 0;
    while (i < j)
    {
      ((RecyclerView.ˎ.if)this.aF.get(i)).ʱ();
      i += 1;
    }
    this.aF.clear();
  }
  
  public void ʹ(RecyclerView.ˑ paramˑ) {}
  
  public final void ˈ(RecyclerView.ˑ paramˑ)
  {
    ᐨ(paramˑ);
    if (this.aE != null) {
      this.aE.ᐨ(paramˑ);
    }
  }
  
  public final void ˉ(RecyclerView.ˑ paramˑ)
  {
    ՙ(paramˑ);
    if (this.aE != null) {
      this.aE.ՙ(paramˑ);
    }
  }
  
  void ˊ(RecyclerView.ˎ.ˊ paramˊ)
  {
    this.aE = paramˊ;
  }
  
  public final void ˊ(RecyclerView.ˑ paramˑ, boolean paramBoolean)
  {
    ˏ(paramˑ, paramBoolean);
    if (this.aE != null) {
      this.aE.י(paramˑ);
    }
  }
  
  public abstract boolean ˊ(RecyclerView.ˑ paramˑ);
  
  public abstract boolean ˊ(RecyclerView.ˑ paramˑ, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract boolean ˊ(RecyclerView.ˑ paramˑ1, RecyclerView.ˑ paramˑ2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public final void ˋ(RecyclerView.ˑ paramˑ, boolean paramBoolean)
  {
    ˎ(paramˑ, paramBoolean);
  }
  
  public final void ˌ(RecyclerView.ˑ paramˑ)
  {
    ﾞ(paramˑ);
    if (this.aE != null) {
      this.aE.ﾞ(paramˑ);
    }
  }
  
  public final void ˍ(RecyclerView.ˑ paramˑ)
  {
    ᐧ(paramˑ);
  }
  
  public void ˎ(RecyclerView.ˑ paramˑ, boolean paramBoolean) {}
  
  public abstract boolean ˎ(RecyclerView.ˑ paramˑ);
  
  public void ˏ(RecyclerView.ˑ paramˑ, boolean paramBoolean) {}
  
  public final void ˑ(RecyclerView.ˑ paramˑ)
  {
    ʹ(paramˑ);
  }
  
  public void ՙ(RecyclerView.ˑ paramˑ) {}
  
  public final void ـ(RecyclerView.ˑ paramˑ)
  {
    ﹳ(paramˑ);
  }
  
  public abstract void ᐝ(RecyclerView.ˑ paramˑ);
  
  public void ᐧ(RecyclerView.ˑ paramˑ) {}
  
  public void ᐨ(RecyclerView.ˑ paramˑ) {}
  
  public void ﹳ(RecyclerView.ˑ paramˑ) {}
  
  public void ﾞ(RecyclerView.ˑ paramˑ) {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView.Ë
 * JD-Core Version:    0.7.0.1
 */