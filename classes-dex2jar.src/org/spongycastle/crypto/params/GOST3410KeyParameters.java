package org.spongycastle.crypto.params;

public class GOST3410KeyParameters
  extends AsymmetricKeyParameter
{
  private GOST3410Parameters aQh;
  
  public GOST3410KeyParameters(boolean paramBoolean, GOST3410Parameters paramGOST3410Parameters)
  {
    super(paramBoolean);
    this.aQh = paramGOST3410Parameters;
  }
  
  public GOST3410Parameters kJ()
  {
    return this.aQh;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.GOST3410KeyParameters
 * JD-Core Version:    0.7.0.1
 */