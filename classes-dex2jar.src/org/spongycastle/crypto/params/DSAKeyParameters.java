package org.spongycastle.crypto.params;

public class DSAKeyParameters
  extends AsymmetricKeyParameter
{
  private DSAParameters aQa;
  
  public DSAKeyParameters(boolean paramBoolean, DSAParameters paramDSAParameters)
  {
    super(paramBoolean);
    this.aQa = paramDSAParameters;
  }
  
  public DSAParameters kB()
  {
    return this.aQa;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.DSAKeyParameters
 * JD-Core Version:    0.7.0.1
 */