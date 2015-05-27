package android.support.v7.widget;

import android.util.SparseArray;
import o.ᒢ;

public class RecyclerView$ˉ
{
  private int bd = -1;
  ᒢ<RecyclerView.ˑ, RecyclerView.ᐝ> bn = new ᒢ();
  ᒢ<RecyclerView.ˑ, RecyclerView.ᐝ> bo = new ᒢ();
  ᒢ<Long, RecyclerView.ˑ> bp = new ᒢ();
  private SparseArray<Object> bq;
  private int br = 0;
  private int bs = 0;
  private boolean bt = false;
  private boolean bu = false;
  private boolean bv = false;
  private boolean bw = false;
  int ʎ = 0;
  
  private void ˊ(ᒢ<Long, RecyclerView.ˑ> paramᒢ, RecyclerView.ˑ paramˑ)
  {
    int i = paramᒢ.size() - 1;
    while (i >= 0)
    {
      if (paramˑ == paramᒢ.valueAt(i))
      {
        paramᒢ.removeAt(i);
        return;
      }
      i -= 1;
    }
  }
  
  public int getItemCount()
  {
    if (this.bu) {
      return this.br - this.bs;
    }
    return this.ʎ;
  }
  
  public String toString()
  {
    return "State{mTargetPosition=" + this.bd + ", mPreLayoutHolderMap=" + this.bn + ", mPostLayoutHolderMap=" + this.bo + ", mData=" + this.bq + ", mItemCount=" + this.ʎ + ", mPreviousLayoutItemCount=" + this.br + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.bs + ", mStructureChanged=" + this.bt + ", mInPreLayout=" + this.bu + ", mRunSimpleAnimations=" + this.bv + ", mRunPredictiveAnimations=" + this.bw + '}';
  }
  
  public void ͺ(RecyclerView.ˑ paramˑ)
  {
    this.bn.remove(paramˑ);
    this.bo.remove(paramˑ);
    if (this.bp != null) {
      ˊ(this.bp, paramˑ);
    }
  }
  
  public boolean ڏ()
  {
    return this.bu;
  }
  
  public boolean ઽ()
  {
    return this.bw;
  }
  
  public int ເ()
  {
    return this.bd;
  }
  
  public boolean ᓰ()
  {
    return this.bd != -1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView.Ë
 * JD-Core Version:    0.7.0.1
 */