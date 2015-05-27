package org.spongycastle.pqc.crypto.gmss;

import org.spongycastle.crypto.Digest;
import org.spongycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.spongycastle.util.encoders.Hex;

public class GMSSLeaf
{
  private byte[] aDx;
  private int avN;
  private Digest beF;
  private int beG;
  private int beH;
  private byte[] beI;
  private byte[] beJ;
  private int beK;
  private int beL;
  private int beM;
  byte[] beN;
  private GMSSRandom beu;
  private int w;
  
  GMSSLeaf(Digest paramDigest, int paramInt1, int paramInt2)
  {
    this.w = paramInt1;
    this.beF = paramDigest;
    this.beu = new GMSSRandom(this.beF);
    this.beG = this.beF.iJ();
    int i = (int)Math.ceil((this.beG << 3) / paramInt1);
    this.beH = ((int)Math.ceil(ĩ((i << paramInt1) + 1) / paramInt1) + i);
    this.beL = (1 << paramInt1);
    this.beM = ((int)Math.ceil((((1 << paramInt1) - 1) * this.beH + 1 + this.beH) / paramInt2));
    this.aDx = new byte[this.beG];
    this.beI = new byte[this.beG];
    this.beN = new byte[this.beG];
    this.beJ = new byte[this.beG * this.beH];
  }
  
  public GMSSLeaf(Digest paramDigest, int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    this.w = paramInt1;
    this.beF = paramDigest;
    this.beu = new GMSSRandom(this.beF);
    this.beG = this.beF.iJ();
    int i = (int)Math.ceil((this.beG << 3) / paramInt1);
    this.beH = ((int)Math.ceil(ĩ((i << paramInt1) + 1) / paramInt1) + i);
    this.beL = (1 << paramInt1);
    this.beM = ((int)Math.ceil((((1 << paramInt1) - 1) * this.beH + 1 + this.beH) / paramInt2));
    this.aDx = new byte[this.beG];
    this.beI = new byte[this.beG];
    this.beN = new byte[this.beG];
    this.beJ = new byte[this.beG * this.beH];
    ᕽ(paramArrayOfByte);
  }
  
  private int ĩ(int paramInt)
  {
    int i = 1;
    int j = 2;
    while (j < paramInt)
    {
      j <<= 1;
      i += 1;
    }
    return i;
  }
  
  public byte[][] qL()
  {
    byte[][] arrayOfByte = new byte[4][];
    arrayOfByte[0] = new byte[this.beG];
    arrayOfByte[1] = new byte[this.beG];
    arrayOfByte[2] = new byte[this.beG * this.beH];
    arrayOfByte[3] = new byte[this.beG];
    arrayOfByte[0] = this.beN;
    arrayOfByte[1] = this.aDx;
    arrayOfByte[2] = this.beJ;
    arrayOfByte[3] = this.beI;
    return arrayOfByte;
  }
  
  public int[] qM()
  {
    return new int[] { this.beK, this.avN, this.beM, this.w };
  }
  
  public String toString()
  {
    String str = "";
    int i = 0;
    while (i < 4)
    {
      str = str + qM()[i] + " ";
      i += 1;
    }
    str = str + " " + this.beG + " " + this.beH + " " + this.beL + " ";
    byte[][] arrayOfByte = qL();
    i = 0;
    while (i < 4)
    {
      if (arrayOfByte[i] != null) {
        str = str + new String(Hex.ײ(arrayOfByte[i])) + " ";
      } else {
        str = str + "null ";
      }
      i += 1;
    }
    return str;
  }
  
  void ᕽ(byte[] paramArrayOfByte)
  {
    this.beK = 0;
    this.avN = 0;
    byte[] arrayOfByte = new byte[this.beG];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, this.aDx.length);
    this.aDx = this.beu.ᵞ(arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.GMSSLeaf
 * JD-Core Version:    0.7.0.1
 */