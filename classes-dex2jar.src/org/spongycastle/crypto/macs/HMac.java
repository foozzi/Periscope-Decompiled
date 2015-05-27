package org.spongycastle.crypto.macs;

import java.util.Hashtable;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Integers;
import org.spongycastle.util.Memoable;

public class HMac
  implements Mac
{
  private static Hashtable aNO = new Hashtable();
  private Digest aFH;
  private int aNI;
  private int aNJ;
  private Memoable aNK;
  private Memoable aNL;
  private byte[] aNM;
  private byte[] aNN;
  
  static
  {
    aNO.put("GOST3411", Integers.valueOf(32));
    aNO.put("MD2", Integers.valueOf(16));
    aNO.put("MD4", Integers.valueOf(64));
    aNO.put("MD5", Integers.valueOf(64));
    aNO.put("RIPEMD128", Integers.valueOf(64));
    aNO.put("RIPEMD160", Integers.valueOf(64));
    aNO.put("SHA-1", Integers.valueOf(64));
    aNO.put("SHA-224", Integers.valueOf(64));
    aNO.put("SHA-256", Integers.valueOf(64));
    aNO.put("SHA-384", Integers.valueOf(128));
    aNO.put("SHA-512", Integers.valueOf(128));
    aNO.put("Tiger", Integers.valueOf(64));
    aNO.put("Whirlpool", Integers.valueOf(64));
  }
  
  public HMac(Digest paramDigest)
  {
    this(paramDigest, ˊ(paramDigest));
  }
  
  private HMac(Digest paramDigest, int paramInt)
  {
    this.aFH = paramDigest;
    this.aNI = paramDigest.iJ();
    this.aNJ = paramInt;
    this.aNM = new byte[this.aNJ];
    this.aNN = new byte[this.aNJ + this.aNI];
  }
  
  private static int ˊ(Digest paramDigest)
  {
    if ((paramDigest instanceof ExtendedDigest)) {
      return ((ExtendedDigest)paramDigest).iM();
    }
    Integer localInteger = (Integer)aNO.get(paramDigest.iG());
    if (localInteger == null) {
      throw new IllegalArgumentException("unknown digest passed: " + paramDigest.iG());
    }
    return localInteger.intValue();
  }
  
  private static void ˋ(byte[] paramArrayOfByte, int paramInt, byte paramByte)
  {
    int i = 0;
    while (i < paramInt)
    {
      paramArrayOfByte[i] = ((byte)(paramArrayOfByte[i] ^ paramByte));
      i += 1;
    }
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    this.aFH.doFinal(this.aNN, this.aNJ);
    if (this.aNL != null)
    {
      ((Memoable)this.aFH).ˊ(this.aNL);
      this.aFH.update(this.aNN, this.aNJ, this.aFH.iJ());
    }
    else
    {
      this.aFH.update(this.aNN, 0, this.aNN.length);
    }
    int i = this.aFH.doFinal(paramArrayOfByte, paramInt);
    paramInt = this.aNJ;
    while (paramInt < this.aNN.length)
    {
      this.aNN[paramInt] = 0;
      paramInt += 1;
    }
    if (this.aNK != null)
    {
      ((Memoable)this.aFH).ˊ(this.aNK);
      return i;
    }
    this.aFH.update(this.aNM, 0, this.aNM.length);
    return i;
  }
  
  public String iG()
  {
    return this.aFH.iG() + "/HMAC";
  }
  
  public int iO()
  {
    return this.aNI;
  }
  
  public void reset()
  {
    this.aFH.reset();
    this.aFH.update(this.aNM, 0, this.aNM.length);
  }
  
  public void update(byte paramByte)
  {
    this.aFH.update(paramByte);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aFH.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    this.aFH.reset();
    paramCipherParameters = ((KeyParameter)paramCipherParameters).getKey();
    int i = paramCipherParameters.length;
    if (i > this.aNJ)
    {
      this.aFH.update(paramCipherParameters, 0, i);
      this.aFH.doFinal(this.aNM, 0);
      i = this.aNI;
    }
    else
    {
      System.arraycopy(paramCipherParameters, 0, this.aNM, 0, i);
    }
    while (i < this.aNM.length)
    {
      this.aNM[i] = 0;
      i += 1;
    }
    System.arraycopy(this.aNM, 0, this.aNN, 0, this.aNJ);
    ˋ(this.aNM, this.aNJ, (byte)54);
    ˋ(this.aNN, this.aNJ, (byte)92);
    if ((this.aFH instanceof Memoable))
    {
      this.aNL = ((Memoable)this.aFH).iU();
      ((Digest)this.aNL).update(this.aNN, 0, this.aNJ);
    }
    this.aFH.update(this.aNM, 0, this.aNM.length);
    if ((this.aFH instanceof Memoable)) {
      this.aNK = ((Memoable)this.aFH).iU();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.macs.HMac
 * JD-Core Version:    0.7.0.1
 */