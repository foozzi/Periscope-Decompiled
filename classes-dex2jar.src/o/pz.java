package o;

class pz
{
  public final boolean Vq;
  public final String pX;
  
  pz(String paramString, boolean paramBoolean)
  {
    this.pX = paramString;
    this.Vq = paramBoolean;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (pz)paramObject;
    if (this.Vq != paramObject.Vq) {
      return false;
    }
    return this.pX != null ? this.pX.equals(paramObject.pX) : paramObject.pX == null;
  }
  
  public int hashCode()
  {
    int i;
    if (this.pX != null) {
      i = this.pX.hashCode();
    } else {
      i = 0;
    }
    int j;
    if (this.Vq) {
      j = 1;
    } else {
      j = 0;
    }
    return i * 31 + j;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.pz
 * JD-Core Version:    0.7.0.1
 */