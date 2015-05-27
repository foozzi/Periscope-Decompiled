package org.spongycastle.crypto.params;

public class CramerShoupKeyParameters
  extends AsymmetricKeyParameter
{
  private CramerShoupParameters aPK;
  
  protected CramerShoupKeyParameters(boolean paramBoolean, CramerShoupParameters paramCramerShoupParameters)
  {
    super(paramBoolean);
    this.aPK = paramCramerShoupParameters;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof CramerShoupKeyParameters)) {
      return false;
    }
    paramObject = (CramerShoupKeyParameters)paramObject;
    if (this.aPK == null) {
      return paramObject.kq() == null;
    }
    return this.aPK.equals(paramObject.kq());
  }
  
  public int hashCode()
  {
    int i;
    if (isPrivate()) {
      i = 0;
    } else {
      i = 1;
    }
    int j = i;
    if (this.aPK != null) {
      j = i ^ this.aPK.hashCode();
    }
    return j;
  }
  
  public CramerShoupParameters kq()
  {
    return this.aPK;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.CramerShoupKeyParameters
 * JD-Core Version:    0.7.0.1
 */