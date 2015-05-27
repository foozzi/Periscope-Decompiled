package org.spongycastle.crypto.engines;

import org.spongycastle.util.Pack;

public class XSalsa20Engine
  extends Salsa20Engine
{
  public String iG()
  {
    return "XSalsa20";
  }
  
  protected int jF()
  {
    return 24;
  }
  
  protected void ˏ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1 == null) {
      throw new IllegalArgumentException(iG() + " doesn't support re-init with null key");
    }
    if (paramArrayOfByte1.length != 32) {
      throw new IllegalArgumentException(iG() + " requires a 256 bit key");
    }
    super.ˏ(paramArrayOfByte1, paramArrayOfByte2);
    this.aKI[8] = Pack.ᐟ(paramArrayOfByte2, 8);
    this.aKI[9] = Pack.ᐟ(paramArrayOfByte2, 12);
    paramArrayOfByte1 = new int[this.aKI.length];
    ˋ(20, this.aKI, paramArrayOfByte1);
    this.aKI[1] = (paramArrayOfByte1[0] - this.aKI[0]);
    this.aKI[2] = (paramArrayOfByte1[5] - this.aKI[5]);
    this.aKI[3] = (paramArrayOfByte1[10] - this.aKI[10]);
    this.aKI[4] = (paramArrayOfByte1[15] - this.aKI[15]);
    this.aKI[11] = (paramArrayOfByte1[6] - this.aKI[6]);
    this.aKI[12] = (paramArrayOfByte1[7] - this.aKI[7]);
    this.aKI[13] = (paramArrayOfByte1[8] - this.aKI[8]);
    this.aKI[14] = (paramArrayOfByte1[9] - this.aKI[9]);
    this.aKI[6] = Pack.ᐟ(paramArrayOfByte2, 16);
    this.aKI[7] = Pack.ᐟ(paramArrayOfByte2, 20);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.XSalsa20Engine
 * JD-Core Version:    0.7.0.1
 */