package org.spongycastle.crypto.params;

public class GOST3410ValidationParameters
{
  private int aKM;
  private int aQi;
  private long aQj;
  private long aQk;
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof GOST3410ValidationParameters)) {
      return false;
    }
    paramObject = (GOST3410ValidationParameters)paramObject;
    if (paramObject.aKM != this.aKM) {
      return false;
    }
    if (paramObject.aQi != this.aQi) {
      return false;
    }
    if (paramObject.aQk != this.aQk) {
      return false;
    }
    return paramObject.aQj == this.aQj;
  }
  
  public int hashCode()
  {
    return this.aQi ^ this.aKM ^ (int)this.aQj ^ (int)(this.aQj >> 32) ^ (int)this.aQk ^ (int)(this.aQk >> 32);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.GOST3410ValidationParameters
 * JD-Core Version:    0.7.0.1
 */