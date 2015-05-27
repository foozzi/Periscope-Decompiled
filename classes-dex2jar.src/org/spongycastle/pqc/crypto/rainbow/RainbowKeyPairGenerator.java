package org.spongycastle.pqc.crypto.rainbow;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.pqc.crypto.rainbow.util.ComputeInField;
import org.spongycastle.pqc.crypto.rainbow.util.GF2Field;

public class RainbowKeyPairGenerator
  implements AsymmetricCipherKeyPairGenerator
{
  private SecureRandom aKZ;
  private int beO;
  private Layer[] bem;
  private RainbowKeyGenerationParameters bhS;
  private short[][] bhT;
  private short[][] bhU;
  private short[] bhV;
  private short[][] bhW;
  private short[][] bhX;
  private short[] bhY;
  private int[] bhZ;
  private short[][] bia;
  private short[][] bib;
  private short[] bic;
  private boolean initialized = false;
  
  private void qK()
  {
    ˋ(new RainbowKeyGenerationParameters(new SecureRandom(), new RainbowParameters()));
  }
  
  private void rQ()
  {
    rR();
    rS();
    rT();
    rU();
  }
  
  private void rR()
  {
    int k = this.bhZ[(this.bhZ.length - 1)] - this.bhZ[0];
    this.bhT = ((short[][])Array.newInstance(Short.TYPE, new int[] { k, k }));
    this.bhU = null;
    ComputeInField localComputeInField = new ComputeInField();
    while (this.bhU == null)
    {
      i = 0;
      while (i < k)
      {
        int j = 0;
        while (j < k)
        {
          this.bhT[i][j] = ((short)(this.aKZ.nextInt() & 0xFF));
          j += 1;
        }
        i += 1;
      }
      this.bhU = localComputeInField.ˊ(this.bhT);
    }
    this.bhV = new short[k];
    int i = 0;
    while (i < k)
    {
      this.bhV[i] = ((short)(this.aKZ.nextInt() & 0xFF));
      i += 1;
    }
  }
  
  private void rS()
  {
    int k = this.bhZ[(this.bhZ.length - 1)];
    this.bhW = ((short[][])Array.newInstance(Short.TYPE, new int[] { k, k }));
    this.bhX = null;
    ComputeInField localComputeInField = new ComputeInField();
    while (this.bhX == null)
    {
      i = 0;
      while (i < k)
      {
        int j = 0;
        while (j < k)
        {
          this.bhW[i][j] = ((short)(this.aKZ.nextInt() & 0xFF));
          j += 1;
        }
        i += 1;
      }
      this.bhX = localComputeInField.ˊ(this.bhW);
    }
    this.bhY = new short[k];
    int i = 0;
    while (i < k)
    {
      this.bhY[i] = ((short)(this.aKZ.nextInt() & 0xFF));
      i += 1;
    }
  }
  
  private void rT()
  {
    this.bem = new Layer[this.beO];
    int i = 0;
    while (i < this.beO)
    {
      this.bem[i] = new Layer(this.bhZ[i], this.bhZ[(i + 1)], this.aKZ);
      i += 1;
    }
  }
  
  private void rU()
  {
    ComputeInField localComputeInField = new ComputeInField();
    int i1 = this.bhZ[(this.bhZ.length - 1)] - this.bhZ[0];
    int i2 = this.bhZ[(this.bhZ.length - 1)];
    short[][][] arrayOfShort = (short[][][])Array.newInstance(Short.TYPE, new int[] { i1, i2, i2 });
    this.bib = ((short[][])Array.newInstance(Short.TYPE, new int[] { i1, i2 }));
    this.bic = new short[i1];
    int j = 0;
    Object localObject1 = new short[i2];
    int i = 0;
    while (i < this.bem.length)
    {
      localObject1 = this.bem[i].rL();
      localObject2 = this.bem[i].rM();
      localObject3 = this.bem[i].rN();
      short[] arrayOfShort1 = this.bem[i].rO();
      int i3 = localObject1[0].length;
      int i4 = localObject2[0].length;
      int k = 0;
      while (k < i3)
      {
        int m = 0;
        int n;
        short[] arrayOfShort2;
        short s;
        while (m < i3)
        {
          n = 0;
          while (n < i4)
          {
            arrayOfShort2 = localComputeInField.ˊ(localObject1[k][m][n], this.bhW[(m + i4)]);
            arrayOfShort[(j + k)] = localComputeInField.ˊ(arrayOfShort[(j + k)], localComputeInField.ˋ(arrayOfShort2, this.bhW[n]));
            arrayOfShort2 = localComputeInField.ˊ(this.bhY[n], arrayOfShort2);
            this.bib[(j + k)] = localComputeInField.ˊ(arrayOfShort2, this.bib[(j + k)]);
            arrayOfShort2 = localComputeInField.ˊ(localObject1[k][m][n], this.bhW[n]);
            arrayOfShort2 = localComputeInField.ˊ(this.bhY[(m + i4)], arrayOfShort2);
            this.bib[(j + k)] = localComputeInField.ˊ(arrayOfShort2, this.bib[(j + k)]);
            s = GF2Field.ˏ(localObject1[k][m][n], this.bhY[(m + i4)]);
            this.bic[(j + k)] = GF2Field.ˎ(this.bic[(j + k)], GF2Field.ˏ(s, this.bhY[n]));
            n += 1;
          }
          m += 1;
        }
        m = 0;
        while (m < i4)
        {
          n = 0;
          while (n < i4)
          {
            arrayOfShort2 = localComputeInField.ˊ(localObject2[k][m][n], this.bhW[m]);
            arrayOfShort[(j + k)] = localComputeInField.ˊ(arrayOfShort[(j + k)], localComputeInField.ˋ(arrayOfShort2, this.bhW[n]));
            arrayOfShort2 = localComputeInField.ˊ(this.bhY[n], arrayOfShort2);
            this.bib[(j + k)] = localComputeInField.ˊ(arrayOfShort2, this.bib[(j + k)]);
            arrayOfShort2 = localComputeInField.ˊ(localObject2[k][m][n], this.bhW[n]);
            arrayOfShort2 = localComputeInField.ˊ(this.bhY[m], arrayOfShort2);
            this.bib[(j + k)] = localComputeInField.ˊ(arrayOfShort2, this.bib[(j + k)]);
            s = GF2Field.ˏ(localObject2[k][m][n], this.bhY[m]);
            this.bic[(j + k)] = GF2Field.ˎ(this.bic[(j + k)], GF2Field.ˏ(s, this.bhY[n]));
            n += 1;
          }
          m += 1;
        }
        m = 0;
        while (m < i4 + i3)
        {
          arrayOfShort2 = localComputeInField.ˊ(localObject3[k][m], this.bhW[m]);
          this.bib[(j + k)] = localComputeInField.ˊ(arrayOfShort2, this.bib[(j + k)]);
          this.bic[(j + k)] = GF2Field.ˎ(this.bic[(j + k)], GF2Field.ˏ(localObject3[k][m], this.bhY[m]));
          m += 1;
        }
        this.bic[(j + k)] = GF2Field.ˎ(this.bic[(j + k)], arrayOfShort1[k]);
        k += 1;
      }
      j += i3;
      i += 1;
    }
    localObject1 = (short[][][])Array.newInstance(Short.TYPE, new int[] { i1, i2, i2 });
    Object localObject2 = (short[][])Array.newInstance(Short.TYPE, new int[] { i1, i2 });
    Object localObject3 = new short[i1];
    i = 0;
    while (i < i1)
    {
      j = 0;
      while (j < this.bhT.length)
      {
        localObject1[i] = localComputeInField.ˊ(localObject1[i], localComputeInField.ˊ(this.bhT[i][j], arrayOfShort[j]));
        localObject2[i] = localComputeInField.ˊ(localObject2[i], localComputeInField.ˊ(this.bhT[i][j], this.bib[j]));
        localObject3[i] = GF2Field.ˎ(localObject3[i], GF2Field.ˏ(this.bhT[i][j], this.bic[j]));
        j += 1;
      }
      localObject3[i] = GF2Field.ˎ(localObject3[i], this.bhV[i]);
      i += 1;
    }
    this.bib = ((short[][])localObject2);
    this.bic = ((short[])localObject3);
    ˊ((short[][][])localObject1);
  }
  
  private void ˊ(short[][][] paramArrayOfShort)
  {
    int n = paramArrayOfShort.length;
    int i1 = paramArrayOfShort[0].length;
    int i = (i1 + 1) * i1 / 2;
    this.bia = ((short[][])Array.newInstance(Short.TYPE, new int[] { n, i }));
    int j = 0;
    while (j < n)
    {
      int k = 0;
      i = 0;
      while (i < i1)
      {
        int m = i;
        while (m < i1)
        {
          if (m == i) {
            this.bia[j][k] = paramArrayOfShort[j][i][m];
          } else {
            this.bia[j][k] = GF2Field.ˎ(paramArrayOfShort[j][i][m], paramArrayOfShort[j][m][i]);
          }
          k += 1;
          m += 1;
        }
        i += 1;
      }
      j += 1;
    }
  }
  
  public AsymmetricCipherKeyPair iF()
  {
    return qJ();
  }
  
  public AsymmetricCipherKeyPair qJ()
  {
    if (!this.initialized) {
      qK();
    }
    rQ();
    RainbowPrivateKeyParameters localRainbowPrivateKeyParameters = new RainbowPrivateKeyParameters(this.bhU, this.bhV, this.bhX, this.bhY, this.bhZ, this.bem);
    return new AsymmetricCipherKeyPair(new RainbowPublicKeyParameters(this.bhZ[(this.bhZ.length - 1)] - this.bhZ[0], this.bia, this.bib, this.bic), localRainbowPrivateKeyParameters);
  }
  
  public void ˊ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    ˋ(paramKeyGenerationParameters);
  }
  
  public void ˋ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    this.bhS = ((RainbowKeyGenerationParameters)paramKeyGenerationParameters);
    this.aKZ = new SecureRandom();
    this.bhZ = this.bhS.rP().qC();
    this.beO = this.bhS.rP().qN();
    this.initialized = true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.rainbow.RainbowKeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */