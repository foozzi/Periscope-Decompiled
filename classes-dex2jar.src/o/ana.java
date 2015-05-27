package o;

final class ana
  extends ang
{
  private final long bNE;
  private final int bNF;
  
  ana(long paramLong, int paramInt)
  {
    this.bNE = paramLong;
    this.bNF = paramInt;
  }
  
  public long BT()
  {
    return this.bNE;
  }
  
  public int BU()
  {
    return this.bNF;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof ang))
    {
      paramObject = (ang)paramObject;
      return (this.bNE == paramObject.BT()) && (this.bNF == paramObject.BU());
    }
    return false;
  }
  
  public int hashCode()
  {
    return (int)(this.bNE >>> 32 ^ this.bNE ^ 0xF4243) * 1000003 ^ this.bNF;
  }
  
  public String toString()
  {
    return "FaderKey{itemId=" + this.bNE + ", " + "mergeCount=" + this.bNF + "}";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ana
 * JD-Core Version:    0.7.0.1
 */