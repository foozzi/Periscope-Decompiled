package org.spongycastle.pqc.crypto.gmss;

import java.io.PrintStream;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Vector;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.spongycastle.pqc.crypto.gmss.util.WinternitzOTSVerify;
import org.spongycastle.pqc.crypto.gmss.util.WinternitzOTSignature;

public class GMSSKeyPairGenerator
  implements AsymmetricCipherKeyPairGenerator
{
  private int[] aGN;
  private int beA;
  private GMSSParameters beB;
  private int[] beC;
  private int[] beD;
  private GMSSKeyGenerationParameters beE;
  private GMSSRandom beu;
  private byte[][] bev;
  private byte[][] bew;
  private byte[][] bex;
  private GMSSDigestProvider bey;
  private int bez;
  private boolean initialized;
  
  private AsymmetricCipherKeyPair qJ()
  {
    if (!this.initialized) {
      qK();
    }
    byte[][][] arrayOfByte1 = new byte[this.beA][][];
    byte[][][] arrayOfByte2 = new byte[this.beA - 1][][];
    Treehash[][] arrayOfTreehash;1 = new Treehash[this.beA][];
    Treehash[][] arrayOfTreehash;2 = new Treehash[this.beA - 1][];
    Vector[] arrayOfVector1 = new Vector[this.beA];
    Vector[] arrayOfVector2 = new Vector[this.beA - 1];
    Vector[][] arrayOfVector;1 = new Vector[this.beA][];
    Vector[][] arrayOfVector;2 = new Vector[this.beA - 1][];
    int i = 0;
    while (i < this.beA)
    {
      j = this.beC[i];
      int k = this.bez;
      arrayOfByte1[i] = ((byte[][])Array.newInstance(Byte.TYPE, new int[] { j, k }));
      arrayOfTreehash;1[i] = new Treehash[this.beC[i] - this.aGN[i]];
      if (i > 0)
      {
        j = this.beC[i];
        k = this.bez;
        arrayOfByte2[(i - 1)] = ((byte[][])Array.newInstance(Byte.TYPE, new int[] { j, k }));
        arrayOfTreehash;2[(i - 1)] = new Treehash[this.beC[i] - this.aGN[i]];
      }
      arrayOfVector1[i] = new Vector();
      if (i > 0) {
        arrayOfVector2[(i - 1)] = new Vector();
      }
      i += 1;
    }
    i = this.beA;
    int j = this.bez;
    byte[][] arrayOfByte3 = (byte[][])Array.newInstance(Byte.TYPE, new int[] { i, j });
    i = this.beA;
    j = this.bez;
    byte[][] arrayOfByte4 = (byte[][])Array.newInstance(Byte.TYPE, new int[] { i - 1, j });
    i = this.beA;
    j = this.bez;
    byte[][] arrayOfByte5 = (byte[][])Array.newInstance(Byte.TYPE, new int[] { i, j });
    i = 0;
    while (i < this.beA)
    {
      System.arraycopy(this.bev[i], 0, arrayOfByte5[i], 0, this.bez);
      i += 1;
    }
    i = this.beA;
    j = this.bez;
    this.bex = ((byte[][])Array.newInstance(Byte.TYPE, new int[] { i - 1, j }));
    i = this.beA - 1;
    Object localObject;
    while (i >= 0)
    {
      localObject = new GMSSRootCalc(this.beC[i], this.aGN[i], this.bey);
      try
      {
        GMSSRootCalc localGMSSRootCalc;
        if (i == this.beA - 1)
        {
          localGMSSRootCalc = ˊ(null, arrayOfVector1[i], arrayOfByte5[i], i);
          localObject = localGMSSRootCalc;
        }
        else
        {
          localGMSSRootCalc = ˊ(arrayOfByte3[(i + 1)], arrayOfVector1[i], arrayOfByte5[i], i);
          localObject = localGMSSRootCalc;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      j = 0;
      while (j < this.beC[i])
      {
        System.arraycopy(localObject.qY()[j], 0, arrayOfByte1[i][j], 0, this.bez);
        j += 1;
      }
      arrayOfVector;1[i] = ((GMSSRootCalc)localObject).ra();
      arrayOfTreehash;1[i] = ((GMSSRootCalc)localObject).qZ();
      System.arraycopy(((GMSSRootCalc)localObject).rb(), 0, arrayOfByte3[i], 0, this.bez);
      i -= 1;
    }
    i = this.beA - 2;
    while (i >= 0)
    {
      localObject = ˊ(arrayOfVector2[i], arrayOfByte5[(i + 1)], i + 1);
      j = 0;
      while (j < this.beC[(i + 1)])
      {
        System.arraycopy(localObject.qY()[j], 0, arrayOfByte2[i][j], 0, this.bez);
        j += 1;
      }
      arrayOfVector;2[i] = ((GMSSRootCalc)localObject).ra();
      arrayOfTreehash;2[i] = ((GMSSRootCalc)localObject).qZ();
      System.arraycopy(((GMSSRootCalc)localObject).rb(), 0, arrayOfByte4[i], 0, this.bez);
      System.arraycopy(arrayOfByte5[(i + 1)], 0, this.bew[i], 0, this.bez);
      i -= 1;
    }
    return new AsymmetricCipherKeyPair(new GMSSPublicKeyParameters(arrayOfByte3[0], this.beB), new GMSSPrivateKeyParameters(this.bev, this.bew, arrayOfByte1, arrayOfByte2, arrayOfTreehash;1, arrayOfTreehash;2, arrayOfVector1, arrayOfVector2, arrayOfVector;1, arrayOfVector;2, arrayOfByte4, this.bex, this.beB, this.bey));
  }
  
  private void qK()
  {
    int[] arrayOfInt = new int[4];
    int[] tmp5_4 = arrayOfInt;
    tmp5_4[0] = 10;
    int[] tmp10_5 = tmp5_4;
    tmp10_5[1] = 10;
    int[] tmp15_10 = tmp10_5;
    tmp15_10[2] = 10;
    int[] tmp20_15 = tmp15_10;
    tmp20_15[3] = 10;
    tmp20_15;
    ˋ(new GMSSKeyGenerationParameters(new SecureRandom(), new GMSSParameters(arrayOfInt.length, arrayOfInt, new int[] { 3, 3, 3, 3 }, new int[] { 2, 2, 2, 2 })));
  }
  
  private GMSSRootCalc ˊ(Vector paramVector, byte[] paramArrayOfByte, int paramInt)
  {
    Object localObject = new byte[this.beA];
    localObject = new GMSSRootCalc(this.beC[paramInt], this.aGN[paramInt], this.bey);
    ((GMSSRootCalc)localObject).ʼ(paramVector);
    int m = 3;
    int j = 0;
    int i = 0;
    while (i < 1 << this.beC[paramInt])
    {
      int n = m;
      int k = j;
      if (i == m)
      {
        n = m;
        k = j;
        if (j < this.beC[paramInt] - this.aGN[paramInt])
        {
          ((GMSSRootCalc)localObject).ۥ(paramArrayOfByte, j);
          n = m * 2;
          k = j + 1;
        }
      }
      ((GMSSRootCalc)localObject).update(new WinternitzOTSignature(this.beu.ᵞ(paramArrayOfByte), this.bey.qH(), this.beD[paramInt]).qW());
      i += 1;
      m = n;
      j = k;
    }
    if (((GMSSRootCalc)localObject).qX()) {
      return localObject;
    }
    System.err.println("N�chster Baum noch nicht fertig konstruiert!!!");
    return null;
  }
  
  private GMSSRootCalc ˊ(byte[] paramArrayOfByte1, Vector paramVector, byte[] paramArrayOfByte2, int paramInt)
  {
    Object localObject = new byte[this.bez];
    localObject = new byte[this.bez];
    byte[] arrayOfByte = this.beu.ᵞ(paramArrayOfByte2);
    localObject = new GMSSRootCalc(this.beC[paramInt], this.aGN[paramInt], this.bey);
    ((GMSSRootCalc)localObject).ʼ(paramVector);
    if (paramInt == this.beA - 1)
    {
      paramArrayOfByte1 = new WinternitzOTSignature(arrayOfByte, this.bey.qH(), this.beD[paramInt]).qW();
    }
    else
    {
      paramVector = new WinternitzOTSignature(arrayOfByte, this.bey.qH(), this.beD[paramInt]);
      this.bex[paramInt] = paramVector.וּ(paramArrayOfByte1);
      paramArrayOfByte1 = new WinternitzOTSVerify(this.bey.qH(), this.beD[paramInt]).ᵢ(paramArrayOfByte1, this.bex[paramInt]);
    }
    ((GMSSRootCalc)localObject).update(paramArrayOfByte1);
    int m = 3;
    int j = 0;
    int i = 1;
    while (i < 1 << this.beC[paramInt])
    {
      int n = m;
      int k = j;
      if (i == m)
      {
        n = m;
        k = j;
        if (j < this.beC[paramInt] - this.aGN[paramInt])
        {
          ((GMSSRootCalc)localObject).ۥ(paramArrayOfByte2, j);
          n = m * 2;
          k = j + 1;
        }
      }
      ((GMSSRootCalc)localObject).update(new WinternitzOTSignature(this.beu.ᵞ(paramArrayOfByte2), this.bey.qH(), this.beD[paramInt]).qW());
      i += 1;
      m = n;
      j = k;
    }
    if (((GMSSRootCalc)localObject).qX()) {
      return localObject;
    }
    System.err.println("Baum noch nicht fertig konstruiert!!!");
    return null;
  }
  
  public AsymmetricCipherKeyPair iF()
  {
    return qJ();
  }
  
  public void ˋ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    this.beE = ((GMSSKeyGenerationParameters)paramKeyGenerationParameters);
    this.beB = new GMSSParameters(this.beE.qI().qN(), this.beE.qI().qO(), this.beE.qI().qP(), this.beE.qI().qQ());
    this.beA = this.beB.qN();
    this.beC = this.beB.qO();
    this.beD = this.beB.qP();
    this.aGN = this.beB.qQ();
    int i = this.beA;
    int j = this.bez;
    this.bev = ((byte[][])Array.newInstance(Byte.TYPE, new int[] { i, j }));
    i = this.beA;
    j = this.bez;
    this.bew = ((byte[][])Array.newInstance(Byte.TYPE, new int[] { i - 1, j }));
    paramKeyGenerationParameters = new SecureRandom();
    i = 0;
    while (i < this.beA)
    {
      paramKeyGenerationParameters.nextBytes(this.bev[i]);
      this.beu.ᵞ(this.bev[i]);
      i += 1;
    }
    this.initialized = true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.GMSSKeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */