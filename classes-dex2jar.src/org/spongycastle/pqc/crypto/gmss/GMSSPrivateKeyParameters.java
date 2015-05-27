package org.spongycastle.pqc.crypto.gmss;

import java.lang.reflect.Array;
import java.util.Vector;
import org.spongycastle.crypto.Digest;
import org.spongycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.spongycastle.util.Arrays;

public class GMSSPrivateKeyParameters
  extends GMSSKeyParameters
{
  private int[] aGN;
  private int beA;
  private GMSSParameters beB;
  private int[] beC;
  private int[] beD;
  private int[] beQ;
  private byte[][][] beR;
  private byte[][][] beS;
  private Treehash[][] beT;
  private Treehash[][] beU;
  private Vector[] beV;
  private Vector[] beW;
  private Vector[][] beX;
  private Vector[][] beY;
  private byte[][][] beZ;
  private GMSSRandom beu;
  private byte[][] bev;
  private byte[][] bew;
  private GMSSDigestProvider bey;
  private int bez;
  private GMSSLeaf[] bfa;
  private GMSSLeaf[] bfb;
  private GMSSLeaf[] bfc;
  private int[] bfd;
  private byte[][] bfe;
  private GMSSRootCalc[] bff;
  private byte[][] bfg;
  private GMSSRootSig[] bfh;
  private boolean bfi = false;
  private Digest bfj;
  private int[] bfk;
  
  public GMSSPrivateKeyParameters(int[] paramArrayOfInt1, byte[][] paramArrayOfByte1, byte[][] paramArrayOfByte2, byte[][][] paramArrayOfByte3, byte[][][] paramArrayOfByte4, byte[][][] paramArrayOfByte5, Treehash[][] paramArrayOfTreehash1, Treehash[][] paramArrayOfTreehash2, Vector[] paramArrayOfVector1, Vector[] paramArrayOfVector2, Vector[][] paramArrayOfVector3, Vector[][] paramArrayOfVector4, GMSSLeaf[] paramArrayOfGMSSLeaf1, GMSSLeaf[] paramArrayOfGMSSLeaf2, GMSSLeaf[] paramArrayOfGMSSLeaf3, int[] paramArrayOfInt2, byte[][] paramArrayOfByte6, GMSSRootCalc[] paramArrayOfGMSSRootCalc, byte[][] paramArrayOfByte7, GMSSRootSig[] paramArrayOfGMSSRootSig, GMSSParameters paramGMSSParameters, GMSSDigestProvider paramGMSSDigestProvider)
  {
    super(true, paramGMSSParameters);
    this.bfj = paramGMSSDigestProvider.qH();
    this.bez = this.bfj.iJ();
    this.beB = paramGMSSParameters;
    this.beD = paramGMSSParameters.qP();
    this.aGN = paramGMSSParameters.qQ();
    this.beC = paramGMSSParameters.qO();
    this.beA = this.beB.qN();
    if (paramArrayOfInt1 == null)
    {
      this.beQ = new int[this.beA];
      i = 0;
      while (i < this.beA)
      {
        this.beQ[i] = 0;
        i += 1;
      }
    }
    else
    {
      this.beQ = paramArrayOfInt1;
    }
    this.bev = paramArrayOfByte1;
    this.bew = paramArrayOfByte2;
    this.beR = paramArrayOfByte3;
    this.beS = paramArrayOfByte4;
    if (paramArrayOfByte5 == null)
    {
      this.beZ = new byte[this.beA][][];
      i = 0;
      while (i < this.beA)
      {
        paramArrayOfInt1 = this.beZ;
        int j = (int)Math.floor(this.beC[i] / 2);
        int k = this.bez;
        paramArrayOfInt1[i] = ((byte[][])Array.newInstance(Byte.TYPE, new int[] { j, k }));
        i += 1;
      }
    }
    else
    {
      this.beZ = paramArrayOfByte5;
    }
    if (paramArrayOfVector1 == null)
    {
      this.beV = new Vector[this.beA];
      i = 0;
      while (i < this.beA)
      {
        this.beV[i] = new Vector();
        i += 1;
      }
    }
    else
    {
      this.beV = paramArrayOfVector1;
    }
    if (paramArrayOfVector2 == null)
    {
      this.beW = new Vector[this.beA - 1];
      i = 0;
      while (i < this.beA - 1)
      {
        this.beW[i] = new Vector();
        i += 1;
      }
    }
    else
    {
      this.beW = paramArrayOfVector2;
    }
    this.beT = paramArrayOfTreehash1;
    this.beU = paramArrayOfTreehash2;
    this.beX = paramArrayOfVector3;
    this.beY = paramArrayOfVector4;
    this.bfe = paramArrayOfByte6;
    this.bey = paramGMSSDigestProvider;
    if (paramArrayOfGMSSRootCalc == null)
    {
      this.bff = new GMSSRootCalc[this.beA - 1];
      i = 0;
      while (i < this.beA - 1)
      {
        this.bff[i] = new GMSSRootCalc(this.beC[(i + 1)], this.aGN[(i + 1)], this.bey);
        i += 1;
      }
    }
    else
    {
      this.bff = paramArrayOfGMSSRootCalc;
    }
    this.bfg = paramArrayOfByte7;
    this.bfk = new int[this.beA];
    int i = 0;
    while (i < this.beA)
    {
      this.bfk[i] = (1 << this.beC[i]);
      i += 1;
    }
    this.beu = new GMSSRandom(this.bfj);
    if (this.beA > 1)
    {
      if (paramArrayOfGMSSLeaf1 == null)
      {
        this.bfa = new GMSSLeaf[this.beA - 2];
        i = 0;
        while (i < this.beA - 2)
        {
          this.bfa[i] = new GMSSLeaf(paramGMSSDigestProvider.qH(), this.beD[(i + 1)], this.bfk[(i + 2)], this.bew[i]);
          i += 1;
        }
      }
      else
      {
        this.bfa = paramArrayOfGMSSLeaf1;
      }
    }
    else {
      this.bfa = new GMSSLeaf[0];
    }
    if (paramArrayOfGMSSLeaf2 == null)
    {
      this.bfb = new GMSSLeaf[this.beA - 1];
      i = 0;
      while (i < this.beA - 1)
      {
        this.bfb[i] = new GMSSLeaf(paramGMSSDigestProvider.qH(), this.beD[i], this.bfk[(i + 1)], this.bev[i]);
        i += 1;
      }
    }
    else
    {
      this.bfb = paramArrayOfGMSSLeaf2;
    }
    if (paramArrayOfGMSSLeaf3 == null)
    {
      this.bfc = new GMSSLeaf[this.beA - 1];
      i = 0;
      while (i < this.beA - 1)
      {
        this.bfc[i] = new GMSSLeaf(paramGMSSDigestProvider.qH(), this.beD[i], this.bfk[(i + 1)]);
        i += 1;
      }
    }
    else
    {
      this.bfc = paramArrayOfGMSSLeaf3;
    }
    if (paramArrayOfInt2 == null)
    {
      this.bfd = new int[this.beA - 1];
      i = 0;
      while (i < this.beA - 1)
      {
        this.bfd[i] = -1;
        i += 1;
      }
    }
    else
    {
      this.bfd = paramArrayOfInt2;
    }
    paramArrayOfInt1 = new byte[this.bez];
    paramArrayOfByte2 = new byte[this.bez];
    if (paramArrayOfGMSSRootSig == null)
    {
      this.bfh = new GMSSRootSig[this.beA - 1];
      i = 0;
      while (i < this.beA - 1)
      {
        System.arraycopy(paramArrayOfByte1[i], 0, paramArrayOfInt1, 0, this.bez);
        this.beu.ᵞ(paramArrayOfInt1);
        paramArrayOfByte2 = this.beu.ᵞ(paramArrayOfInt1);
        this.bfh[i] = new GMSSRootSig(paramGMSSDigestProvider.qH(), this.beD[i], this.beC[(i + 1)]);
        this.bfh[i].ᵎ(paramArrayOfByte2, paramArrayOfByte6[i]);
        i += 1;
      }
      return;
    }
    this.bfh = paramArrayOfGMSSRootSig;
  }
  
  public GMSSPrivateKeyParameters(byte[][] paramArrayOfByte1, byte[][] paramArrayOfByte2, byte[][][] paramArrayOfByte3, byte[][][] paramArrayOfByte4, Treehash[][] paramArrayOfTreehash1, Treehash[][] paramArrayOfTreehash2, Vector[] paramArrayOfVector1, Vector[] paramArrayOfVector2, Vector[][] paramArrayOfVector3, Vector[][] paramArrayOfVector4, byte[][] paramArrayOfByte5, byte[][] paramArrayOfByte6, GMSSParameters paramGMSSParameters, GMSSDigestProvider paramGMSSDigestProvider)
  {
    this(null, paramArrayOfByte1, paramArrayOfByte2, paramArrayOfByte3, paramArrayOfByte4, null, paramArrayOfTreehash1, paramArrayOfTreehash2, paramArrayOfVector1, paramArrayOfVector2, paramArrayOfVector3, paramArrayOfVector4, null, null, null, null, paramArrayOfByte5, null, paramArrayOfByte6, null, paramGMSSParameters, paramGMSSDigestProvider);
  }
  
  public int getIndex(int paramInt)
  {
    return this.beQ[paramInt];
  }
  
  public boolean qR()
  {
    return this.bfi;
  }
  
  public void qS()
  {
    this.bfi = true;
  }
  
  public int[] qT()
  {
    return this.beQ;
  }
  
  public byte[][] qU()
  {
    return Arrays.ˊ(this.bev);
  }
  
  public byte[][][] qV()
  {
    return Arrays.ˋ(this.beR);
  }
  
  public byte[] ɽ(int paramInt)
  {
    return this.bfg[paramInt];
  }
  
  public int ʃ(int paramInt)
  {
    return this.bfk[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.GMSSPrivateKeyParameters
 * JD-Core Version:    0.7.0.1
 */