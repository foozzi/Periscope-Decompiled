package org.spongycastle.crypto.params;

import java.security.SecureRandom;

public class DSAParameterGenerationParameters
{
  private final SecureRandom aFa;
  private final int aMG;
  private final int aML;
  private final int aQb;
  private final int avO;
  
  public DSAParameterGenerationParameters(int paramInt1, int paramInt2, int paramInt3, SecureRandom paramSecureRandom)
  {
    this(paramInt1, paramInt2, paramInt3, paramSecureRandom, -1);
  }
  
  public DSAParameterGenerationParameters(int paramInt1, int paramInt2, int paramInt3, SecureRandom paramSecureRandom, int paramInt4)
  {
    this.avO = paramInt1;
    this.aQb = paramInt2;
    this.aMG = paramInt3;
    this.aML = paramInt4;
    this.aFa = paramSecureRandom;
  }
  
  public int getL()
  {
    return this.avO;
  }
  
  public SecureRandom iN()
  {
    return this.aFa;
  }
  
  public int kC()
  {
    return this.aQb;
  }
  
  public int kD()
  {
    return this.aMG;
  }
  
  public int kE()
  {
    return this.aML;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.DSAParameterGenerationParameters
 * JD-Core Version:    0.7.0.1
 */