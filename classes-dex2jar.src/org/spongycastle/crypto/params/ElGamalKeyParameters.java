package org.spongycastle.crypto.params;

public class ElGamalKeyParameters
  extends AsymmetricKeyParameter
{
  private ElGamalParameters aQg;
  
  protected ElGamalKeyParameters(boolean paramBoolean, ElGamalParameters paramElGamalParameters)
  {
    super(paramBoolean);
    this.aQg = paramElGamalParameters;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ElGamalKeyParameters)) {
      return false;
    }
    paramObject = (ElGamalKeyParameters)paramObject;
    if (this.aQg == null) {
      return paramObject.kI() == null;
    }
    return this.aQg.equals(paramObject.kI());
  }
  
  public int hashCode()
  {
    if (this.aQg != null) {
      return this.aQg.hashCode();
    }
    return 0;
  }
  
  public ElGamalParameters kI()
  {
    return this.aQg;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.ElGamalKeyParameters
 * JD-Core Version:    0.7.0.1
 */