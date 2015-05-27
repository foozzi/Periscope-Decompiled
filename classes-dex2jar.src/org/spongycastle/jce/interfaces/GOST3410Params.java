package org.spongycastle.jce.interfaces;

import org.spongycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;

public abstract interface GOST3410Params
{
  public abstract String oL();
  
  public abstract String oM();
  
  public abstract String oN();
  
  public abstract GOST3410PublicKeyParameterSetSpec oO();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.interfaces.GOST3410Params
 * JD-Core Version:    0.7.0.1
 */