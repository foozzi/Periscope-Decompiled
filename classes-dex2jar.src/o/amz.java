package o;

final class amz
  extends anf
{
  private final int bou;
  private final int bov;
  private final int bow;
  
  amz(int paramInt1, int paramInt2, int paramInt3)
  {
    this.bou = paramInt1;
    this.bov = paramInt2;
    this.bow = paramInt3;
  }
  
  public int BQ()
  {
    return this.bou;
  }
  
  public int BR()
  {
    return this.bov;
  }
  
  public int BS()
  {
    return this.bow;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof anf))
    {
      paramObject = (anf)paramObject;
      return (this.bou == paramObject.BQ()) && (this.bov == paramObject.BR()) && (this.bow == paramObject.BS());
    }
    return false;
  }
  
  public int hashCode()
  {
    return ((0xF4243 ^ this.bou) * 1000003 ^ this.bov) * 1000003 ^ this.bow;
  }
  
  public String toString()
  {
    return "BroadcastViewerMeta{numWebWatched=" + this.bou + ", " + "numReplayWatched=" + this.bov + ", " + "numLiveWatched=" + this.bow + "}";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amz
 * JD-Core Version:    0.7.0.1
 */