package o;

final class anb
  extends anh
{
  private final anh.if bNG;
  private final String bNH;
  
  anb(anh.if paramif, String paramString)
  {
    if (paramif == null) {
      throw new NullPointerException("Null type");
    }
    this.bNG = paramif;
    this.bNH = paramString;
  }
  
  public anh.if BV()
  {
    return this.bNG;
  }
  
  public String BW()
  {
    return this.bNH;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof anh))
    {
      paramObject = (anh)paramObject;
      return (this.bNG.equals(paramObject.BV())) && (this.bNH == null ? paramObject.BW() == null : this.bNH.equals(paramObject.BW()));
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = this.bNG.hashCode();
    int i;
    if (this.bNH == null) {
      i = 0;
    } else {
      i = this.bNH.hashCode();
    }
    return (0xF4243 ^ j) * 1000003 ^ i;
  }
  
  public String toString()
  {
    return "FeedItem{type=" + this.bNG + ", " + "itemId=" + this.bNH + "}";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.anb
 * JD-Core Version:    0.7.0.1
 */