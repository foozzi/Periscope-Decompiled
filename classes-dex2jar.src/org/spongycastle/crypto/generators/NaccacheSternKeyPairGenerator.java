package org.spongycastle.crypto.generators;

import java.io.PrintStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Vector;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.params.NaccacheSternKeyGenerationParameters;
import org.spongycastle.crypto.params.NaccacheSternKeyParameters;
import org.spongycastle.crypto.params.NaccacheSternPrivateKeyParameters;

public class NaccacheSternKeyPairGenerator
  implements AsymmetricCipherKeyPairGenerator
{
  private static final BigInteger ONE = BigInteger.valueOf(1L);
  private static int[] aNh = { 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557 };
  private NaccacheSternKeyGenerationParameters aNi;
  
  private static Vector ʏ(int paramInt)
  {
    Vector localVector = new Vector(paramInt);
    int i = 0;
    while (i != paramInt)
    {
      localVector.addElement(BigInteger.valueOf(aNh[i]));
      i += 1;
    }
    return localVector;
  }
  
  private static int ˊ(SecureRandom paramSecureRandom, int paramInt)
  {
    if ((-paramInt & paramInt) == paramInt) {
      return (int)(paramInt * (paramSecureRandom.nextInt() & 0x7FFFFFFF) >> 31);
    }
    int i;
    int j;
    do
    {
      i = paramSecureRandom.nextInt() & 0x7FFFFFFF;
      j = i % paramInt;
    } while (i - j + (paramInt - 1) < 0);
    return j;
  }
  
  private static Vector ˊ(Vector paramVector, SecureRandom paramSecureRandom)
  {
    Vector localVector1 = new Vector();
    Vector localVector2 = new Vector();
    int i = 0;
    while (i < paramVector.size())
    {
      localVector2.addElement(paramVector.elementAt(i));
      i += 1;
    }
    localVector1.addElement(localVector2.elementAt(0));
    localVector2.removeElementAt(0);
    while (localVector2.size() != 0)
    {
      localVector1.insertElementAt(localVector2.elementAt(0), ˊ(paramSecureRandom, localVector1.size() + 1));
      localVector2.removeElementAt(0);
    }
    return localVector1;
  }
  
  private static BigInteger ˎ(int paramInt1, int paramInt2, SecureRandom paramSecureRandom)
  {
    for (BigInteger localBigInteger = new BigInteger(paramInt1, paramInt2, paramSecureRandom); localBigInteger.bitLength() != paramInt1; localBigInteger = new BigInteger(paramInt1, paramInt2, paramSecureRandom)) {}
    return localBigInteger;
  }
  
  public AsymmetricCipherKeyPair iF()
  {
    int m = this.aNi.getStrength();
    SecureRandom localSecureRandom = this.aNi.iN();
    int n = this.aNi.kD();
    boolean bool = this.aNi.ld();
    if (bool) {
      System.out.println("Fetching first " + this.aNi.lc() + " primes.");
    }
    Vector localVector1 = ˊ(ʏ(this.aNi.lc()), localSecureRandom);
    BigInteger localBigInteger1 = ONE;
    BigInteger localBigInteger2 = ONE;
    int i = 0;
    while (i < localVector1.size() / 2)
    {
      localBigInteger1 = localBigInteger1.multiply((BigInteger)localVector1.elementAt(i));
      i += 1;
    }
    i = localVector1.size() / 2;
    while (i < localVector1.size())
    {
      localBigInteger2 = localBigInteger2.multiply((BigInteger)localVector1.elementAt(i));
      i += 1;
    }
    BigInteger localBigInteger3 = localBigInteger1.multiply(localBigInteger2);
    i = m - localBigInteger3.bitLength() - 48;
    BigInteger localBigInteger4 = ˎ(i / 2 + 1, n, localSecureRandom);
    BigInteger localBigInteger5 = ˎ(i / 2 + 1, n, localSecureRandom);
    long l1 = 0L;
    if (bool) {
      System.out.println("generating p and q");
    }
    localBigInteger1 = localBigInteger4.multiply(localBigInteger1).shiftLeft(1);
    BigInteger localBigInteger9 = localBigInteger5.multiply(localBigInteger2).shiftLeft(1);
    BigInteger localBigInteger6;
    BigInteger localBigInteger7;
    BigInteger localBigInteger8;
    for (;;)
    {
      l2 = l1 + 1L;
      localBigInteger2 = ˎ(24, n, localSecureRandom);
      localBigInteger6 = localBigInteger2.multiply(localBigInteger1).add(ONE);
      if (!localBigInteger6.isProbablePrime(n))
      {
        l1 = l2;
      }
      else
      {
        do
        {
          do
          {
            localBigInteger7 = ˎ(24, n, localSecureRandom);
          } while (localBigInteger2.equals(localBigInteger7));
          localBigInteger8 = localBigInteger7.multiply(localBigInteger9).add(ONE);
        } while (!localBigInteger8.isProbablePrime(n));
        if (!localBigInteger3.gcd(localBigInteger2.multiply(localBigInteger7)).equals(ONE))
        {
          l1 = l2;
        }
        else
        {
          if (localBigInteger6.multiply(localBigInteger8).bitLength() >= m) {
            break;
          }
          l1 = l2;
          if (bool)
          {
            System.out.println("key size too small. Should be " + m + " but is actually " + localBigInteger6.multiply(localBigInteger8).bitLength());
            l1 = l2;
          }
        }
      }
    }
    if (bool) {
      System.out.println("needed " + l2 + " tries to generate p and q.");
    }
    localBigInteger9 = localBigInteger6.multiply(localBigInteger8);
    BigInteger localBigInteger10 = localBigInteger6.subtract(ONE).multiply(localBigInteger8.subtract(ONE));
    l1 = 0L;
    long l2 = l1;
    if (bool)
    {
      System.out.println("generating g");
      l2 = l1;
    }
    for (;;)
    {
      Vector localVector2 = new Vector();
      i = 0;
      l1 = l2;
      while (i != localVector1.size())
      {
        localBigInteger1 = localBigInteger10.divide((BigInteger)localVector1.elementAt(i));
        BigInteger localBigInteger11;
        do
        {
          l1 += 1L;
          localBigInteger11 = new BigInteger(m, n, localSecureRandom);
        } while (localBigInteger11.modPow(localBigInteger1, localBigInteger9).equals(ONE));
        localVector2.addElement(localBigInteger11);
        i += 1;
      }
      localBigInteger1 = ONE;
      i = 0;
      while (i < localVector1.size())
      {
        localBigInteger1 = localBigInteger1.multiply(((BigInteger)localVector2.elementAt(i)).modPow(localBigInteger3.divide((BigInteger)localVector1.elementAt(i)), localBigInteger9)).mod(localBigInteger9);
        i += 1;
      }
      int k = 0;
      i = 0;
      int j;
      for (;;)
      {
        j = k;
        if (i >= localVector1.size()) {
          break;
        }
        if (localBigInteger1.modPow(localBigInteger10.divide((BigInteger)localVector1.elementAt(i)), localBigInteger9).equals(ONE))
        {
          if (bool) {
            System.out.println("g has order phi(n)/" + localVector1.elementAt(i) + "\n g: " + localBigInteger1);
          }
          j = 1;
          break;
        }
        i += 1;
      }
      if (j != 0)
      {
        l2 = l1;
      }
      else if (localBigInteger1.modPow(localBigInteger10.divide(BigInteger.valueOf(4L)), localBigInteger9).equals(ONE))
      {
        l2 = l1;
        if (bool)
        {
          System.out.println("g has order phi(n)/4\n g:" + localBigInteger1);
          l2 = l1;
        }
      }
      else if (localBigInteger1.modPow(localBigInteger10.divide(localBigInteger2), localBigInteger9).equals(ONE))
      {
        l2 = l1;
        if (bool)
        {
          System.out.println("g has order phi(n)/p'\n g: " + localBigInteger1);
          l2 = l1;
        }
      }
      else if (localBigInteger1.modPow(localBigInteger10.divide(localBigInteger7), localBigInteger9).equals(ONE))
      {
        l2 = l1;
        if (bool)
        {
          System.out.println("g has order phi(n)/q'\n g: " + localBigInteger1);
          l2 = l1;
        }
      }
      else if (localBigInteger1.modPow(localBigInteger10.divide(localBigInteger4), localBigInteger9).equals(ONE))
      {
        l2 = l1;
        if (bool)
        {
          System.out.println("g has order phi(n)/a\n g: " + localBigInteger1);
          l2 = l1;
        }
      }
      else
      {
        if (!localBigInteger1.modPow(localBigInteger10.divide(localBigInteger5), localBigInteger9).equals(ONE)) {
          break;
        }
        l2 = l1;
        if (bool)
        {
          System.out.println("g has order phi(n)/b\n g: " + localBigInteger1);
          l2 = l1;
        }
      }
    }
    if (bool)
    {
      System.out.println("needed " + l1 + " tries to generate g");
      System.out.println();
      System.out.println("found new NaccacheStern cipher variables:");
      System.out.println("smallPrimes: " + localVector1);
      System.out.println("sigma:...... " + localBigInteger3 + " (" + localBigInteger3.bitLength() + " bits)");
      System.out.println("a:.......... " + localBigInteger4);
      System.out.println("b:.......... " + localBigInteger5);
      System.out.println("p':......... " + localBigInteger2);
      System.out.println("q':......... " + localBigInteger7);
      System.out.println("p:.......... " + localBigInteger6);
      System.out.println("q:.......... " + localBigInteger8);
      System.out.println("n:.......... " + localBigInteger9);
      System.out.println("phi(n):..... " + localBigInteger10);
      System.out.println("g:.......... " + localBigInteger1);
      System.out.println();
    }
    return new AsymmetricCipherKeyPair(new NaccacheSternKeyParameters(false, localBigInteger1, localBigInteger9, localBigInteger3.bitLength()), new NaccacheSternPrivateKeyParameters(localBigInteger1, localBigInteger9, localBigInteger3.bitLength(), localVector1, localBigInteger10));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.NaccacheSternKeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */