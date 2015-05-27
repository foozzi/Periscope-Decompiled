package o;

class ᵇ$if
{
  long ո = 0L;
  if ս;
  
  private void ī()
  {
    if (this.ս == null) {
      this.ս = new if();
    }
  }
  
  void clear(int paramInt)
  {
    if (paramInt >= 64)
    {
      if (this.ս != null) {
        this.ս.clear(paramInt - 64);
      }
    }
    else {
      this.ո &= (1L << paramInt ^ 0xFFFFFFFF);
    }
  }
  
  boolean get(int paramInt)
  {
    if (paramInt >= 64)
    {
      ī();
      return this.ս.get(paramInt - 64);
    }
    return (this.ո & 1L << paramInt) != 0L;
  }
  
  void reset()
  {
    this.ո = 0L;
    if (this.ս != null) {
      this.ս.reset();
    }
  }
  
  void set(int paramInt)
  {
    if (paramInt >= 64)
    {
      ī();
      this.ս.set(paramInt - 64);
      return;
    }
    this.ո |= 1L << paramInt;
  }
  
  public String toString()
  {
    if (this.ս == null) {
      return Long.toBinaryString(this.ո);
    }
    return this.ս.toString() + "xx" + Long.toBinaryString(this.ո);
  }
  
  void ʿ(int paramInt, boolean paramBoolean)
  {
    if (paramInt >= 64)
    {
      ī();
      this.ս.ʿ(paramInt - 64, paramBoolean);
      return;
    }
    boolean bool;
    if ((this.ո & 0x0) != 0L) {
      bool = true;
    } else {
      bool = false;
    }
    long l = (1L << paramInt) - 1L;
    this.ո = (this.ո & l | (this.ո & (0xFFFFFFFF ^ l)) << 1);
    if (paramBoolean) {
      set(paramInt);
    } else {
      clear(paramInt);
    }
    if ((bool) || (this.ս != null))
    {
      ī();
      this.ս.ʿ(0, bool);
    }
  }
  
  boolean ᵓ(int paramInt)
  {
    if (paramInt >= 64)
    {
      ī();
      return this.ս.ᵓ(paramInt - 64);
    }
    long l = 1L << paramInt;
    boolean bool;
    if ((this.ո & l) != 0L) {
      bool = true;
    } else {
      bool = false;
    }
    this.ո &= (0xFFFFFFFF ^ l);
    l -= 1L;
    this.ո = (this.ո & l | Long.rotateRight(this.ո & (0xFFFFFFFF ^ l), 1));
    if (this.ս != null)
    {
      if (this.ս.get(0)) {
        set(63);
      }
      this.ս.ᵓ(0);
    }
    return bool;
  }
  
  int ᵙ(int paramInt)
  {
    if (this.ս == null)
    {
      if (paramInt >= 64) {
        return Long.bitCount(this.ո);
      }
      return Long.bitCount(this.ո & (1L << paramInt) - 1L);
    }
    if (paramInt < 64) {
      return Long.bitCount(this.ո & (1L << paramInt) - 1L);
    }
    return this.ս.ᵙ(paramInt - 64) + Long.bitCount(this.ո);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ.if
 * JD-Core Version:    0.7.0.1
 */