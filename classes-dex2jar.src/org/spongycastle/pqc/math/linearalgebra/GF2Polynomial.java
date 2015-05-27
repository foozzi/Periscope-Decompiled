package org.spongycastle.pqc.math.linearalgebra;

import java.util.Random;

public class GF2Polynomial
{
  private static Random biO = new Random();
  private static final boolean[] biP = { 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0 };
  private static final short[] biQ = { 0, 1, 4, 5, 16, 17, 20, 21, 64, 65, 68, 69, 80, 81, 84, 85, 256, 257, 260, 261, 272, 273, 276, 277, 320, 321, 324, 325, 336, 337, 340, 341, 1024, 1025, 1028, 1029, 1040, 1041, 1044, 1045, 1088, 1089, 1092, 1093, 1104, 1105, 1108, 1109, 1280, 1281, 1284, 1285, 1296, 1297, 1300, 1301, 1344, 1345, 1348, 1349, 1360, 1361, 1364, 1365, 4096, 4097, 4100, 4101, 4112, 4113, 4116, 4117, 4160, 4161, 4164, 4165, 4176, 4177, 4180, 4181, 4352, 4353, 4356, 4357, 4368, 4369, 4372, 4373, 4416, 4417, 4420, 4421, 4432, 4433, 4436, 4437, 5120, 5121, 5124, 5125, 5136, 5137, 5140, 5141, 5184, 5185, 5188, 5189, 5200, 5201, 5204, 5205, 5376, 5377, 5380, 5381, 5392, 5393, 5396, 5397, 5440, 5441, 5444, 5445, 5456, 5457, 5460, 5461, 16384, 16385, 16388, 16389, 16400, 16401, 16404, 16405, 16448, 16449, 16452, 16453, 16464, 16465, 16468, 16469, 16640, 16641, 16644, 16645, 16656, 16657, 16660, 16661, 16704, 16705, 16708, 16709, 16720, 16721, 16724, 16725, 17408, 17409, 17412, 17413, 17424, 17425, 17428, 17429, 17472, 17473, 17476, 17477, 17488, 17489, 17492, 17493, 17664, 17665, 17668, 17669, 17680, 17681, 17684, 17685, 17728, 17729, 17732, 17733, 17744, 17745, 17748, 17749, 20480, 20481, 20484, 20485, 20496, 20497, 20500, 20501, 20544, 20545, 20548, 20549, 20560, 20561, 20564, 20565, 20736, 20737, 20740, 20741, 20752, 20753, 20756, 20757, 20800, 20801, 20804, 20805, 20816, 20817, 20820, 20821, 21504, 21505, 21508, 21509, 21520, 21521, 21524, 21525, 21568, 21569, 21572, 21573, 21584, 21585, 21588, 21589, 21760, 21761, 21764, 21765, 21776, 21777, 21780, 21781, 21824, 21825, 21828, 21829, 21840, 21841, 21844, 21845 };
  private static final int[] biR = { 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824, -2147483648, 0 };
  private static final int[] biS = { 0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535, 131071, 262143, 524287, 1048575, 2097151, 4194303, 8388607, 16777215, 33554431, 67108863, 134217727, 268435455, 536870911, 1073741823, 2147483647, -1 };
  private int biM;
  private int[] biN;
  private int len;
  
  public GF2Polynomial(int paramInt)
  {
    int i = paramInt;
    if (paramInt < 1) {
      i = 1;
    }
    this.biM = ((i - 1 >> 5) + 1);
    this.biN = new int[this.biM];
    this.len = i;
  }
  
  public GF2Polynomial(int paramInt, String paramString)
  {
    int i = paramInt;
    if (paramInt < 1) {
      i = 1;
    }
    this.biM = ((i - 1 >> 5) + 1);
    this.biN = new int[this.biM];
    this.len = i;
    if (paramString.equalsIgnoreCase("ZERO"))
    {
      sj();
      return;
    }
    if (paramString.equalsIgnoreCase("ONE"))
    {
      sg();
      return;
    }
    if (paramString.equalsIgnoreCase("RANDOM"))
    {
      sk();
      return;
    }
    if (paramString.equalsIgnoreCase("X"))
    {
      sh();
      return;
    }
    if (paramString.equalsIgnoreCase("ALL"))
    {
      si();
      return;
    }
    throw new IllegalArgumentException("Error: GF2Polynomial was called using " + paramString + " as value!");
  }
  
