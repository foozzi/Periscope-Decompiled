package org.spongycastle.crypto.params;

public class DHKeyParameters
  extends AsymmetricKeyParameter
{
  private DHParameters aPW;
  
  protected DHKeyParameters(boolean paramBoolean, DHParameters paramDHParameters)
  {
    super(paramBoolean);
    this.aPW = paramDHParameters;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DHKeyParameters)) {
      return false;
    }
    paramObject = (DHKeyParameters)paramObject;
    if (this.aPW == null) {
      return paramObject.kA() == null;
    }
    return this.aPW.equals(paramObject.kA());
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
    if (this.aPW != null) {
      j = i ^ this.aPW.hashCode();
    }
    return j;
  }
  
  public DHParameters kA()
  {
    return this.aPW;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.DHKeyParameters
 * JD-Core Version:    0.7.0.1
 */