package org.spongycastle.crypto.digests;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.engines.ThreefishEngine;
import org.spongycastle.crypto.params.SkeinParameters;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Memoable;

public class SkeinEngine
  implements Memoable
{
  private static final Hashtable aHr = new Hashtable();
  final ThreefishEngine aHs;
  private final int aHt;
  long[] aHu;
  private long[] aHv;
  private Parameter[] aHw;
  private Parameter[] aHx;
  private final UBI aHy;
  private final byte[] aHz = new byte[1];
  private byte[] key;
  
  static
  {
    ˊ(256, 128, new long[] { -2228972824489528736L, -8629553674646093540L, 1155188648486244218L, -3677226592081559102L });
    ˊ(256, 160, new long[] { 1450197650740764312L, 3081844928540042640L, -3136097061834271170L, 3301952811952417661L });
    ˊ(256, 224, new long[] { -4176654842910610933L, -8688192972455077604L, -7364642305011795836L, 4056579644589979102L });
    ˊ(256, 256, new long[] { -243853671043386295L, 3443677322885453875L, -5531612722399640561L, 7662005193972177513L });
    ˊ(512, 128, new long[] { -6288014694233956526L, 2204638249859346602L, 3502419045458743507L, -4829063503441264548L, 983504137758028059L, 1880512238245786339L, -6715892782214108542L, 7602827311880509485L });
    ˊ(512, 160, new long[] { 2934123928682216849L, -4399710721982728305L, 1684584802963255058L, 5744138295201861711L, 2444857010922934358L, -2807833639722848072L, -5121587834665610502L, 118355523173251694L });
    ˊ(512, 224, new long[] { -3688341020067007964L, -3772225436291745297L, -8300862168937575580L, 4146387520469897396L, 1106145742801415120L, 7455425944880474941L, -7351063101234211863L, -7048981346965512457L });
    ˊ(512, 384, new long[] { -6631894876634615969L, -5692838220127733084L, -7099962856338682626L, -2911352911530754598L, 2000907093792408677L, 9140007292425499655L, 6093301768906360022L, 2769176472213098488L });
    ˊ(512, 512, new long[] { 5261240102383538638L, 978932832955457283L, -8083517948103779378L, -7339365279355032399L, 6752626034097301424L, -1531723821829733388L, -7417126464950782685L, -5901786942805128141L });
  }
  
  public SkeinEngine(int paramInt1, int paramInt2)
  {
    if (paramInt2 % 8 != 0) {
      throw new IllegalArgumentException("Output size must be a multiple of 8 bits. :" + paramInt2);
    }
    this.aHt = (paramInt2 / 8);
    this.aHs = new ThreefishEngine(paramInt1);
    this.aHy = new UBI(this.aHs.getBlockSize());
  }
  
  public SkeinEngine(SkeinEngine paramSkeinEngine)
  {
    this(paramSkeinEngine.getBlockSize() * 8, paramSkeinEngine.jb() * 8);
    ˊ(paramSkeinEngine);
  }
  
  private void jc()
  {
    Object localObject = (long[])aHr.get(ﹴ(getBlockSize(), jb()));
    if ((this.key == null) && (localObject != null))
    {
      this.aHu = Arrays.ʿ((long[])localObject);
    }
    else
    {
      this.aHu = new long[getBlockSize() / 8];
      if (this.key != null) {
        ˎ(0, this.key);
      }
      ˎ(4, new Configuration(this.aHt * 8).getBytes());
    }
    if (this.aHw != null)
    {
      int i = 0;
      while (i < this.aHw.length)
      {
        localObject = this.aHw[i];
        ˎ(((Parameter)localObject).getType(), ((Parameter)localObject).getValue());
        i += 1;
      }
    }
    this.aHv = Arrays.ʿ(this.aHu);
  }
  
  private void jd()
  {
    this.aHy.ʼ(this.aHu);
  }
  
  private void je()
  {
    if (this.aHy == null) {
      throw new IllegalArgumentException("Skein engine is not initialised.");
    }
  }
  
  private static void ˊ(int paramInt1, int paramInt2, long[] paramArrayOfLong)
  {
    aHr.put(ﹴ(paramInt1 / 8, paramInt2 / 8), paramArrayOfLong);
  }
  
  private void ˊ(SkeinEngine paramSkeinEngine)
  {
    this.aHy.ˊ(paramSkeinEngine.aHy);
    this.aHu = Arrays.ᐝ(paramSkeinEngine.aHu, this.aHu);
    this.aHv = Arrays.ᐝ(paramSkeinEngine.aHv, this.aHv);
    this.key = Arrays.ʳ(paramSkeinEngine.key, this.key);
    this.aHw = ˊ(paramSkeinEngine.aHw, this.aHw);
    this.aHx = ˊ(paramSkeinEngine.aHx, this.aHx);
  }
  
  private static void ˊ(Parameter[] paramArrayOfParameter)
  {
    if (paramArrayOfParameter == null) {
      return;
    }
    int i = 1;
    while (i < paramArrayOfParameter.length)
    {
      Parameter localParameter = paramArrayOfParameter[i];
      int j = i;
      while ((j > 0) && (localParameter.getType() < paramArrayOfParameter[(j - 1)].getType()))
      {
        paramArrayOfParameter[j] = paramArrayOfParameter[(j - 1)];
        j -= 1;
      }
      paramArrayOfParameter[j] = localParameter;
      i += 1;
    }
  }
  
  private static Parameter[] ˊ(Parameter[] paramArrayOfParameter1, Parameter[] paramArrayOfParameter2)
  {
    if (paramArrayOfParameter1 == null) {
      return null;
    }
    Parameter[] arrayOfParameter;
    if (paramArrayOfParameter2 != null)
    {
      arrayOfParameter = paramArrayOfParameter2;
      if (paramArrayOfParameter2.length == paramArrayOfParameter1.length) {}
    }
    else
    {
      arrayOfParameter = new Parameter[paramArrayOfParameter1.length];
    }
    System.arraycopy(paramArrayOfParameter1, 0, arrayOfParameter, 0, arrayOfParameter.length);
    return arrayOfParameter;
  }
  
  private void ˋ(long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[8];
    ThreefishEngine.ˏ(paramLong, arrayOfByte, 0);
    long[] arrayOfLong = new long[this.aHu.length];
    ᕻ(63);
    this.aHy.ˊ(arrayOfByte, 0, arrayOfByte.length, arrayOfLong);
    this.aHy.ʼ(arrayOfLong);
    int j = (paramInt2 + 8 - 1) / 8;
    int i = 0;
    while (i < j)
    {
      int k = Math.min(8, paramInt2 - i * 8);
      if (k == 8)
      {
        ThreefishEngine.ˏ(arrayOfLong[i], paramArrayOfByte, i * 8 + paramInt1);
      }
      else
      {
        ThreefishEngine.ˏ(arrayOfLong[i], arrayOfByte, 0);
        System.arraycopy(arrayOfByte, 0, paramArrayOfByte, i * 8 + paramInt1, k);
      }
      i += 1;
    }
  }
  
  private void ˎ(int paramInt, byte[] paramArrayOfByte)
  {
    ᕻ(paramInt);
    this.aHy.ˊ(paramArrayOfByte, 0, paramArrayOfByte.length, this.aHu);
    jd();
  }
  
  private void ᕻ(int paramInt)
  {
    this.aHy.reset(paramInt);
  }
  
  private void ι(Hashtable paramHashtable)
  {
    Enumeration localEnumeration = paramHashtable.keys();
    Vector localVector1 = new Vector();
    Vector localVector2 = new Vector();
    while (localEnumeration.hasMoreElements())
    {
      Integer localInteger = (Integer)localEnumeration.nextElement();
      byte[] arrayOfByte = (byte[])paramHashtable.get(localInteger);
      if (localInteger.intValue() == 0) {
        this.key = arrayOfByte;
      } else if (localInteger.intValue() < 48) {
        localVector1.addElement(new Parameter(localInteger.intValue(), arrayOfByte));
      } else {
        localVector2.addElement(new Parameter(localInteger.intValue(), arrayOfByte));
      }
    }
    this.aHw = new Parameter[localVector1.size()];
    localVector1.copyInto(this.aHw);
    ˊ(this.aHw);
    this.aHx = new Parameter[localVector2.size()];
    localVector2.copyInto(this.aHx);
    ˊ(this.aHx);
  }
  
  private static Integer ﹴ(int paramInt1, int paramInt2)
  {
    return new Integer(paramInt2 << 16 | paramInt1);
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    je();
    if (paramArrayOfByte.length < this.aHt + paramInt) {
      throw new DataLengthException("Output buffer is too short to hold output of " + this.aHt + " bytes");
    }
    jd();
    if (this.aHx != null)
    {
      i = 0;
      while (i < this.aHx.length)
      {
        Parameter localParameter = this.aHx[i];
        ˎ(localParameter.getType(), localParameter.getValue());
        i += 1;
      }
    }
    int j = getBlockSize();
    int k = (this.aHt + j - 1) / j;
    int i = 0;
    while (i < k)
    {
      int m = Math.min(j, this.aHt - i * j);
      ˋ(i, paramArrayOfByte, i * j + paramInt, m);
      i += 1;
    }
    reset();
    return this.aHt;
  }
  
  public int getBlockSize()
  {
    return this.aHs.getBlockSize();
  }
  
  public Memoable iU()
  {
    return new SkeinEngine(this);
  }
  
  public int jb()
  {
    return this.aHt;
  }
  
  public void reset()
  {
    System.arraycopy(this.aHv, 0, this.aHu, 0, this.aHu.length);
    ᕻ(48);
  }
  
  public void update(byte paramByte)
  {
    this.aHz[0] = paramByte;
    update(this.aHz, 0, 1);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    je();
    this.aHy.ˊ(paramArrayOfByte, paramInt1, paramInt2, this.aHu);
  }
  
  public void ˊ(SkeinParameters paramSkeinParameters)
  {
    this.aHu = null;
    this.key = null;
    this.aHw = null;
    this.aHx = null;
    if (paramSkeinParameters != null)
    {
      if (paramSkeinParameters.getKey().length < 16) {
        throw new IllegalArgumentException("Skein key must be at least 128 bits.");
      }
      ι(paramSkeinParameters.lo());
    }
    jc();
    ᕻ(48);
  }
  
  public void ˊ(Memoable paramMemoable)
  {
    paramMemoable = (SkeinEngine)paramMemoable;
    if ((getBlockSize() != paramMemoable.getBlockSize()) || (this.aHt != paramMemoable.aHt)) {
      throw new IllegalArgumentException("Incompatible parameters in provided SkeinEngine.");
    }
    ˊ(paramMemoable);
  }
  
  static class Configuration
  {
    private byte[] bytes = new byte[32];
    
    public Configuration(long paramLong)
    {
      this.bytes[0] = 83;
      this.bytes[1] = 72;
      this.bytes[2] = 65;
      this.bytes[3] = 51;
      this.bytes[4] = 1;
      this.bytes[5] = 0;
      ThreefishEngine.ˏ(paramLong, this.bytes, 8);
    }
    
    public byte[] getBytes()
    {
      return this.bytes;
    }
  }
  
  public static class Parameter
  {
    private byte[] aag;
    private int type;
    
    public Parameter(int paramInt, byte[] paramArrayOfByte)
    {
      this.type = paramInt;
      this.aag = paramArrayOfByte;
    }
    
    public int getType()
    {
      return this.type;
    }
    
    public byte[] getValue()
    {
      return this.aag;
    }
  }
  
  class UBI
  {
    private final SkeinEngine.UbiTweak aHA = new SkeinEngine.UbiTweak();
    private byte[] aHB;
    private int aHC;
    private long[] aHD;
    
    public UBI(int paramInt)
    {
      this.aHB = new byte[paramInt];
      this.aHD = new long[this.aHB.length / 8];
    }
    
    private void ʻ(long[] paramArrayOfLong)
    {
      SkeinEngine.this.aHs.ˊ(true, SkeinEngine.this.aHu, this.aHA.jg());
      int i = 0;
      while (i < this.aHD.length)
      {
        this.aHD[i] = ThreefishEngine.ﾞ(this.aHB, i * 8);
        i += 1;
      }
      SkeinEngine.this.aHs.ˊ(this.aHD, paramArrayOfLong);
      i = 0;
      while (i < paramArrayOfLong.length)
      {
        paramArrayOfLong[i] ^= this.aHD[i];
        i += 1;
      }
    }
    
    public void reset(int paramInt)
    {
      this.aHA.reset();
      this.aHA.setType(paramInt);
      this.aHC = 0;
    }
    
    public void ʼ(long[] paramArrayOfLong)
    {
      int i = this.aHC;
      while (i < this.aHB.length)
      {
        this.aHB[i] = 0;
        i += 1;
      }
      this.aHA.וּ(true);
      ʻ(paramArrayOfLong);
    }
    
    public void ˊ(UBI paramUBI)
    {
      this.aHB = Arrays.ʳ(paramUBI.aHB, this.aHB);
      this.aHC = paramUBI.aHC;
      this.aHD = Arrays.ᐝ(paramUBI.aHD, this.aHD);
      this.aHA.ˊ(paramUBI.aHA);
    }
    
    public void ˊ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, long[] paramArrayOfLong)
    {
      int i = 0;
      while (paramInt2 > i)
      {
        if (this.aHC == this.aHB.length)
        {
          ʻ(paramArrayOfLong);
          this.aHA.ᵧ(false);
          this.aHC = 0;
        }
        int j = Math.min(paramInt2 - i, this.aHB.length - this.aHC);
        System.arraycopy(paramArrayOfByte, paramInt1 + i, this.aHB, this.aHC, j);
        i += j;
        this.aHC += j;
        this.aHA.ᴄ(j);
      }
    }
  }
  
  static class UbiTweak
  {
    private long[] aHF = new long[2];
    private boolean aHG;
    
    public UbiTweak()
    {
      reset();
    }
    
    public int getType()
    {
      return (int)(this.aHF[1] >>> 56 & 0x3F);
    }
    
    public boolean isFirst()
    {
      return (this.aHF[1] & 0x0) != 0L;
    }
    
    public boolean jf()
    {
      return (this.aHF[1] & 0x0) != 0L;
    }
    
    public long[] jg()
    {
      return this.aHF;
    }
    
    public void reset()
    {
      this.aHF[0] = 0L;
      this.aHF[1] = 0L;
      this.aHG = false;
      ᵧ(true);
    }
    
    public void setType(int paramInt)
    {
      this.aHF[1] = (this.aHF[1] & 0x0 | (paramInt & 0x3F) << 56);
    }
    
    public String toString()
    {
      return getType() + " first: " + isFirst() + ", final: " + jf();
    }
    
    public void ˊ(UbiTweak paramUbiTweak)
    {
      this.aHF = Arrays.ᐝ(paramUbiTweak.aHF, this.aHF);
      this.aHG = paramUbiTweak.aHG;
    }
    
    public void ᴄ(int paramInt)
    {
      if (this.aHG)
      {
        long[] arrayOfLong = new long[3];
        arrayOfLong[0] = (this.aHF[0] & 0xFFFFFFFF);
        arrayOfLong[1] = (this.aHF[0] >>> 32 & 0xFFFFFFFF);
        arrayOfLong[2] = (this.aHF[1] & 0xFFFFFFFF);
        l = paramInt;
        paramInt = 0;
        while (paramInt < arrayOfLong.length)
        {
          l += arrayOfLong[paramInt];
          arrayOfLong[paramInt] = l;
          l >>>= 32;
          paramInt += 1;
        }
        this.aHF[0] = ((arrayOfLong[1] & 0xFFFFFFFF) << 32 | arrayOfLong[0] & 0xFFFFFFFF);
        this.aHF[1] = (this.aHF[1] & 0x0 | arrayOfLong[2] & 0xFFFFFFFF);
        return;
      }
      long l = this.aHF[0] + paramInt;
      this.aHF[0] = l;
      if (l > 9223372034707292160L) {
        this.aHG = true;
      }
    }
    
    public void ᵧ(boolean paramBoolean)
    {
      if (paramBoolean)
      {
        arrayOfLong = this.aHF;
        arrayOfLong[1] |= 0x0;
        return;
      }
      long[] arrayOfLong = this.aHF;
      arrayOfLong[1] &= 0xFFFFFFFF;
    }
    
    public void וּ(boolean paramBoolean)
    {
      if (paramBoolean)
      {
        arrayOfLong = this.aHF;
        arrayOfLong[1] |= 0x0;
        return;
      }
      long[] arrayOfLong = this.aHF;
      arrayOfLong[1] &= 0xFFFFFFFF;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.SkeinEngine
 * JD-Core Version:    0.7.0.1
 */