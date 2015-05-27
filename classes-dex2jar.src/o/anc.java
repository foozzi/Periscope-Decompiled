package o;

final class anc
  extends ani
{
  private final int bNI;
  private final int bNJ;
  private final long bpm;
  
  anc(long paramLong, int paramInt1, int paramInt2)
  {
    this.bpm = paramLong;
    this.bNI = paramInt1;
    this.bNJ = paramInt2;
  }
  
  public long BX()
  {
    return this.bpm;
  }
  
  public int BY()
  {
    return this.bNI;
  }
  
  public int BZ()
  {
    return this.bNJ;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof ani))
    {
      paramObject = (ani)paramObject;
      return (this.bpm == paramObject.BX()) && (this.bNI == paramObject.BY()) && (this.bNJ == paramObject.BZ());
    }
    return false;
  }
  
  public int hashCode()
  {
    return ((int)(this.bpm >>> 32 ^ this.bpm ^ 0xF4243) * 1000003 ^ this.bNI) * 1000003 ^ this.bNJ;
  }
  
  public String toString()
  {
    return "Meta{watchedTime=" + this.bpm + ", " + "numWatched=" + this.bNI + ", " + "lostBeforeEnd=" + this.bNJ + "}";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.anc
 * JD-Core Version:    0.7.0.1
 */