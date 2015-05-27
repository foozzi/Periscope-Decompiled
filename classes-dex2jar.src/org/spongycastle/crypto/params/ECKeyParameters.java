package org.spongycastle.crypto.params;

public class ECKeyParameters
  extends AsymmetricKeyParameter
{
  ECDomainParameters aMM;
  
  protected ECKeyParameters(boolean paramBoolean, ECDomainParameters paramECDomainParameters)
  {
    super(paramBoolean);
    this.aMM = paramECDomainParameters;
  }
  
  public ECDomainParameters kG()
  {
    return this.aMM;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.ECKeyParameters
 * JD-Core Version:    0.7.0.1
 */