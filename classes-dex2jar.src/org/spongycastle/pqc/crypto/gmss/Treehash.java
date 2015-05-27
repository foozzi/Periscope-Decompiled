package org.spongycastle.pqc.crypto.gmss;

import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.Vector;
import org.spongycastle.crypto.Digest;
import org.spongycastle.util.encoders.Hex;

public class Treehash
{
  private byte[] bfM;
  private byte[] bfN;
  private byte[] bfO;
  private int bfP;
  private int bfQ;
  private boolean bfR;
  private Vector bfs;
  private Vector bft;
  private Digest bfu;
  private boolean bfv;
  private boolean bfw;
  private int maxHeight;
  
  public Treehash(Vector paramVector, int paramInt, Digest paramDigest)
  {
    this.bfs = paramVector;
    this.maxHeight = paramInt;
    this.bfM = null;
    this.bfv = false;
    this.bfw = false;
    this.bfR = false;
    this.bfu = paramDigest;
    this.bfO = new byte[this.bfu.iJ()];
    this.bfN = new byte[this.bfu.iJ()];
  }
  
  public void initialize()
  {
    if (!this.bfR)
    {
      System.err.println("Seed " + this.maxHeight + " not initialized");
      return;
    }
    this.bft = new Vector();
    this.bfP = 0;
    this.bfM = null;
    this.bfQ = -1;
    this.bfv = true;
    System.arraycopy(this.bfO, 0, this.bfN, 0, this.bfu.iJ());
  }
  
  public byte[][] qL()
  {
    int i = this.bfP;
    int j = this.bfu.iJ();
    byte[][] arrayOfByte = (byte[][])Array.newInstance(Byte.TYPE, new int[] { i + 3, j });
    arrayOfByte[0] = this.bfM;
    arrayOfByte[1] = this.bfN;
    arrayOfByte[2] = this.bfO;
    i = 0;
    while (i < this.bfP)
    {
      arrayOfByte[(i + 3)] = ((byte[])(byte[])this.bfs.elementAt(i));
      i += 1;
    }
    return arrayOfByte;
  }
  
  public int[] qM()
  {
    int[] arrayOfInt = new int[this.bfP + 6];
    arrayOfInt[0] = this.maxHeight;
    arrayOfInt[1] = this.bfP;
    arrayOfInt[2] = this.bfQ;
    if (this.bfw) {
      arrayOfInt[3] = 1;
    } else {
      arrayOfInt[3] = 0;
    }
    if (this.bfv) {
      arrayOfInt[4] = 1;
    } else {
      arrayOfInt[4] = 0;
    }
    if (this.bfR) {
      arrayOfInt[5] = 1;
    } else {
      arrayOfInt[5] = 0;
    }
    int i = 0;
    while (i < this.bfP)
    {
      arrayOfInt[(i + 6)] = ((Integer)this.bft.elementAt(i)).intValue();
      i += 1;
    }
    return arrayOfInt;
  }
  
  public String toString()
  {
    String str = "Treehash    : ";
    int i = 0;
    while (i < this.bfP + 6)
    {
      str = str + qM()[i] + " ";
      i += 1;
    }
    i = 0;
    while (i < this.bfP + 3)
    {
      if (qL()[i] != null) {
        str = str + new String(Hex.ײ(qL()[i])) + " ";
      } else {
        str = str + "null ";
      }
      i += 1;
    }
    return str + "  " + this.bfu.iJ();
  }
  
  public void ᘁ(byte[] paramArrayOfByte)
  {
    System.arraycopy(paramArrayOfByte, 0, this.bfO, 0, this.bfu.iJ());
    this.bfR = true;
  }
  
  public void ᵄ(byte[] paramArrayOfByte)
  {
    if (!this.bfv) {
      initialize();
    }
    this.bfM = paramArrayOfByte;
    this.bfQ = this.maxHeight;
    this.bfw = true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.Treehash
 * JD-Core Version:    0.7.0.1
 */