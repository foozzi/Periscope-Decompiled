package o;

import android.os.Looper;

class ץ<Z>
  implements ڔ<Z>
{
  private final boolean en;
  private ﮆ hG;
  private final ڔ<Z> hL;
  private ץ.if ia;
  private int ib;
  private boolean ic;
  
  ץ(ڔ<Z> paramڔ, boolean paramBoolean)
  {
    if (paramڔ == null) {
      throw new NullPointerException("Wrapped resource must not be null");
    }
    this.hL = paramڔ;
    this.en = paramBoolean;
  }
  
  void acquire()
  {
    if (this.ic) {
      throw new IllegalStateException("Cannot acquire a recycled resource");
    }
    if (!Looper.getMainLooper().equals(Looper.myLooper())) {
      throw new IllegalThreadStateException("Must call acquire on the main thread");
    }
    this.ib += 1;
  }
  
  public Z get()
  {
    return this.hL.get();
  }
  
  public int getSize()
  {
    return this.hL.getSize();
  }
  
  public void recycle()
  {
    if (this.ib > 0) {
      throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
    }
    if (this.ic) {
      throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
    }
    this.ic = true;
    this.hL.recycle();
  }
  
  void release()
  {
    if (this.ib <= 0) {
      throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
    }
    if (!Looper.getMainLooper().equals(Looper.myLooper())) {
      throw new IllegalThreadStateException("Must call release on the main thread");
    }
    int i = this.ib - 1;
    this.ib = i;
    if (i == 0) {
      this.ia.ˋ(this.hG, this);
    }
  }
  
  void ˊ(ﮆ paramﮆ, ץ.if paramif)
  {
    this.hG = paramﮆ;
    this.ia = paramif;
  }
  
  boolean Ꭻ()
  {
    return this.en;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.×¥
 * JD-Core Version:    0.7.0.1
 */