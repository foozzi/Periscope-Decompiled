package org.spongycastle.pqc.crypto.rainbow;

public class RainbowPrivateKeyParameters
  extends RainbowKeyParameters
{
  private Layer[] bem;
  private short[][] bhU;
  private short[] bhV;
  private short[][] bhX;
  private short[] bhY;
  private int[] bhZ;
  
  public RainbowPrivateKeyParameters(short[][] paramArrayOfShort1, short[] paramArrayOfShort2, short[][] paramArrayOfShort3, short[] paramArrayOfShort4, int[] paramArrayOfInt, Layer[] paramArrayOfLayer)
  {
    super(true, paramArrayOfInt[(paramArrayOfInt.length - 1)] - paramArrayOfInt[0]);
    this.bhU = paramArrayOfShort1;
    this.bhV = paramArrayOfShort2;
    this.bhX = paramArrayOfShort3;
    this.bhY = paramArrayOfShort4;
    this.bhZ = paramArrayOfInt;
    this.bem = paramArrayOfLayer;
  }
  
  public short[][] qA()
  {
    return this.bhX;
  }
  
  public Layer[] qB()
  {
    return this.bem;
  }
  
  public int[] qC()
  {
    return this.bhZ;
  }
  
  public short[][] qx()
  {
    return this.bhU;
  }
  
  public short[] qy()
  {
    return this.bhV;
  }
  
  public short[] qz()
  {
    return this.bhY;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.rainbow.RainbowPrivateKeyParameters
 * JD-Core Version:    0.7.0.1
 */