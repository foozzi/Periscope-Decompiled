package org.spongycastle.pqc.math.linearalgebra;

public class GF2nONBElement
  extends GF2nElement
{
  private static final long[] bja = { 1L, 2L, 4L, 8L, 16L, 32L, 64L, 128L, 256L, 512L, 1024L, 2048L, 4096L, 8192L, 16384L, 32768L, 65536L, 131072L, 262144L, 524288L, 1048576L, 2097152L, 4194304L, 8388608L, 16777216L, 33554432L, 67108864L, 134217728L, 268435456L, 536870912L, 1073741824L, 2147483648L, 4294967296L, 8589934592L, 17179869184L, 34359738368L, 68719476736L, 137438953472L, 274877906944L, 549755813888L, 1099511627776L, 2199023255552L, 4398046511104L, 8796093022208L, 17592186044416L, 35184372088832L, 70368744177664L, 140737488355328L, 281474976710656L, 562949953421312L, 1125899906842624L, 2251799813685248L, 4503599627370496L, 9007199254740992L, 18014398509481984L, 36028797018963968L, 72057594037927936L, 144115188075855872L, 288230376151711744L, 576460752303423488L, 1152921504606846976L, 2305843009213693952L, 4611686018427387904L, -9223372036854775808L };
  private static final long[] bjb = { 1L, 3L, 7L, 15L, 31L, 63L, 127L, 255L, 511L, 1023L, 2047L, 4095L, 8191L, 16383L, 32767L, 65535L, 131071L, 262143L, 524287L, 1048575L, 2097151L, 4194303L, 8388607L, 16777215L, 33554431L, 67108863L, 134217727L, 268435455L, 536870911L, 1073741823L, 2147483647L, 4294967295L, 8589934591L, 17179869183L, 34359738367L, 68719476735L, 137438953471L, 274877906943L, 549755813887L, 1099511627775L, 2199023255551L, 4398046511103L, 8796093022207L, 17592186044415L, 35184372088831L, 70368744177663L, 140737488355327L, 281474976710655L, 562949953421311L, 1125899906842623L, 2251799813685247L, 4503599627370495L, 9007199254740991L, 18014398509481983L, 36028797018963967L, 72057594037927935L, 144115188075855871L, 288230376151711743L, 576460752303423487L, 1152921504606846975L, 2305843009213693951L, 4611686018427387903L, 9223372036854775807L, -1L };
  private static final int[] bjc = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 };
  private int bjd;
  private long[] bje;
  private int mLength;
  
  public GF2nONBElement(GF2nONBElement paramGF2nONBElement)
  {
    this.biX = paramGF2nONBElement.biX;
    this.biY = this.biX.qs();
    this.mLength = ((GF2nONBField)this.biX).sw();
    this.bjd = ((GF2nONBField)this.biX).sx();
    this.bje = new long[this.mLength];
    ʾ(paramGF2nONBElement.sv());
  }
  
  private long[] sv()
  {
    long[] arrayOfLong = new long[this.bje.length];
    System.arraycopy(this.bje, 0, arrayOfLong, 0, this.bje.length);
    return arrayOfLong;
  }
  
  private void ʾ(long[] paramArrayOfLong)
  {
    System.arraycopy(paramArrayOfLong, 0, this.bje, 0, this.mLength);
  }
  
  public Object clone()
  {
    return new GF2nONBElement(this);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof GF2nONBElement))) {
      return false;
    }
    paramObject = (GF2nONBElement)paramObject;
    int i = 0;
    while (i < this.mLength)
    {
      if (this.bje[i] != paramObject.bje[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public int hashCode()
  {
    return this.bje.hashCode();
  }
  
  public boolean isZero()
  {
    boolean bool = true;
    int i = 0;
    while ((i < this.mLength) && (bool))
    {
      if ((bool) && ((this.bje[i] & 0xFFFFFFFF) == 0L)) {
        bool = true;
      } else {
        bool = false;
      }
      i += 1;
    }
    return bool;
  }
  
  public String toString()
  {
    return toString(16);
  }
  
  public String toString(int paramInt)
  {
    String str1 = "";
    long[] arrayOfLong = sv();
    int i = this.bjd;
    if (paramInt == 2)
    {
      paramInt = i - 1;
      while (paramInt >= 0)
      {
        if ((arrayOfLong[(arrayOfLong.length - 1)] & 1L << paramInt) == 0L) {
          str1 = str1 + "0";
        } else {
          str1 = str1 + "1";
        }
        paramInt -= 1;
      }
      paramInt = arrayOfLong.length - 2;
      while (paramInt >= 0)
      {
        i = 63;
        while (i >= 0)
        {
          if ((arrayOfLong[paramInt] & bja[i]) == 0L) {
            str1 = str1 + "0";
          } else {
            str1 = str1 + "1";
          }
          i -= 1;
        }
        paramInt -= 1;
      }
      return str1;
    }
    String str2 = str1;
    if (paramInt == 16)
    {
      char[] arrayOfChar = new char[16];
      char[] tmp207_205 = arrayOfChar;
      tmp207_205[0] = 48;
      char[] tmp213_207 = tmp207_205;
      tmp213_207[1] = 49;
      char[] tmp219_213 = tmp213_207;
      tmp219_213[2] = 50;
      char[] tmp225_219 = tmp219_213;
      tmp225_219[3] = 51;
      char[] tmp231_225 = tmp225_219;
      tmp231_225[4] = 52;
      char[] tmp237_231 = tmp231_225;
      tmp237_231[5] = 53;
      char[] tmp243_237 = tmp237_231;
      tmp243_237[6] = 54;
      char[] tmp250_243 = tmp243_237;
      tmp250_243[7] = 55;
      char[] tmp257_250 = tmp250_243;
      tmp257_250[8] = 56;
      char[] tmp264_257 = tmp257_250;
      tmp264_257[9] = 57;
      char[] tmp271_264 = tmp264_257;
      tmp271_264[10] = 97;
      char[] tmp278_271 = tmp271_264;
      tmp278_271[11] = 98;
      char[] tmp285_278 = tmp278_271;
      tmp285_278[12] = 99;
      char[] tmp292_285 = tmp285_278;
      tmp292_285[13] = 100;
      char[] tmp299_292 = tmp292_285;
      tmp299_292[14] = 101;
      char[] tmp306_299 = tmp299_292;
      tmp306_299[15] = 102;
      tmp306_299;
      paramInt = arrayOfLong.length - 1;
      for (;;)
      {
        str2 = str1;
        if (paramInt < 0) {
          break;
        }
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 60) & 0xF)];
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 56) & 0xF)];
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 52) & 0xF)];
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 48) & 0xF)];
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 44) & 0xF)];
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 40) & 0xF)];
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 36) & 0xF)];
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 32) & 0xF)];
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 28) & 0xF)];
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 24) & 0xF)];
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 20) & 0xF)];
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 16) & 0xF)];
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 12) & 0xF)];
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 8) & 0xF)];
        str1 = str1 + arrayOfChar[((int)(arrayOfLong[paramInt] >>> 4) & 0xF)];
        str1 = str1 + arrayOfChar[((int)arrayOfLong[paramInt] & 0xF)];
        str1 = str1 + " ";
        paramInt -= 1;
      }
    }
    return str2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.GF2nONBElement
 * JD-Core Version:    0.7.0.1
 */