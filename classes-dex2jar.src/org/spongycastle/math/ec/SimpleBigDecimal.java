package org.spongycastle.math.ec;

import java.math.BigInteger;

class SimpleBigDecimal
{
  private final BigInteger bcR;
  private final int bcS;
  
  public SimpleBigDecimal(BigInteger paramBigInteger, int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("scale may not be negative");
    }
    this.bcR = paramBigInteger;
    this.bcS = paramInt;
  }
  
  private void ˊ(SimpleBigDecimal paramSimpleBigDecimal)
  {
    if (this.bcS != paramSimpleBigDecimal.bcS) {
      throw new IllegalArgumentException("Only SimpleBigDecimal of same scale allowed in arithmetic operations");
    }
  }
  
  public int compareTo(BigInteger paramBigInteger)
  {
    return this.bcR.compareTo(paramBigInteger.shiftLeft(this.bcS));
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof SimpleBigDecimal)) {
      return false;
    }
    paramObject = (SimpleBigDecimal)paramObject;
    return (this.bcR.equals(paramObject.bcR)) && (this.bcS == paramObject.bcS);
  }
  
  public int hashCode()
  {
    return this.bcR.hashCode() ^ this.bcS;
  }
  
  public SimpleBigDecimal qc()
  {
    return new SimpleBigDecimal(this.bcR.negate(), this.bcS);
  }
  
  public BigInteger qd()
  {
    return this.bcR.shiftRight(this.bcS);
  }
  
  public BigInteger qe()
  {
    return ˋ(new SimpleBigDecimal(ECConstants.ONE, 1).ｲ(this.bcS)).qd();
  }
  
  public int qf()
  {
    return this.bcS;
  }
  
  public String toString()
  {
    if (this.bcS == 0) {
      return this.bcR.toString();
    }
    Object localObject3 = qd();
    Object localObject2 = this.bcR.subtract(((BigInteger)localObject3).shiftLeft(this.bcS));
    Object localObject1 = localObject2;
    if (this.bcR.signum() == -1) {
      localObject1 = ECConstants.ONE.shiftLeft(this.bcS).subtract((BigInteger)localObject2);
    }
    localObject2 = localObject3;
    if (((BigInteger)localObject3).signum() == -1)
    {
      localObject2 = localObject3;
      if (!((BigInteger)localObject1).equals(ECConstants.ZERO)) {
        localObject2 = ((BigInteger)localObject3).add(ECConstants.ONE);
      }
    }
    localObject2 = ((BigInteger)localObject2).toString();
    localObject3 = new char[this.bcS];
    localObject1 = ((BigInteger)localObject1).toString(2);
    int j = ((String)localObject1).length();
    int k = this.bcS - j;
    int i = 0;
    while (i < k)
    {
      localObject3[i] = 48;
      i += 1;
    }
    i = 0;
    while (i < j)
    {
      localObject3[(k + i)] = ((String)localObject1).charAt(i);
      i += 1;
    }
    localObject1 = new String((char[])localObject3);
    localObject2 = new StringBuffer((String)localObject2);
    ((StringBuffer)localObject2).append(".");
    ((StringBuffer)localObject2).append((String)localObject1);
    return ((StringBuffer)localObject2).toString();
  }
  
  public SimpleBigDecimal ˋ(SimpleBigDecimal paramSimpleBigDecimal)
  {
    ˊ(paramSimpleBigDecimal);
    return new SimpleBigDecimal(this.bcR.add(paramSimpleBigDecimal.bcR), this.bcS);
  }
  
  public SimpleBigDecimal ˍ(BigInteger paramBigInteger)
  {
    return new SimpleBigDecimal(this.bcR.subtract(paramBigInteger.shiftLeft(this.bcS)), this.bcS);
  }
  
  public SimpleBigDecimal ˎ(SimpleBigDecimal paramSimpleBigDecimal)
  {
    return ˋ(paramSimpleBigDecimal.qc());
  }
  
  public SimpleBigDecimal ｲ(int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("scale may not be negative");
    }
    if (paramInt == this.bcS) {
      return this;
    }
    return new SimpleBigDecimal(this.bcR.shiftLeft(paramInt - this.bcS), paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.SimpleBigDecimal
 * JD-Core Version:    0.7.0.1
 */