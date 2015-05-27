package org.spongycastle.pqc.crypto.rainbow;

import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.pqc.crypto.MessageSigner;
import org.spongycastle.pqc.crypto.rainbow.util.ComputeInField;
import org.spongycastle.pqc.crypto.rainbow.util.GF2Field;

public class RainbowSigner
  implements MessageSigner
{
  private SecureRandom aFa;
  int bii;
  private short[] bij;
  private ComputeInField bik = new ComputeInField();
  RainbowKeyParameters bil;
  
  private short[] ˊ(Layer[] paramArrayOfLayer, short[] paramArrayOfShort)
  {
    short[] arrayOfShort = new short[paramArrayOfShort.length];
    paramArrayOfShort = this.bik.ˊ(((RainbowPrivateKeyParameters)this.bil).qy(), paramArrayOfShort);
    paramArrayOfShort = this.bik.ˋ(((RainbowPrivateKeyParameters)this.bil).qx(), paramArrayOfShort);
    int i = 0;
    while (i < paramArrayOfLayer[0].rI())
    {
      this.bij[i] = ((short)this.aFa.nextInt());
      this.bij[i] = ((short)(this.bij[i] & 0xFF));
      i += 1;
    }
    return paramArrayOfShort;
  }
  
  private short[] ˎ(short[] paramArrayOfShort)
  {
    short[][] arrayOfShort1 = ((RainbowPublicKeyParameters)this.bil).qE();
    short[][] arrayOfShort2 = ((RainbowPublicKeyParameters)this.bil).qF();
    short[] arrayOfShort3 = ((RainbowPublicKeyParameters)this.bil).qG();
    short[] arrayOfShort4 = new short[arrayOfShort1.length];
    int n = arrayOfShort2[0].length;
    int j = 0;
    while (j < arrayOfShort1.length)
    {
      int k = 0;
      int i = 0;
      while (i < n)
      {
        int m = i;
        while (m < n)
        {
          s = GF2Field.ˏ(arrayOfShort1[j][k], GF2Field.ˏ(paramArrayOfShort[i], paramArrayOfShort[m]));
          arrayOfShort4[j] = GF2Field.ˎ(arrayOfShort4[j], s);
          k += 1;
          m += 1;
        }
        short s = GF2Field.ˏ(arrayOfShort2[j][i], paramArrayOfShort[i]);
        arrayOfShort4[j] = GF2Field.ˎ(arrayOfShort4[j], s);
        i += 1;
      }
      arrayOfShort4[j] = GF2Field.ˎ(arrayOfShort4[j], arrayOfShort3[j]);
      j += 1;
    }
    return arrayOfShort4;
  }
  
  private short[] ﹼ(byte[] paramArrayOfByte)
  {
    short[] arrayOfShort = new short[this.bii];
    int j = 0;
    int i = 0;
    int k;
    do
    {
      if (i >= paramArrayOfByte.length) {
        return arrayOfShort;
      }
      arrayOfShort[i] = ((short)paramArrayOfByte[j]);
      arrayOfShort[i] = ((short)(arrayOfShort[i] & 0xFF));
      j += 1;
      k = i + 1;
      i = k;
    } while (k < arrayOfShort.length);
    return arrayOfShort;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (paramBoolean)
    {
      if ((paramCipherParameters instanceof ParametersWithRandom))
      {
        paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
        this.aFa = paramCipherParameters.iN();
        this.bil = ((RainbowPrivateKeyParameters)paramCipherParameters.lh());
      }
      else
      {
        this.aFa = new SecureRandom();
        this.bil = ((RainbowPrivateKeyParameters)paramCipherParameters);
      }
    }
    else {
      this.bil = ((RainbowPublicKeyParameters)paramCipherParameters);
    }
    this.bii = this.bil.qD();
  }
  
  public byte[] ᕑ(byte[] paramArrayOfByte)
  {
    Layer[] arrayOfLayer = ((RainbowPrivateKeyParameters)this.bil).qB();
    int n = arrayOfLayer.length;
    this.bij = new short[((RainbowPrivateKeyParameters)this.bil).qA().length];
    byte[] arrayOfByte = new byte[arrayOfLayer[(n - 1)].rJ()];
    paramArrayOfByte = ﹼ(paramArrayOfByte);
    int m = 1;
    int j = 0;
    for (;;)
    {
      int i;
      try
      {
        short[] arrayOfShort1 = ˊ(arrayOfLayer, paramArrayOfByte);
        i = 0;
        if (i < n)
        {
          short[] arrayOfShort2 = new short[arrayOfLayer[i].rK()];
          short[] arrayOfShort3 = new short[arrayOfLayer[i].rK()];
          k = 0;
          if (k < arrayOfLayer[i].rK())
          {
            arrayOfShort2[k] = arrayOfShort1[j];
            j += 1;
            k += 1;
            continue;
          }
          arrayOfShort2 = this.bik.ˊ(arrayOfLayer[i].ˋ(this.bij), arrayOfShort2);
          if (arrayOfShort2 != null) {
            break label295;
          }
          throw new Exception("LES is not solveable!");
          if (k >= arrayOfShort2.length) {
            break label301;
          }
          this.bij[(arrayOfLayer[i].rI() + k)] = arrayOfShort2[k];
          k += 1;
          continue;
        }
        arrayOfShort1 = this.bik.ˊ(((RainbowPrivateKeyParameters)this.bil).qz(), this.bij);
        arrayOfShort1 = this.bik.ˋ(((RainbowPrivateKeyParameters)this.bil).qA(), arrayOfShort1);
        i = 0;
        if (i < arrayOfByte.length)
        {
          arrayOfByte[i] = ((byte)arrayOfShort1[i]);
          i += 1;
          continue;
        }
        i = m;
      }
      catch (Exception localException)
      {
        i = 0;
      }
      if (i == 0) {
        break;
      }
      return arrayOfByte;
      label295:
      int k = 0;
      continue;
      label301:
      i += 1;
    }
  }
  
  public boolean ᴵ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    short[] arrayOfShort = new short[paramArrayOfByte2.length];
    int i = 0;
    while (i < paramArrayOfByte2.length)
    {
      arrayOfShort[i] = ((short)((short)paramArrayOfByte2[i] & 0xFF));
      i += 1;
    }
    paramArrayOfByte1 = ﹼ(paramArrayOfByte1);
    paramArrayOfByte2 = ˎ(arrayOfShort);
    boolean bool = true;
    if (paramArrayOfByte1.length != paramArrayOfByte2.length) {
      return false;
    }
    i = 0;
    while (i < paramArrayOfByte1.length)
    {
      if ((bool) && (paramArrayOfByte1[i] == paramArrayOfByte2[i])) {
        bool = true;
      } else {
        bool = false;
      }
      i += 1;
    }
    return bool;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.rainbow.RainbowSigner
 * JD-Core Version:    0.7.0.1
 */