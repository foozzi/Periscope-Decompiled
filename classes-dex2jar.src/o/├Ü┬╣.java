package o;

public abstract class ڹ
  implements ʢ.if
{
  private int state;
  
  final void disable()
  {
    boolean bool;
    if (this.state == 2) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    this.state = 1;
    ɜ();
  }
  
  protected final int getState()
  {
    return this.state;
  }
  
  protected void onStopped() {}
  
  final void release()
  {
    boolean bool;
    if ((this.state != 2) && (this.state != 3) && (this.state != -2)) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    this.state = -2;
    Ϋ();
  }
  
  protected abstract void seekTo(long paramLong);
  
  final void start()
  {
    boolean bool;
    if (this.state == 2) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    this.state = 3;
    ɛ();
  }
  
  final void stop()
  {
    boolean bool;
    if (this.state == 3) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    this.state = 2;
    onStopped();
  }
  
  protected boolean ƭ()
  {
    return false;
  }
  
  protected void ɛ() {}
  
  protected void ɜ() {}
  
  protected abstract int ˉ(long paramLong);
  
  protected abstract void ˊ(long paramLong1, long paramLong2);
  
  protected void ˊ(long paramLong, boolean paramBoolean) {}
  
  public void ˋ(int paramInt, Object paramObject) {}
  
  final void ˋ(long paramLong, boolean paramBoolean)
  {
    boolean bool;
    if (this.state == 1) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    this.state = 2;
    ˊ(paramLong, paramBoolean);
  }
  
  protected void Ϋ() {}
  
  protected abstract boolean ﮈ();
  
  protected abstract boolean ﺓ();
  
  protected abstract long ﻤ();
  
  protected abstract long ﻥ();
  
  protected abstract long ｆ();
  
  final int ﾞ(long paramLong)
  {
    boolean bool;
    if (this.state == 0) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    this.state = ˉ(paramLong);
    if ((this.state == 0) || (this.state == 1) || (this.state == -1)) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    return this.state;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ú¹
 * JD-Core Version:    0.7.0.1
 */