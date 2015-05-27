package o;

public class ᴋ
  implements ᔭ, ᔨ
{
  private ᔨ mA;
  private ᔨ mB;
  private ᔭ mC;
  
  public ᴋ()
  {
    this(null);
  }
  
  public ᴋ(ᔭ paramᔭ)
  {
    this.mC = paramᔭ;
  }
  
  private boolean ᔭ()
  {
    return (this.mC == null) || (this.mC.ˎ(this));
  }
  
  private boolean ᖕ()
  {
    return (this.mC == null) || (this.mC.ˏ(this));
  }
  
  private boolean ᘆ()
  {
    return (this.mC != null) && (this.mC.ᔨ());
  }
  
  public void begin()
  {
    if (!this.mB.isRunning()) {
      this.mB.begin();
    }
    if (!this.mA.isRunning()) {
      this.mA.begin();
    }
  }
  
  public void clear()
  {
    this.mB.clear();
    this.mA.clear();
  }
  
  public boolean isCancelled()
  {
    return this.mA.isCancelled();
  }
  
  public boolean isComplete()
  {
    return (this.mA.isComplete()) || (this.mB.isComplete());
  }
  
  public boolean isRunning()
  {
    return this.mA.isRunning();
  }
  
  public void pause()
  {
    this.mA.pause();
    this.mB.pause();
  }
  
  public void recycle()
  {
    this.mA.recycle();
    this.mB.recycle();
  }
  
  public void ˊ(ᔨ paramᔨ1, ᔨ paramᔨ2)
  {
    this.mA = paramᔨ1;
    this.mB = paramᔨ2;
  }
  
  public boolean ˎ(ᔨ paramᔨ)
  {
    return (ᔭ()) && ((paramᔨ.equals(this.mA)) || (!this.mA.ᓷ()));
  }
  
  public boolean ˏ(ᔨ paramᔨ)
  {
    return (ᖕ()) && (paramᔨ.equals(this.mA)) && (!ᔨ());
  }
  
  public void ᐝ(ᔨ paramᔨ)
  {
    if (paramᔨ.equals(this.mB)) {
      return;
    }
    if (this.mC != null) {
      this.mC.ᐝ(this);
    }
    if (!this.mB.isComplete()) {
      this.mB.clear();
    }
  }
  
  public boolean ᓷ()
  {
    return (this.mA.ᓷ()) || (this.mB.ᓷ());
  }
  
  public boolean ᔨ()
  {
    return (ᘆ()) || (ᓷ());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´
 * JD-Core Version:    0.7.0.1
 */