  public GF2Polynomial(int paramInt, int[] paramArrayOfInt)
  {
    int i = paramInt;
    if (paramInt < 1) {
      i = 1;
    }
    this.biM = ((i - 1 >> 5) + 1);
    this.biN = new int[this.biM];
    this.len = i;
    paramInt = Math.min(this.biM, paramArrayOfInt.length);
    System.arraycopy(paramArrayOfInt, 0, this.biN, 0, paramInt);
    so();
  }
  
  public GF2Polynomial(GF2Polynomial paramGF2Polynomial)
  {
    this.len = paramGF2Polynomial.len;
    this.biM = paramGF2Polynomial.biM;
    this.biN = IntUtils.י(paramGF2Polynomial.biN);
  }
  
  private void so()
  {
    if ((this.len & 0x1F) != 0)
    {
      int[] arrayOfInt = this.biN;
      int i = this.biM - 1;
      arrayOfInt[i] &= biS[(this.len & 0x1F)];
    }
  }
  
  private void ڗ(int paramInt)
  {
    if (this.biM <= this.biN.length)
    {
      int i = this.biM - 1;
      while (i >= paramInt)
      {
        this.biN[i] = this.biN[(i - paramInt)];
        i -= 1;
      }
      i = 0;
      while (i < paramInt)
      {
        this.biN[i] = 0;
        i += 1;
      }
      return;
    }
    int[] arrayOfInt = new int[this.biM];
    System.arraycopy(this.biN, 0, arrayOfInt, paramInt, this.biM - paramInt);
    this.biN = null;
    this.biN = arrayOfInt;
  }
  
