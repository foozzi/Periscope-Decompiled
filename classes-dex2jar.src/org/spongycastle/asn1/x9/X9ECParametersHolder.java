package org.spongycastle.asn1.x9;

public abstract class X9ECParametersHolder
{
  private X9ECParameters aDD;
  
  public X9ECParameters getParameters()
  {
    if (this.aDD == null) {
      this.aDD = gs();
    }
    return this.aDD;
  }
  
  public abstract X9ECParameters gs();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X9ECParametersHolder
 * JD-Core Version:    0.7.0.1
 */