package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;

public class McElieceCCA2KeyParameters
  extends AsymmetricKeyParameter
{
  private McElieceCCA2Parameters bfU;
  
  public McElieceCCA2KeyParameters(boolean paramBoolean, McElieceCCA2Parameters paramMcElieceCCA2Parameters)
  {
    super(paramBoolean);
    this.bfU = paramMcElieceCCA2Parameters;
  }
  
  public McElieceCCA2Parameters rg()
  {
    return this.bfU;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McElieceCCA2KeyParameters
 * JD-Core Version:    0.7.0.1
 */