  public Object clone()
  {
    return new GF2Polynomial(this);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof GF2Polynomial))) {
      return false;
    }
    paramObject = (GF2Polynomial)paramObject;
    if (this.len != paramObject.len) {
      return false;
    }
    int i = 0;
    while (i < this.biM)
    {
      if (this.biN[i] != paramObject.biN[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public int hashCode()
  {
    return this.len + this.biN.hashCode();
  }
  
  public boolean isZero()
  {
    if (this.len == 0) {
      return true;
    }
    int i = 0;
    while (i < this.biM)
    {
      if (this.biN[i] != 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public boolean pA()
  {
    int i = 1;
    while (i < this.biM)
    {
      if (this.biN[i] != 0) {
        return false;
      }
      i += 1;
    }
    return this.biN[0] == 1;
  }
  
  public void sg()
  {
    int i = 1;
    while (i < this.biM)
    {
      this.biN[i] = 0;
      i += 1;
    }
    this.biN[0] = 1;
  }
  
  public void sh()
  {
    int i = 1;
    while (i < this.biM)
    {
      this.biN[i] = 0;
      i += 1;
    }
    this.biN[0] = 2;
  }
  
  public void si()
  {
    int i = 0;
    while (i < this.biM)
    {
      this.biN[i] = -1;
      i += 1;
    }
    so();
  }
  
  public void sj()
  {
    int i = 0;
    while (i < this.biM)
    {
      this.biN[i] = 0;
      i += 1;
    }
  }
  
  public void sk()
  {
    int i = 0;
    while (i < this.biM)
    {
      this.biN[i] = biO.nextInt();
      i += 1;
    }
    so();
  }
  
  public boolean sl()
  {
    if (isZero()) {
      return false;
    }
    GF2Polynomial localGF2Polynomial2 = new GF2Polynomial(this);
    localGF2Polynomial2.sm();
    int j = localGF2Polynomial2.len;
    GF2Polynomial localGF2Polynomial1 = new GF2Polynomial(localGF2Polynomial2.len, "X");
    int i = 1;
    while (i <= j - 1 >> 1)
    {
      localGF2Polynomial1.sn();
      localGF2Polynomial1 = localGF2Polynomial1.ˏ(localGF2Polynomial2);
      GF2Polynomial localGF2Polynomial3 = localGF2Polynomial1.ˋ(new GF2Polynomial(32, "X"));
      if (!localGF2Polynomial3.isZero())
      {
        if (!localGF2Polynomial2.ᐝ(localGF2Polynomial3).pA()) {
          return false;
        }
      }
      else {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public void sm()
  {
    int i = this.biM - 1;
    while ((this.biN[i] == 0) && (i > 0)) {
      i -= 1;
    }
    int k = this.biN[i];
    int j = 0;
    while (k != 0)
    {
      k >>>= 1;
      j += 1;
    }
    this.len = ((i << 5) + j);
    this.biM = (i + 1);
  }
  
  public void sn()
  {
    if (isZero()) {
      return;
    }
    if (this.biN.length >= this.biM << 1)
    {
      i = this.biM - 1;
      while (i >= 0)
      {
        this.biN[((i << 1) + 1)] = (biQ[((this.biN[i] & 0xFF0000) >>> 16)] | biQ[((this.biN[i] & 0xFF000000) >>> 24)] << 16);
        this.biN[(i << 1)] = (biQ[(this.biN[i] & 0xFF)] | biQ[((this.biN[i] & 0xFF00) >>> 8)] << 16);
        i -= 1;
      }
      this.biM <<= 1;
      this.len = ((this.len << 1) - 1);
      return;
    }
    int[] arrayOfInt = new int[this.biM << 1];
    int i = 0;
    while (i < this.biM)
    {
      arrayOfInt[(i << 1)] = (biQ[(this.biN[i] & 0xFF)] | biQ[((this.biN[i] & 0xFF00) >>> 8)] << 16);
      arrayOfInt[((i << 1) + 1)] = (biQ[((this.biN[i] & 0xFF0000) >>> 16)] | biQ[((this.biN[i] & 0xFF000000) >>> 24)] << 16);
      i += 1;
    }
    this.biN = null;
    this.biN = arrayOfInt;
    this.biM <<= 1;
    this.len = ((this.len << 1) - 1);
  }
  
  public GF2Polynomial sp()
  {
    GF2Polynomial localGF2Polynomial = new GF2Polynomial(this.len + 1, this.biN);
    int i = localGF2Polynomial.biM - 1;
    while (i >= 1)
    {
      arrayOfInt = localGF2Polynomial.biN;
      arrayOfInt[i] <<= 1;
      arrayOfInt = localGF2Polynomial.biN;
      arrayOfInt[i] |= localGF2Polynomial.biN[(i - 1)] >>> 31;
      i -= 1;
    }
    int[] arrayOfInt = localGF2Polynomial.biN;
    arrayOfInt[0] <<= 1;
    return localGF2Polynomial;
  }
  
  public String toString(int paramInt)
  {
    char[] arrayOfChar = new char[16];
    char[] tmp8_6 = arrayOfChar;
    tmp8_6[0] = 48;
    char[] tmp14_8 = tmp8_6;
    tmp14_8[1] = 49;
    char[] tmp20_14 = tmp14_8;
    tmp20_14[2] = 50;
    char[] tmp26_20 = tmp20_14;
    tmp26_20[3] = 51;
    char[] tmp32_26 = tmp26_20;
    tmp32_26[4] = 52;
    char[] tmp38_32 = tmp32_26;
    tmp38_32[5] = 53;
    char[] tmp44_38 = tmp38_32;
    tmp44_38[6] = 54;
    char[] tmp51_44 = tmp44_38;
    tmp51_44[7] = 55;
    char[] tmp58_51 = tmp51_44;
    tmp58_51[8] = 56;
    char[] tmp65_58 = tmp58_51;
    tmp65_58[9] = 57;
    char[] tmp72_65 = tmp65_58;
    tmp72_65[10] = 97;
    char[] tmp79_72 = tmp72_65;
    tmp79_72[11] = 98;
    char[] tmp86_79 = tmp79_72;
    tmp86_79[12] = 99;
    char[] tmp93_86 = tmp86_79;
    tmp93_86[13] = 100;
    char[] tmp100_93 = tmp93_86;
    tmp100_93[14] = 101;
    char[] tmp107_100 = tmp100_93;
    tmp107_100[15] = 102;
    tmp107_100;
    String[] arrayOfString = new String[16];
    arrayOfString[0] = "0000";
    arrayOfString[1] = "0001";
    arrayOfString[2] = "0010";
    arrayOfString[3] = "0011";
    arrayOfString[4] = "0100";
    arrayOfString[5] = "0101";
    arrayOfString[6] = "0110";
    arrayOfString[7] = "0111";
    arrayOfString[8] = "1000";
    arrayOfString[9] = "1001";
    arrayOfString[10] = "1010";
    arrayOfString[11] = "1011";
    arrayOfString[12] = "1100";
    arrayOfString[13] = "1101";
    arrayOfString[14] = "1110";
    arrayOfString[15] = "1111";
    String str1 = new String();
    String str2;
    if (paramInt == 16)
    {
      paramInt = this.biM - 1;
      for (;;)
      {
        str2 = str1;
        if (paramInt < 0) {
          break;
        }
        str1 = str1 + arrayOfChar[(this.biN[paramInt] >>> 28 & 0xF)];
        str1 = str1 + arrayOfChar[(this.biN[paramInt] >>> 24 & 0xF)];
        str1 = str1 + arrayOfChar[(this.biN[paramInt] >>> 20 & 0xF)];
        str1 = str1 + arrayOfChar[(this.biN[paramInt] >>> 16 & 0xF)];
        str1 = str1 + arrayOfChar[(this.biN[paramInt] >>> 12 & 0xF)];
        str1 = str1 + arrayOfChar[(this.biN[paramInt] >>> 8 & 0xF)];
        str1 = str1 + arrayOfChar[(this.biN[paramInt] >>> 4 & 0xF)];
        str1 = str1 + arrayOfChar[(this.biN[paramInt] & 0xF)];
        str1 = str1 + " ";
        paramInt -= 1;
      }
    }
    paramInt = this.biM - 1;
    for (;;)
    {
      str2 = str1;
      if (paramInt < 0) {
        break;
      }
      str1 = str1 + arrayOfString[(this.biN[paramInt] >>> 28 & 0xF)];
      str1 = str1 + arrayOfString[(this.biN[paramInt] >>> 24 & 0xF)];
      str1 = str1 + arrayOfString[(this.biN[paramInt] >>> 20 & 0xF)];
      str1 = str1 + arrayOfString[(this.biN[paramInt] >>> 16 & 0xF)];
      str1 = str1 + arrayOfString[(this.biN[paramInt] >>> 12 & 0xF)];
      str1 = str1 + arrayOfString[(this.biN[paramInt] >>> 8 & 0xF)];
      str1 = str1 + arrayOfString[(this.biN[paramInt] >>> 4 & 0xF)];
      str1 = str1 + arrayOfString[(this.biN[paramInt] & 0xF)];
      str1 = str1 + " ";
      paramInt -= 1;
    }
    return str2;
  }
  
  public GF2Polynomial ʻ(GF2Polynomial paramGF2Polynomial)
  {
    int j = Math.min(this.biM, paramGF2Polynomial.biM);
    Object localObject;
    if (this.len >= paramGF2Polynomial.len)
    {
      GF2Polynomial localGF2Polynomial = new GF2Polynomial(this);
      i = 0;
      for (;;)
      {
        localObject = localGF2Polynomial;
        if (i >= j) {
          break;
        }
        localObject = localGF2Polynomial.biN;
        localObject[i] ^= paramGF2Polynomial.biN[i];
        i += 1;
      }
    }
    paramGF2Polynomial = new GF2Polynomial(paramGF2Polynomial);
    int i = 0;
    for (;;)
    {
      localObject = paramGF2Polynomial;
      if (i >= j) {
        break;
      }
      localObject = paramGF2Polynomial.biN;
      localObject[i] ^= this.biN[i];
      i += 1;
    }
    ((GF2Polynomial)localObject).so();
    return localObject;
  }
  
  public void ʼ(GF2Polynomial paramGF2Polynomial)
  {
    int i = 0;
    while (i < Math.min(this.biM, paramGF2Polynomial.biM))
    {
      int[] arrayOfInt = this.biN;
      arrayOfInt[i] ^= paramGF2Polynomial.biN[i];
      i += 1;
    }
    so();
  }
  
  public void ˊ(GF2Polynomial paramGF2Polynomial)
  {
    װ(paramGF2Polynomial.len);
    ʼ(paramGF2Polynomial);
  }
  
  public GF2Polynomial ˋ(GF2Polynomial paramGF2Polynomial)
  {
    return ʻ(paramGF2Polynomial);
  }
  
  public void ˎ(GF2Polynomial paramGF2Polynomial)
  {
    װ(paramGF2Polynomial.len);
    ʼ(paramGF2Polynomial);
  }
  
  public GF2Polynomial ˏ(GF2Polynomial paramGF2Polynomial)
  {
    GF2Polynomial localGF2Polynomial = new GF2Polynomial(this);
    paramGF2Polynomial = new GF2Polynomial(paramGF2Polynomial);
    if (paramGF2Polynomial.isZero()) {
      throw new RuntimeException();
    }
    localGF2Polynomial.sm();
    paramGF2Polynomial.sm();
    if (localGF2Polynomial.len < paramGF2Polynomial.len) {
      return localGF2Polynomial;
    }
    for (int i = localGF2Polynomial.len - paramGF2Polynomial.len; i >= 0; i = localGF2Polynomial.len - paramGF2Polynomial.len)
    {
      localGF2Polynomial.ˎ(paramGF2Polynomial.ږ(i));
      localGF2Polynomial.sm();
    }
    return localGF2Polynomial;
  }
  
  public void װ(int paramInt)
  {
    if (this.len >= paramInt) {
      return;
    }
    this.len = paramInt;
    int i = (paramInt - 1 >>> 5) + 1;
    if (this.biM >= i) {
      return;
    }
    if (this.biN.length >= i)
    {
      paramInt = this.biM;
      while (paramInt < i)
      {
        this.biN[paramInt] = 0;
        paramInt += 1;
      }
      this.biM = i;
      return;
    }
    int[] arrayOfInt = new int[i];
    System.arraycopy(this.biN, 0, arrayOfInt, 0, this.biM);
    this.biM = i;
    this.biN = null;
    this.biN = arrayOfInt;
  }
  
  public void ه(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > this.len - 1)) {
      throw new RuntimeException();
    }
    if (paramInt > this.len - 1) {
      return;
    }
    int[] arrayOfInt = this.biN;
    int i = paramInt >>> 5;
    arrayOfInt[i] |= biR[(paramInt & 0x1F)];
  }
  
  public void ډ(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > this.len - 1)) {
      throw new RuntimeException();
    }
    if (paramInt > this.len - 1) {
      return;
    }
    int[] arrayOfInt = this.biN;
    int i = paramInt >>> 5;
    arrayOfInt[i] &= (biR[(paramInt & 0x1F)] ^ 0xFFFFFFFF);
  }
  
  public GF2Polynomial ږ(int paramInt)
  {
    GF2Polynomial localGF2Polynomial = new GF2Polynomial(this.len + paramInt, this.biN);
    if (paramInt >= 32) {
      localGF2Polynomial.ڗ(paramInt >>> 5);
    }
    int i = paramInt & 0x1F;
    if (i != 0)
    {
      paramInt = localGF2Polynomial.biM - 1;
      while (paramInt >= 1)
      {
        arrayOfInt = localGF2Polynomial.biN;
        arrayOfInt[paramInt] <<= i;
        arrayOfInt = localGF2Polynomial.biN;
        arrayOfInt[paramInt] |= localGF2Polynomial.biN[(paramInt - 1)] >>> 32 - i;
        paramInt -= 1;
      }
      int[] arrayOfInt = localGF2Polynomial.biN;
      arrayOfInt[0] <<= i;
    }
    return localGF2Polynomial;
  }
  
  public GF2Polynomial ᐝ(GF2Polynomial paramGF2Polynomial)
  {
    if ((isZero()) && (paramGF2Polynomial.isZero())) {
      throw new ArithmeticException("Both operands of gcd equal zero.");
    }
    if (isZero()) {
      return new GF2Polynomial(paramGF2Polynomial);
    }
    if (paramGF2Polynomial.isZero()) {
      return new GF2Polynomial(this);
    }
    GF2Polynomial localGF2Polynomial1 = new GF2Polynomial(this);
    GF2Polynomial localGF2Polynomial2;
    for (paramGF2Polynomial = new GF2Polynomial(paramGF2Polynomial); !paramGF2Polynomial.isZero(); paramGF2Polynomial = localGF2Polynomial2)
    {
      localGF2Polynomial2 = localGF2Polynomial1.ˏ(paramGF2Polynomial);
      localGF2Polynomial1 = paramGF2Polynomial;
    }
    return localGF2Polynomial1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.GF2Polynomial
 * JD-Core Version:    0.7.0.1
 */