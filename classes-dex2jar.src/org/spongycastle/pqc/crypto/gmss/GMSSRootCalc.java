package org.spongycastle.pqc.crypto.gmss;

import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.Vector;
import org.spongycastle.crypto.Digest;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;
import org.spongycastle.util.encoders.Hex;

public class GMSSRootCalc
{
  private int[] beQ;
  private GMSSDigestProvider bey;
  private int bez;
  private int bfm;
  private Treehash[] bfn;
  private Vector[] bfo;
  private byte[] bfp;
  private byte[][] bfq;
  private int bfr;
  private Vector bfs;
  private Vector bft;
  private Digest bfu;
  private boolean bfv;
  private boolean bfw;
  private int bfx;
  private int bfy;
  
  public GMSSRootCalc(int paramInt1, int paramInt2, GMSSDigestProvider paramGMSSDigestProvider)
  {
    this.bfm = paramInt1;
    this.bey = paramGMSSDigestProvider;
    this.bfu = paramGMSSDigestProvider.qH();
    this.bez = this.bfu.iJ();
    this.bfr = paramInt2;
    this.beQ = new int[paramInt1];
    int i = this.bez;
    this.bfq = ((byte[][])Array.newInstance(Byte.TYPE, new int[] { paramInt1, i }));
    this.bfp = new byte[this.bez];
    this.bfo = new Vector[this.bfr - 1];
    paramInt1 = 0;
    while (paramInt1 < paramInt2 - 1)
    {
      this.bfo[paramInt1] = new Vector();
      paramInt1 += 1;
    }
  }
  
  public byte[][] qL()
  {
    int i;
    if (this.bfs == null) {
      i = 0;
    } else {
      i = this.bfs.size();
    }
    int j = this.bfm;
    byte[][] arrayOfByte = (byte[][])Array.newInstance(Byte.TYPE, new int[] { j + 1 + i, 64 });
    arrayOfByte[0] = this.bfp;
    j = 0;
    while (j < this.bfm)
    {
      arrayOfByte[(j + 1)] = this.bfq[j];
      j += 1;
    }
    j = 0;
    while (j < i)
    {
      arrayOfByte[(this.bfm + 1 + j)] = ((byte[])(byte[])this.bfs.elementAt(j));
      j += 1;
    }
    return arrayOfByte;
  }
  
  public int[] qM()
  {
    int i;
    if (this.bfs == null) {
      i = 0;
    } else {
      i = this.bfs.size();
    }
    int[] arrayOfInt = new int[this.bfm + 8 + i];
    arrayOfInt[0] = this.bfm;
    arrayOfInt[1] = this.bez;
    arrayOfInt[2] = this.bfr;
    arrayOfInt[3] = this.bfx;
    arrayOfInt[4] = this.bfy;
    if (this.bfw) {
      arrayOfInt[5] = 1;
    } else {
      arrayOfInt[5] = 0;
    }
    if (this.bfv) {
      arrayOfInt[6] = 1;
    } else {
      arrayOfInt[6] = 0;
    }
    arrayOfInt[7] = i;
    int j = 0;
    while (j < this.bfm)
    {
      arrayOfInt[(j + 8)] = this.beQ[j];
      j += 1;
    }
    j = 0;
    while (j < i)
    {
      arrayOfInt[(this.bfm + 8 + j)] = ((Integer)this.bft.elementAt(j)).intValue();
      j += 1;
    }
    return arrayOfInt;
  }
  
  public boolean qX()
  {
    return this.bfw;
  }
  
  public byte[][] qY()
  {
    return GMSSUtils.ˊ(this.bfq);
  }
  
  public Treehash[] qZ()
  {
    return GMSSUtils.ˊ(this.bfn);
  }
  
  public Vector[] ra()
  {
    return GMSSUtils.ˊ(this.bfo);
  }
  
  public byte[] rb()
  {
    return Arrays.І(this.bfp);
  }
  
  public String toString()
  {
    String str = "";
    int i;
    if (this.bfs == null) {
      i = 0;
    } else {
      i = this.bfs.size();
    }
    int j = 0;
    while (j < this.bfm + 8 + i)
    {
      str = str + qM()[j] + " ";
      j += 1;
    }
    j = 0;
    while (j < this.bfm + 1 + i)
    {
      str = str + new String(Hex.ײ(qL()[j])) + " ";
      j += 1;
    }
    return str + "  " + this.bey.qH().iJ();
  }
  
