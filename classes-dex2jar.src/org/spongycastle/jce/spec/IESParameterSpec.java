package org.spongycastle.jce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.util.Arrays;

public class IESParameterSpec
  implements AlgorithmParameterSpec
{
  private byte[] aQn;
  private byte[] aQo;
  private int aQp;
  private int aQq;
  private byte[] aeu;
  
  public IESParameterSpec(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    this(paramArrayOfByte1, paramArrayOfByte2, paramInt, -1);
  }
  
  public IESParameterSpec(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2)
  {
    this(paramArrayOfByte1, paramArrayOfByte2, paramInt1, paramInt2, null);
  }
  
  public IESParameterSpec(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, byte[] paramArrayOfByte3)
  {
    if (paramArrayOfByte1 != null)
    {
      this.aQn = new byte[paramArrayOfByte1.length];
      System.arraycopy(paramArrayOfByte1, 0, this.aQn, 0, paramArrayOfByte1.length);
    }
    else
    {
      this.aQn = null;
    }
    if (paramArrayOfByte2 != null)
    {
      this.aQo = new byte[paramArrayOfByte2.length];
      System.arraycopy(paramArrayOfByte2, 0, this.aQo, 0, paramArrayOfByte2.length);
    }
    else
    {
      this.aQo = null;
    }
    this.aQp = paramInt1;
    this.aQq = paramInt2;
    this.aeu = Arrays.І(paramArrayOfByte3);
  }
  
  public byte[] fn()
  {
    return Arrays.І(this.aeu);
  }
  
  public byte[] kN()
  {
    return Arrays.І(this.aQn);
  }
  
  public byte[] kO()
  {
    return Arrays.І(this.aQo);
  }
  
  public int kP()
  {
    return this.aQp;
  }
  
  public int kQ()
  {
    return this.aQq;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.IESParameterSpec
 * JD-Core Version:    0.7.0.1
 */