package org.spongycastle.pqc.crypto.gmss;

import java.io.PrintStream;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.pqc.crypto.MessageSigner;
import org.spongycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.spongycastle.pqc.crypto.gmss.util.GMSSUtil;
import org.spongycastle.pqc.crypto.gmss.util.WinternitzOTSVerify;
import org.spongycastle.pqc.crypto.gmss.util.WinternitzOTSignature;
import org.spongycastle.util.Arrays;

public class GMSSSigner
  implements MessageSigner
{
  private SecureRandom aFa;
  private int beA;
  private GMSSParameters beB;
  private Digest beF;
  private int[] beQ;
  private byte[][][] beR;
  private GMSSRandom beu;
  private GMSSDigestProvider bey;
  private int bez;
  private GMSSUtil bfH;
  private byte[] bfI;
  private WinternitzOTSignature bfJ;
  private byte[][] bfK;
  GMSSKeyParameters bfL;
  private Digest bfj;
  
  private void rd()
  {
    this.bfj.reset();
    GMSSPrivateKeyParameters localGMSSPrivateKeyParameters = (GMSSPrivateKeyParameters)this.bfL;
    if (localGMSSPrivateKeyParameters.qR()) {
      throw new IllegalStateException("Private key already used");
    }
    if (localGMSSPrivateKeyParameters.getIndex(0) >= localGMSSPrivateKeyParameters.ʃ(0)) {
      throw new IllegalStateException("No more signatures can be generated");
    }
    this.beB = localGMSSPrivateKeyParameters.qI();
    this.beA = this.beB.qN();
    Object localObject1 = localGMSSPrivateKeyParameters.qU()[(this.beA - 1)];
    Object localObject2 = new byte[this.bez];
    localObject2 = new byte[this.bez];
    System.arraycopy(localObject1, 0, localObject2, 0, this.bez);
    this.bfJ = new WinternitzOTSignature(this.beu.ᵞ((byte[])localObject2), this.bey.qH(), this.beB.qP()[(this.beA - 1)]);
    localObject1 = localGMSSPrivateKeyParameters.qV();
    this.beR = new byte[this.beA][][];
    int i = 0;
    while (i < this.beA)
    {
      localObject2 = this.beR;
      int j = localObject1[i].length;
      int k = this.bez;
      localObject2[i] = ((byte[][])Array.newInstance(Byte.TYPE, new int[] { j, k }));
      j = 0;
      while (j < localObject1[i].length)
      {
        System.arraycopy(localObject1[i][j], 0, this.beR[i][j], 0, this.bez);
        j += 1;
      }
      i += 1;
    }
    this.beQ = new int[this.beA];
    System.arraycopy(localGMSSPrivateKeyParameters.qT(), 0, this.beQ, 0, this.beA);
    this.bfK = new byte[this.beA - 1][];
    i = 0;
    while (i < this.beA - 1)
    {
      localObject1 = localGMSSPrivateKeyParameters.ɽ(i);
      this.bfK[i] = new byte[localObject1.length];
      System.arraycopy(localObject1, 0, this.bfK[i], 0, localObject1.length);
      i += 1;
    }
    localGMSSPrivateKeyParameters.qS();
  }
  
  private void re()
  {
    this.bfj.reset();
    GMSSPublicKeyParameters localGMSSPublicKeyParameters = (GMSSPublicKeyParameters)this.bfL;
    this.bfI = localGMSSPublicKeyParameters.qW();
    this.beB = localGMSSPublicKeyParameters.qI();
    this.beA = this.beB.qN();
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (paramBoolean)
    {
      if ((paramCipherParameters instanceof ParametersWithRandom))
      {
        paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
        this.aFa = paramCipherParameters.iN();
        this.bfL = ((GMSSPrivateKeyParameters)paramCipherParameters.lh());
        rd();
        return;
      }
      this.aFa = new SecureRandom();
      this.bfL = ((GMSSPrivateKeyParameters)paramCipherParameters);
      rd();
      return;
    }
    this.bfL = ((GMSSPublicKeyParameters)paramCipherParameters);
    re();
  }
  
  public byte[] ᕑ(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1 = new byte[this.bez];
    paramArrayOfByte = this.bfJ.וּ(paramArrayOfByte);
    byte[] arrayOfByte2 = this.bfH.ˋ(this.beR[(this.beA - 1)]);
    byte[] arrayOfByte3 = this.bfH.ʌ(this.beQ[(this.beA - 1)]);
    arrayOfByte1 = new byte[arrayOfByte3.length + paramArrayOfByte.length + arrayOfByte2.length];
    System.arraycopy(arrayOfByte3, 0, arrayOfByte1, 0, arrayOfByte3.length);
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, arrayOfByte3.length, paramArrayOfByte.length);
    System.arraycopy(arrayOfByte2, 0, arrayOfByte1, arrayOfByte3.length + paramArrayOfByte.length, arrayOfByte2.length);
    paramArrayOfByte = new byte[0];
    int i = this.beA - 1 - 1;
    while (i >= 0)
    {
      arrayOfByte2 = this.bfH.ˋ(this.beR[i]);
      arrayOfByte3 = this.bfH.ʌ(this.beQ[i]);
      byte[] arrayOfByte4 = new byte[paramArrayOfByte.length];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte4, 0, paramArrayOfByte.length);
      paramArrayOfByte = new byte[arrayOfByte4.length + arrayOfByte3.length + this.bfK[i].length + arrayOfByte2.length];
      System.arraycopy(arrayOfByte4, 0, paramArrayOfByte, 0, arrayOfByte4.length);
      System.arraycopy(arrayOfByte3, 0, paramArrayOfByte, arrayOfByte4.length, arrayOfByte3.length);
      System.arraycopy(this.bfK[i], 0, paramArrayOfByte, arrayOfByte4.length + arrayOfByte3.length, this.bfK[i].length);
      System.arraycopy(arrayOfByte2, 0, paramArrayOfByte, arrayOfByte4.length + arrayOfByte3.length + this.bfK[i].length, arrayOfByte2.length);
      i -= 1;
    }
    arrayOfByte2 = new byte[arrayOfByte1.length + paramArrayOfByte.length];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, arrayOfByte1.length);
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte2, arrayOfByte1.length, paramArrayOfByte.length);
    return arrayOfByte2;
  }
  
  public boolean ᴵ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    boolean bool = false;
    this.beF.reset();
    int i = 0;
    int k = this.beA - 1;
    while (k >= 0)
    {
      Object localObject = new WinternitzOTSVerify(this.bey.qH(), this.beB.qP()[k]);
      int j = ((WinternitzOTSVerify)localObject).rf();
      int m = this.bfH.ᐠ(paramArrayOfByte2, i);
      i += 4;
      byte[] arrayOfByte = new byte[j];
      System.arraycopy(paramArrayOfByte2, i, arrayOfByte, 0, j);
      i += j;
      paramArrayOfByte1 = ((WinternitzOTSVerify)localObject).ᵢ(paramArrayOfByte1, arrayOfByte);
      if (paramArrayOfByte1 == null)
      {
        System.err.println("OTS Public Key is null in GMSSSignature.verify");
        return false;
      }
      j = this.beB.qO()[k];
      int n = this.bez;
      localObject = (byte[][])Array.newInstance(Byte.TYPE, new int[] { j, n });
      j = 0;
      while (j < localObject.length)
      {
        System.arraycopy(paramArrayOfByte2, i, localObject[j], 0, this.bez);
        i += this.bez;
        j += 1;
      }
      arrayOfByte = new byte[this.bez];
      j = (1 << localObject.length) + m;
      m = 0;
      while (m < localObject.length)
      {
        arrayOfByte = new byte[this.bez << 1];
        if (j % 2 == 0)
        {
          System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 0, this.bez);
          System.arraycopy(localObject[m], 0, arrayOfByte, this.bez, this.bez);
          j /= 2;
        }
        else
        {
          System.arraycopy(localObject[m], 0, arrayOfByte, 0, this.bez);
          System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, this.bez, paramArrayOfByte1.length);
          j = (j - 1) / 2;
        }
        this.bfj.update(arrayOfByte, 0, arrayOfByte.length);
        paramArrayOfByte1 = new byte[this.bfj.iJ()];
        this.bfj.doFinal(paramArrayOfByte1, 0);
        m += 1;
      }
      k -= 1;
    }
    if (Arrays.ﹺ(this.bfI, paramArrayOfByte1)) {
      bool = true;
    }
    return bool;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.GMSSSigner
 * JD-Core Version:    0.7.0.1
 */