  public void update(byte[] paramArrayOfByte)
  {
    if (this.bfw)
    {
      System.out.print("Too much updates for Tree!!");
      return;
    }
    if (!this.bfv)
    {
      System.err.println("GMSSRootCalc not initialized!");
      return;
    }
    Object localObject = this.beQ;
    localObject[0] += 1;
    if (this.beQ[0] == 1) {
      System.arraycopy(paramArrayOfByte, 0, this.bfq[0], 0, this.bez);
    } else if ((this.beQ[0] == 3) && (this.bfm > this.bfr)) {
      this.bfn[0].ᵄ(paramArrayOfByte);
    }
    if (((this.beQ[0] - 3) % 2 == 0) && (this.beQ[0] >= 3) && (this.bfm == this.bfr)) {
      this.bfo[0].insertElementAt(paramArrayOfByte, 0);
    }
    if (this.beQ[0] == 0)
    {
      this.bfs.addElement(paramArrayOfByte);
      this.bft.addElement(Integers.valueOf(0));
      return;
    }
    localObject = new byte[this.bez];
    byte[] arrayOfByte = new byte[this.bez << 1];
    System.arraycopy(paramArrayOfByte, 0, localObject, 0, this.bez);
    int i = 0;
    paramArrayOfByte = (byte[])localObject;
    while ((this.bfs.size() > 0) && (i == ((Integer)this.bft.lastElement()).intValue()))
    {
      System.arraycopy(this.bfs.lastElement(), 0, arrayOfByte, 0, this.bez);
      this.bfs.removeElementAt(this.bfs.size() - 1);
      this.bft.removeElementAt(this.bft.size() - 1);
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, this.bez, this.bez);
      this.bfu.update(arrayOfByte, 0, arrayOfByte.length);
      localObject = new byte[this.bfu.iJ()];
      this.bfu.doFinal((byte[])localObject, 0);
      int j = i + 1;
      paramArrayOfByte = (byte[])localObject;
      i = j;
      if (j < this.bfm)
      {
        paramArrayOfByte = this.beQ;
        paramArrayOfByte[j] += 1;
        if (this.beQ[j] == 1) {
          System.arraycopy(localObject, 0, this.bfq[j], 0, this.bez);
        }
        if (j >= this.bfm - this.bfr)
        {
          if (j == 0) {
            System.out.println("M���P");
          }
          paramArrayOfByte = (byte[])localObject;
          i = j;
          if ((this.beQ[j] - 3) % 2 == 0)
          {
            paramArrayOfByte = (byte[])localObject;
            i = j;
            if (this.beQ[j] >= 3)
            {
              this.bfo[(j - (this.bfm - this.bfr))].insertElementAt(localObject, 0);
              paramArrayOfByte = (byte[])localObject;
              i = j;
            }
          }
        }
        else
        {
          paramArrayOfByte = (byte[])localObject;
          i = j;
          if (this.beQ[j] == 3)
          {
            this.bfn[j].ᵄ((byte[])localObject);
            paramArrayOfByte = (byte[])localObject;
            i = j;
          }
        }
      }
    }
    this.bfs.addElement(paramArrayOfByte);
    this.bft.addElement(Integers.valueOf(i));
    if (i == this.bfm)
    {
      this.bfw = true;
      this.bfv = false;
      this.bfp = ((byte[])this.bfs.lastElement());
    }
  }
  
  public void ʼ(Vector paramVector)
  {
    this.bfn = new Treehash[this.bfm - this.bfr];
    int i = 0;
    while (i < this.bfm - this.bfr)
    {
      this.bfn[i] = new Treehash(paramVector, i, this.bey.qH());
      i += 1;
    }
    this.beQ = new int[this.bfm];
    i = this.bfm;
    int j = this.bez;
    this.bfq = ((byte[][])Array.newInstance(Byte.TYPE, new int[] { i, j }));
    this.bfp = new byte[this.bez];
    this.bfs = new Vector();
    this.bft = new Vector();
    this.bfv = true;
    this.bfw = false;
    i = 0;
    while (i < this.bfm)
    {
      this.beQ[i] = -1;
      i += 1;
    }
    this.bfo = new Vector[this.bfr - 1];
    i = 0;
    while (i < this.bfr - 1)
    {
      this.bfo[i] = new Vector();
      i += 1;
    }
    this.bfx = 3;
    this.bfy = 0;
  }
  
  public void ۥ(byte[] paramArrayOfByte, int paramInt)
  {
    this.bfn[paramInt].ᘁ(paramArrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.GMSSRootCalc
 * JD-Core Version:    0.7.0.1
 */