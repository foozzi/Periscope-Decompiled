package org.spongycastle.crypto.params;

import java.math.BigInteger;
import java.util.Vector;

public class NaccacheSternPrivateKeyParameters
  extends NaccacheSternKeyParameters
{
  private BigInteger aQB;
  private Vector aQC;
  
  public NaccacheSternPrivateKeyParameters(BigInteger paramBigInteger1, BigInteger paramBigInteger2, int paramInt, Vector paramVector, BigInteger paramBigInteger3)
  {
    super(true, paramBigInteger1, paramBigInteger2, paramInt);
    this.aQC = paramVector;
    this.aQB = paramBigInteger3;
  }
  
  public BigInteger lf()
  {
    return this.aQB;
  }
  
  public Vector lg()
  {
    return this.aQC;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.NaccacheSternPrivateKeyParameters
 * JD-Core Version:    0.7.0.1
 */