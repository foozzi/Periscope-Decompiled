package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.util.Memoable;
import org.spongycastle.util.Pack;

public abstract class LongDigest
  implements ExtendedDigest, Memoable, EncodableDigest
{
  static final long[] aGu = { 4794697086780616226L, 8158064640168781261L, -5349999486874862801L, -1606136188198331460L, 4131703408338449720L, 6480981068601479193L, -7908458776815382629L, -6116909921290321640L, -2880145864133508542L, 1334009975649890238L, 2608012711638119052L, 6128411473006802146L, 8268148722764581231L, -9160688886553864527L, -7215885187991268811L, -4495734319001033068L, -1973867731355612462L, -1171420211273849373L, 1135362057144423861L, 2597628984639134821L, 3308224258029322869L, 5365058923640841347L, 6679025012923562964L, 8573033837759648693L, -7476448914759557205L, -6327057829258317296L, -5763719355590565569L, -4658551843659510044L, -4116276920077217854L, -3051310485924567259L, 489312712824947311L, 1452737877330783856L, 2861767655752347644L, 3322285676063803686L, 5560940570517711597L, 5996557281743188959L, 7280758554555802590L, 8532644243296465576L, -9096487096722542874L, -7894198246740708037L, -6719396339535248540L, -6333637450476146687L, -4446306890439682159L, -4076793802049405392L, -3345356375505022440L, -2983346525034927856L, -860691631967231958L, 1182934255886127544L, 1847814050463011016L, 2177327727835720531L, 2830643537854262169L, 3796741975233480872L, 4115178125766777443L, 5681478168544905931L, 6601373596472566643L, 7507060721942968483L, 8399075790359081724L, 8693463985226723168L, -8878714635349349518L, -8302665154208450068L, -8016688836872298968L, -6606660893046293015L, -4685533653050689259L, -4147400797238176981L, -3880063495543823972L, -3348786107499101689L, -1523767162380948706L, -757361751448694408L, 500013540394364858L, 748580250866718886L, 1242879168328830382L, 1977374033974150939L, 2944078676154940804L, 3659926193048069267L, 4368137639120453308L, 4836135668995329356L, 5532061633213252278L, 6448918945643986474L, 6902733635092675308L, 7801388544844847127L };
  private byte[] aFW = new byte[8];
  private int aFX;
  private long aGi;
  private long aGj;
  protected long aGk;
  protected long aGl;
  protected long aGm;
  protected long aGn;
  protected long aGo;
  protected long aGp;
  protected long aGq;
  protected long aGr;
  private long[] aGs = new long[80];
  private int aGt;
  
  protected LongDigest()
  {
    this.aFX = 0;
    reset();
  }
  
  protected LongDigest(LongDigest paramLongDigest)
  {
    ˊ(paramLongDigest);
  }
  
  private void iW()
  {
    if (this.aGi > 2305843009213693951L)
    {
      this.aGj += (this.aGi >>> 61);
      this.aGi &= 0xFFFFFFFF;
    }
  }
  
  private long ˋ(long paramLong1, long paramLong2, long paramLong3)
  {
    return paramLong1 & paramLong2 ^ (0xFFFFFFFF ^ paramLong1) & paramLong3;
  }
  
  private long ˎ(long paramLong1, long paramLong2, long paramLong3)
  {
    return paramLong1 & paramLong2 ^ paramLong1 & paramLong3 ^ paramLong2 & paramLong3;
  }
  
  private long เ(long paramLong)
  {
    return (paramLong << 36 | paramLong >>> 28) ^ (paramLong << 30 | paramLong >>> 34) ^ (paramLong << 25 | paramLong >>> 39);
  }
  
  private long Ꭵ(long paramLong)
  {
    return (paramLong << 50 | paramLong >>> 14) ^ (paramLong << 46 | paramLong >>> 18) ^ (paramLong << 23 | paramLong >>> 41);
  }
  
  private long ᐤ(long paramLong)
  {
    return (paramLong << 63 | paramLong >>> 1) ^ (paramLong << 56 | paramLong >>> 8) ^ paramLong >>> 7;
  }
  
  private long ᒡ(long paramLong)
  {
    return (paramLong << 45 | paramLong >>> 19) ^ (paramLong << 3 | paramLong >>> 61) ^ paramLong >>> 6;
  }
  
  public void finish()
  {
    iW();
    long l1 = this.aGi;
    long l2 = this.aGj;
    update((byte)-128);
    while (this.aFX != 0) {
      update((byte)0);
    }
    ʻ(l1 << 3, l2);
    iV();
  }
  
  public int iM()
  {
    return 128;
  }
  
  protected void iV()
  {
    iW();
    int i = 16;
    while (i <= 79)
    {
      this.aGs[i] = (ᒡ(this.aGs[(i - 2)]) + this.aGs[(i - 7)] + ᐤ(this.aGs[(i - 15)]) + this.aGs[(i - 16)]);
      i += 1;
    }
    long l1 = this.aGk;
    long l3 = this.aGl;
    long l5 = this.aGm;
    long l7 = this.aGn;
    long l2 = this.aGo;
    long l4 = this.aGp;
    long l6 = this.aGq;
    long l8 = this.aGr;
    int j = 0;
    i = 0;
    while (i < 10)
    {
      long l9 = Ꭵ(l2);
      long l10 = ˋ(l2, l4, l6);
      long l11 = aGu[j];
      long[] arrayOfLong = this.aGs;
      int k = j + 1;
      l8 += l9 + l10 + l11 + arrayOfLong[j];
      l7 += l8;
      l8 += เ(l1) + ˎ(l1, l3, l5);
      l9 = Ꭵ(l7);
      l10 = ˋ(l7, l2, l4);
      l11 = aGu[k];
      arrayOfLong = this.aGs;
      j = k + 1;
      l6 += l9 + l10 + l11 + arrayOfLong[k];
      l5 += l6;
      l6 += เ(l8) + ˎ(l8, l1, l3);
      l9 = Ꭵ(l5);
      l10 = ˋ(l5, l7, l2);
      l11 = aGu[j];
      arrayOfLong = this.aGs;
      k = j + 1;
      l4 += l9 + l10 + l11 + arrayOfLong[j];
      l3 += l4;
      l4 += เ(l6) + ˎ(l6, l8, l1);
      l9 = Ꭵ(l3);
      l10 = ˋ(l3, l5, l7);
      l11 = aGu[k];
      arrayOfLong = this.aGs;
      j = k + 1;
      l2 += l9 + l10 + l11 + arrayOfLong[k];
      l1 += l2;
      l2 += เ(l4) + ˎ(l4, l6, l8);
      l9 = Ꭵ(l1);
      l10 = ˋ(l1, l3, l5);
      l11 = aGu[j];
      arrayOfLong = this.aGs;
      k = j + 1;
      l7 += l9 + l10 + l11 + arrayOfLong[j];
      l8 += l7;
      l7 += เ(l2) + ˎ(l2, l4, l6);
      l9 = Ꭵ(l8);
      l10 = ˋ(l8, l1, l3);
      l11 = aGu[k];
      arrayOfLong = this.aGs;
      j = k + 1;
      l5 += l9 + l10 + l11 + arrayOfLong[k];
      l6 += l5;
      l5 += เ(l7) + ˎ(l7, l2, l4);
      l9 = Ꭵ(l6);
      l10 = ˋ(l6, l8, l1);
      l11 = aGu[j];
      arrayOfLong = this.aGs;
      k = j + 1;
      l3 += l9 + l10 + l11 + arrayOfLong[j];
      l4 += l3;
      l3 += เ(l5) + ˎ(l5, l7, l2);
      l9 = Ꭵ(l4);
      l10 = ˋ(l4, l6, l8);
      l11 = aGu[k];
      arrayOfLong = this.aGs;
      j = k + 1;
      l1 += l9 + l10 + l11 + arrayOfLong[k];
      l2 += l1;
      l1 += เ(l3) + ˎ(l3, l5, l7);
      i += 1;
    }
    this.aGk += l1;
    this.aGl += l3;
    this.aGm += l5;
    this.aGn += l7;
    this.aGo += l2;
    this.aGp += l4;
    this.aGq += l6;
    this.aGr += l8;
    this.aGt = 0;
    i = 0;
    while (i < 16)
    {
      this.aGs[i] = 0L;
      i += 1;
    }
  }
  
  public void reset()
  {
    this.aGi = 0L;
    this.aGj = 0L;
    this.aFX = 0;
    int i = 0;
    while (i < this.aFW.length)
    {
      this.aFW[i] = 0;
      i += 1;
    }
    this.aGt = 0;
    i = 0;
    while (i != this.aGs.length)
    {
      this.aGs[i] = 0L;
      i += 1;
    }
  }
  
  public void update(byte paramByte)
  {
    byte[] arrayOfByte = this.aFW;
    int i = this.aFX;
    this.aFX = (i + 1);
    arrayOfByte[i] = paramByte;
    if (this.aFX == this.aFW.length)
    {
      ι(this.aFW, 0);
      this.aFX = 0;
    }
    this.aGi += 1L;
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    int j = paramInt1;
    for (;;)
    {
      paramInt1 = j;
      paramInt2 = i;
      if (this.aFX == 0) {
        break;
      }
      paramInt1 = j;
      paramInt2 = i;
      if (i <= 0) {
        break;
      }
      update(paramArrayOfByte[j]);
      j += 1;
      i -= 1;
    }
    for (;;)
    {
      i = paramInt1;
      j = paramInt2;
      if (paramInt2 <= this.aFW.length) {
        break;
      }
      ι(paramArrayOfByte, paramInt1);
      paramInt1 += this.aFW.length;
      paramInt2 -= this.aFW.length;
      this.aGi += this.aFW.length;
    }
    while (j > 0)
    {
      update(paramArrayOfByte[i]);
      i += 1;
      j -= 1;
    }
  }
  
  protected void ʻ(long paramLong1, long paramLong2)
  {
    if (this.aGt > 14) {
      iV();
    }
    this.aGs[14] = paramLong2;
    this.aGs[15] = paramLong1;
  }
  
  protected void ˊ(LongDigest paramLongDigest)
  {
    System.arraycopy(paramLongDigest.aFW, 0, this.aFW, 0, paramLongDigest.aFW.length);
    this.aFX = paramLongDigest.aFX;
    this.aGi = paramLongDigest.aGi;
    this.aGj = paramLongDigest.aGj;
    this.aGk = paramLongDigest.aGk;
    this.aGl = paramLongDigest.aGl;
    this.aGm = paramLongDigest.aGm;
    this.aGn = paramLongDigest.aGn;
    this.aGo = paramLongDigest.aGo;
    this.aGp = paramLongDigest.aGp;
    this.aGq = paramLongDigest.aGq;
    this.aGr = paramLongDigest.aGr;
    System.arraycopy(paramLongDigest.aGs, 0, this.aGs, 0, paramLongDigest.aGs.length);
    this.aGt = paramLongDigest.aGt;
  }
  
  protected void ι(byte[] paramArrayOfByte, int paramInt)
  {
    this.aGs[this.aGt] = Pack.יּ(paramArrayOfByte, paramInt);
    paramInt = this.aGt + 1;
    this.aGt = paramInt;
    if (paramInt == 16) {
      iV();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.LongDigest
 * JD-Core Version:    0.7.0.1
 */