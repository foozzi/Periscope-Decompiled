package org.spongycastle.crypto.engines;

import java.io.PrintStream;
import java.math.BigInteger;
import java.util.Vector;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.params.NaccacheSternKeyParameters;
import org.spongycastle.crypto.params.NaccacheSternPrivateKeyParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.util.Arrays;

public class NaccacheSternEngine
  implements AsymmetricBlockCipher
{
  private static BigInteger ONE = BigInteger.valueOf(1L);
  private static BigInteger ZERO = BigInteger.valueOf(0L);
  private boolean aEW;
  private NaccacheSternKeyParameters aKO;
  private Vector[] aKP = null;
  private boolean aKQ = false;
  
  private static BigInteger ˊ(Vector paramVector1, Vector paramVector2)
  {
    BigInteger localBigInteger2 = ZERO;
    BigInteger localBigInteger1 = ONE;
    int i = 0;
    while (i < paramVector2.size())
    {
      localBigInteger1 = localBigInteger1.multiply((BigInteger)paramVector2.elementAt(i));
      i += 1;
    }
    i = 0;
    while (i < paramVector2.size())
    {
      BigInteger localBigInteger3 = (BigInteger)paramVector2.elementAt(i);
      BigInteger localBigInteger4 = localBigInteger1.divide(localBigInteger3);
      localBigInteger2 = localBigInteger2.add(localBigInteger4.multiply(localBigInteger4.modInverse(localBigInteger3)).multiply((BigInteger)paramVector1.elementAt(i)));
      i += 1;
    }
    return localBigInteger2.mod(localBigInteger1);
  }
  
  public int iB()
  {
    if (this.aEW) {
      return (this.aKO.le() + 7) / 8 - 1;
    }
    return this.aKO.getModulus().toByteArray().length;
  }
  
  public int iC()
  {
    if (this.aEW) {
      return this.aKO.getModulus().toByteArray().length;
    }
    return (this.aKO.le() + 7) / 8 - 1;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aEW = paramBoolean;
    Object localObject = paramCipherParameters;
    if ((paramCipherParameters instanceof ParametersWithRandom)) {
      localObject = ((ParametersWithRandom)paramCipherParameters).lh();
    }
    this.aKO = ((NaccacheSternKeyParameters)localObject);
    if (!this.aEW)
    {
      if (this.aKQ) {
        System.out.println("Constructing lookup Array");
      }
      localObject = (NaccacheSternPrivateKeyParameters)this.aKO;
      Vector localVector = ((NaccacheSternPrivateKeyParameters)localObject).lg();
      this.aKP = new Vector[localVector.size()];
      int i = 0;
      while (i < localVector.size())
      {
        BigInteger localBigInteger1 = (BigInteger)localVector.elementAt(i);
        int k = localBigInteger1.intValue();
        this.aKP[i] = new Vector();
        this.aKP[i].addElement(ONE);
        if (this.aKQ) {
          System.out.println("Constructing lookup ArrayList for " + k);
        }
        paramCipherParameters = ZERO;
        int j = 1;
        while (j < k)
        {
          paramCipherParameters = paramCipherParameters.add(((NaccacheSternPrivateKeyParameters)localObject).lf());
          BigInteger localBigInteger2 = paramCipherParameters.divide(localBigInteger1);
          this.aKP[i].addElement(((NaccacheSternPrivateKeyParameters)localObject).getG().modPow(localBigInteger2, ((NaccacheSternPrivateKeyParameters)localObject).getModulus()));
          j += 1;
        }
        i += 1;
      }
    }
  }
  
  public byte[] ˎ(BigInteger paramBigInteger)
  {
    byte[] arrayOfByte = this.aKO.getModulus().toByteArray();
    Arrays.fill(arrayOfByte, (byte)0);
    paramBigInteger = this.aKO.getG().modPow(paramBigInteger, this.aKO.getModulus()).toByteArray();
    System.arraycopy(paramBigInteger, 0, arrayOfByte, arrayOfByte.length - paramBigInteger.length, paramBigInteger.length);
    if (this.aKQ) {
      System.out.println("Encrypted value is:  " + new BigInteger(arrayOfByte));
    }
    return arrayOfByte;
  }
  
  public byte[] ˑ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aKO == null) {
      throw new IllegalStateException("NaccacheStern engine not initialised");
    }
    if (paramInt2 > iB() + 1) {
      throw new DataLengthException("input too large for Naccache-Stern cipher.\n");
    }
    if ((!this.aEW) && (paramInt2 < iB())) {
      throw new InvalidCipherTextException("BlockLength does not match modulus for Naccache-Stern cipher.\n");
    }
    if ((paramInt1 != 0) || (paramInt2 != paramArrayOfByte.length))
    {
      localObject = new byte[paramInt2];
      System.arraycopy(paramArrayOfByte, paramInt1, localObject, 0, paramInt2);
      paramArrayOfByte = (byte[])localObject;
    }
    paramArrayOfByte = new BigInteger(1, paramArrayOfByte);
    if (this.aKQ) {
      System.out.println("input as BigInteger: " + paramArrayOfByte);
    }
    if (this.aEW) {
      return ˎ(paramArrayOfByte);
    }
    Object localObject = new Vector();
    NaccacheSternPrivateKeyParameters localNaccacheSternPrivateKeyParameters = (NaccacheSternPrivateKeyParameters)this.aKO;
    Vector localVector1 = localNaccacheSternPrivateKeyParameters.lg();
    paramInt1 = 0;
    while (paramInt1 < localVector1.size())
    {
      BigInteger localBigInteger = paramArrayOfByte.modPow(localNaccacheSternPrivateKeyParameters.lf().divide((BigInteger)localVector1.elementAt(paramInt1)), localNaccacheSternPrivateKeyParameters.getModulus());
      Vector localVector2 = this.aKP[paramInt1];
      if (this.aKP[paramInt1].size() != ((BigInteger)localVector1.elementAt(paramInt1)).intValue())
      {
        if (this.aKQ) {
          System.out.println("Prime is " + localVector1.elementAt(paramInt1) + ", lookup table has size " + localVector2.size());
        }
        throw new InvalidCipherTextException("Error in lookup Array for " + ((BigInteger)localVector1.elementAt(paramInt1)).intValue() + ": Size mismatch. Expected ArrayList with length " + ((BigInteger)localVector1.elementAt(paramInt1)).intValue() + " but found ArrayList of length " + this.aKP[paramInt1].size());
      }
      paramInt2 = localVector2.indexOf(localBigInteger);
      if (paramInt2 == -1)
      {
        if (this.aKQ)
        {
          System.out.println("Actual prime is " + localVector1.elementAt(paramInt1));
          System.out.println("Decrypted value is " + localBigInteger);
          System.out.println("LookupList for " + localVector1.elementAt(paramInt1) + " with size " + this.aKP[paramInt1].size() + " is: ");
          paramInt2 = 0;
          while (paramInt2 < this.aKP[paramInt1].size())
          {
            System.out.println(this.aKP[paramInt1].elementAt(paramInt2));
            paramInt2 += 1;
          }
        }
        throw new InvalidCipherTextException("Lookup failed");
      }
      ((Vector)localObject).addElement(BigInteger.valueOf(paramInt2));
      paramInt1 += 1;
    }
    return ˊ((Vector)localObject, localVector1).toByteArray();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.NaccacheSternEngine
 * JD-Core Version:    0.7.0.1
 */