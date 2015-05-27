package org.spongycastle.crypto.tls;

public class SecurityParameters
{
  short aTn = -1;
  byte[] aUA = null;
  boolean aUB = false;
  boolean aUC = false;
  int aUt = -1;
  int aUu = -1;
  short aUv = -1;
  int aUw = -1;
  int aUx = -1;
  byte[] aUy = null;
  byte[] aUz = null;
  
  public int mB()
  {
    return this.aUu;
  }
  
  public int mC()
  {
    return this.aUw;
  }
  
  public int mD()
  {
    return this.aUx;
  }
  
  public byte[] mE()
  {
    return this.aUy;
  }
  
  public byte[] mF()
  {
    return this.aUz;
  }
  
  public byte[] mG()
  {
    return this.aUA;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.SecurityParameters
 * JD-Core Version:    0.7.0.1
 */