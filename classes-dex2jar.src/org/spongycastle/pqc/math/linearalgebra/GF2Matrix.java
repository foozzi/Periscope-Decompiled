package org.spongycastle.pqc.math.linearalgebra;

import java.lang.reflect.Array;
import java.security.SecureRandom;

public class GF2Matrix
  extends Matrix
{
  private int[][] biL;
  private int length;
  
  public GF2Matrix(int paramInt, char paramChar)
  {
    this(paramInt, paramChar, new SecureRandom());
  }
  
  public GF2Matrix(int paramInt, char paramChar, SecureRandom paramSecureRandom)
  {
    if (paramInt <= 0) {
      throw new ArithmeticException("Size of matrix is non-positive.");
    }
    switch (paramChar)
    {
    default: 
      break;
    case 'Z': 
      ᕁ(paramInt, paramInt);
      return;
    case 'I': 
      ב(paramInt);
      return;
    case 'L': 
      ˊ(paramInt, paramSecureRandom);
      return;
    case 'U': 
      ˋ(paramInt, paramSecureRandom);
      return;
    case 'R': 
      ˎ(paramInt, paramSecureRandom);
      return;
    }
    throw new ArithmeticException("Unknown matrix type.");
  }
  
  private GF2Matrix(int paramInt1, int paramInt2)
  {
    if ((paramInt2 <= 0) || (paramInt1 <= 0)) {
      throw new ArithmeticException("size of matrix is non-positive");
    }
    ᕁ(paramInt1, paramInt2);
  }
  
  public GF2Matrix(int paramInt, int[][] paramArrayOfInt)
  {
    if (paramArrayOfInt[0].length != paramInt + 31 >> 5) {
      throw new ArithmeticException("Int array does not match given number of columns.");
    }
    this.numColumns = paramInt;
    this.bjp = paramArrayOfInt.length;
    this.length = paramArrayOfInt[0].length;
    paramInt &= 0x1F;
    if (paramInt == 0) {
      paramInt = -1;
    } else {
      paramInt = (1 << paramInt) - 1;
    }
    int i = 0;
    while (i < this.bjp)
    {
      int[] arrayOfInt = paramArrayOfInt[i];
      int j = this.length - 1;
      arrayOfInt[j] &= paramInt;
      i += 1;
    }
    this.biL = paramArrayOfInt;
  }
  
  public GF2Matrix(GF2Matrix paramGF2Matrix)
  {
    this.numColumns = paramGF2Matrix.getNumColumns();
    this.bjp = paramGF2Matrix.getNumRows();
    this.length = paramGF2Matrix.length;
    this.biL = new int[paramGF2Matrix.biL.length][];
    int i = 0;
    while (i < this.biL.length)
    {
      this.biL[i] = IntUtils.י(paramGF2Matrix.biL[i]);
      i += 1;
    }
  }
  
  private void ˊ(int paramInt, SecureRandom paramSecureRandom)
  {
    this.bjp = paramInt;
    this.numColumns = paramInt;
    this.length = (paramInt + 31 >>> 5);
    paramInt = this.bjp;
    int i = this.length;
    this.biL = ((int[][])Array.newInstance(Integer.TYPE, new int[] { paramInt, i }));
    paramInt = 0;
    while (paramInt < this.bjp)
    {
      int j = paramInt >>> 5;
      int k = paramInt & 0x1F;
      i = 0;
      while (i < j)
      {
        this.biL[paramInt][i] = paramSecureRandom.nextInt();
        i += 1;
      }
      this.biL[paramInt][j] = (paramSecureRandom.nextInt() >>> 31 - k | 1 << k);
      i = j + 1;
      while (i < this.length)
      {
        this.biL[paramInt][i] = 0;
        i += 1;
      }
      paramInt += 1;
    }
  }
  
  private static void ˊ(int[][] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = paramArrayOfInt[paramInt1];
    paramArrayOfInt[paramInt1] = paramArrayOfInt[paramInt2];
    paramArrayOfInt[paramInt2] = arrayOfInt;
  }
  
  private void ˋ(int paramInt, SecureRandom paramSecureRandom)
  {
    this.bjp = paramInt;
    this.numColumns = paramInt;
    this.length = (paramInt + 31 >>> 5);
    int i = this.bjp;
    int j = this.length;
    this.biL = ((int[][])Array.newInstance(Integer.TYPE, new int[] { i, j }));
    paramInt &= 0x1F;
    if (paramInt == 0) {
      paramInt = -1;
    } else {
      paramInt = (1 << paramInt) - 1;
    }
    i = 0;
    while (i < this.bjp)
    {
      int k = i >>> 5;
      int m = i & 0x1F;
      j = 0;
      while (j < k)
      {
        this.biL[i][j] = 0;
        j += 1;
      }
      this.biL[i][k] = (paramSecureRandom.nextInt() << m | 1 << m);
      j = k + 1;
      while (j < this.length)
      {
        this.biL[i][j] = paramSecureRandom.nextInt();
        j += 1;
      }
      int[] arrayOfInt = this.biL[i];
      j = this.length - 1;
      arrayOfInt[j] &= paramInt;
      i += 1;
    }
  }
  
  private void ˎ(int paramInt, SecureRandom paramSecureRandom)
  {
    this.bjp = paramInt;
    this.numColumns = paramInt;
    this.length = (paramInt + 31 >>> 5);
    int i = this.bjp;
    int j = this.length;
    this.biL = ((int[][])Array.newInstance(Integer.TYPE, new int[] { i, j }));
    GF2Matrix localGF2Matrix = (GF2Matrix)new GF2Matrix(paramInt, 'L', paramSecureRandom).ˊ(new GF2Matrix(paramInt, 'U', paramSecureRandom));
    paramSecureRandom = new Permutation(paramInt, paramSecureRandom).sD();
    i = 0;
    while (i < paramInt)
    {
      System.arraycopy(localGF2Matrix.biL[i], 0, this.biL[paramSecureRandom[i]], 0, this.length);
      i += 1;
    }
  }
  
  private static void ˎ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
  {
    int i = paramArrayOfInt2.length - 1;
    while (i >= paramInt)
    {
      paramArrayOfInt1[i] ^= paramArrayOfInt2[i];
      i -= 1;
    }
  }
  
  public static GF2Matrix[] ˏ(int paramInt, SecureRandom paramSecureRandom)
  {
    int m = paramInt + 31 >> 5;
    GF2Matrix localGF2Matrix2 = new GF2Matrix(paramInt, 'L', paramSecureRandom);
    GF2Matrix localGF2Matrix1 = new GF2Matrix(paramInt, 'U', paramSecureRandom);
    GF2Matrix localGF2Matrix3 = (GF2Matrix)localGF2Matrix2.ˊ(localGF2Matrix1);
    paramSecureRandom = new Permutation(paramInt, paramSecureRandom);
    Object localObject1 = paramSecureRandom.sD();
    Object localObject2 = (int[][])Array.newInstance(Integer.TYPE, new int[] { paramInt, m });
    int i = 0;
    while (i < paramInt)
    {
      System.arraycopy(localGF2Matrix3.biL[localObject1[i]], 0, localObject2[i], 0, m);
      i += 1;
    }
    localGF2Matrix3 = new GF2Matrix(paramInt, (int[][])localObject2);
    localObject1 = new GF2Matrix(paramInt, 'I');
    i = 0;
    int j;
    int k;
    while (i < paramInt)
    {
      int n = i >>> 5;
      j = i + 1;
      while (j < paramInt)
      {
        if ((localGF2Matrix2.biL[j][n] & 1 << (i & 0x1F)) != 0)
        {
          k = 0;
          while (k <= n)
          {
            localObject2 = localObject1.biL[j];
            localObject2[k] ^= localObject1.biL[i][k];
            k += 1;
          }
        }
        j += 1;
      }
      i += 1;
    }
    localGF2Matrix2 = new GF2Matrix(paramInt, 'I');
    paramInt -= 1;
    while (paramInt >= 0)
    {
      k = paramInt >>> 5;
      i = paramInt - 1;
      while (i >= 0)
      {
        if ((localGF2Matrix1.biL[i][k] & 1 << (paramInt & 0x1F)) != 0)
        {
          j = k;
          while (j < m)
          {
            localObject2 = localGF2Matrix2.biL[i];
            localObject2[j] ^= localGF2Matrix2.biL[paramInt][j];
            j += 1;
          }
        }
        i -= 1;
      }
      paramInt -= 1;
    }
    return new GF2Matrix[] { localGF2Matrix3, (GF2Matrix)localGF2Matrix2.ˊ(((GF2Matrix)localObject1).ˊ(paramSecureRandom)) };
  }
  
  private void ב(int paramInt)
  {
    this.bjp = paramInt;
    this.numColumns = paramInt;
    this.length = (paramInt + 31 >>> 5);
    paramInt = this.bjp;
    int i = this.length;
    this.biL = ((int[][])Array.newInstance(Integer.TYPE, new int[] { paramInt, i }));
    paramInt = 0;
    while (paramInt < this.bjp)
    {
      i = 0;
      while (i < this.length)
      {
        this.biL[paramInt][i] = 0;
        i += 1;
      }
      paramInt += 1;
    }
    paramInt = 0;
    while (paramInt < this.bjp)
    {
      this.biL[paramInt][(paramInt >>> 5)] = (1 << (paramInt & 0x1F));
      paramInt += 1;
    }
  }
  
  private void ᕁ(int paramInt1, int paramInt2)
  {
    this.bjp = paramInt1;
    this.numColumns = paramInt2;
    this.length = (paramInt2 + 31 >>> 5);
    paramInt1 = this.bjp;
    paramInt2 = this.length;
    this.biL = ((int[][])Array.newInstance(Integer.TYPE, new int[] { paramInt1, paramInt2 }));
    paramInt1 = 0;
    while (paramInt1 < this.bjp)
    {
      paramInt2 = 0;
      while (paramInt2 < this.length)
      {
        this.biL[paramInt1][paramInt2] = 0;
        paramInt2 += 1;
      }
      paramInt1 += 1;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof GF2Matrix)) {
      return false;
    }
    paramObject = (GF2Matrix)paramObject;
    if ((this.bjp != paramObject.bjp) || (this.numColumns != paramObject.numColumns) || (this.length != paramObject.length)) {
      return false;
    }
    int i = 0;
    while (i < this.bjp)
    {
      if (!IntUtils.equals(this.biL[i], paramObject.biL[i])) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public byte[] getEncoded()
  {
    byte[] arrayOfByte = new byte[(this.numColumns + 7 >>> 3) * this.bjp + 8];
    LittleEndianConversions.ι(this.bjp, arrayOfByte, 0);
    LittleEndianConversions.ι(this.numColumns, arrayOfByte, 4);
    int n = this.numColumns >>> 5;
    int i1 = this.numColumns;
    int i = 8;
    int j = 0;
    while (j < this.bjp)
    {
      int k = 0;
      while (k < n)
      {
        LittleEndianConversions.ι(this.biL[j][k], arrayOfByte, i);
        k += 1;
        i += 4;
      }
      k = 0;
      while (k < (i1 & 0x1F))
      {
        int m = i + 1;
        arrayOfByte[i] = ((byte)(this.biL[j][n] >>> k & 0xFF));
        k += 8;
        i = m;
      }
      j += 1;
    }
    return arrayOfByte;
  }
  
  public int hashCode()
  {
    int j = (this.bjp * 31 + this.numColumns) * 31 + this.length;
    int i = 0;
    while (i < this.bjp)
    {
      j = j * 31 + this.biL[i].hashCode();
      i += 1;
    }
    return j;
  }
  
  public GF2Matrix sb()
  {
    if (this.numColumns <= this.bjp) {
      throw new ArithmeticException("empty submatrix");
    }
    int k = this.bjp + 31 >> 5;
    int i = this.bjp;
    int[][] arrayOfInt = (int[][])Array.newInstance(Integer.TYPE, new int[] { i, k });
    int j = (1 << (this.bjp & 0x1F)) - 1;
    i = j;
    if (j == 0) {
      i = -1;
    }
    j = this.bjp - 1;
    while (j >= 0)
    {
      System.arraycopy(this.biL[j], 0, arrayOfInt[j], 0, k);
      int[] arrayOfInt1 = arrayOfInt[j];
      int m = k - 1;
      arrayOfInt1[m] &= i;
      j -= 1;
    }
    return new GF2Matrix(this.bjp, arrayOfInt);
  }
  
  public GF2Matrix sc()
  {
    int i = this.numColumns;
    int j = this.bjp;
    GF2Matrix localGF2Matrix = new GF2Matrix(this.bjp, i + j);
    i = this.bjp - 1 + this.numColumns;
    j = this.bjp - 1;
    while (j >= 0)
    {
      System.arraycopy(this.biL[j], 0, localGF2Matrix.biL[j], 0, this.length);
      int[] arrayOfInt = localGF2Matrix.biL[j];
      int k = i >> 5;
      arrayOfInt[k] |= 1 << (i & 0x1F);
      j -= 1;
      i -= 1;
    }
    return localGF2Matrix;
  }
  
  public GF2Matrix sd()
  {
    if (this.numColumns <= this.bjp) {
      throw new ArithmeticException("empty submatrix");
    }
    int m = this.bjp >> 5;
    int i1 = this.bjp & 0x1F;
    GF2Matrix localGF2Matrix = new GF2Matrix(this.bjp, this.numColumns - this.bjp);
    int j = this.bjp - 1;
    while (j >= 0)
    {
      if (i1 != 0)
      {
        int i = m;
        int k = 0;
        while (k < localGF2Matrix.length - 1)
        {
          arrayOfInt1 = localGF2Matrix.biL[j];
          arrayOfInt2 = this.biL[j];
          n = i + 1;
          arrayOfInt1[k] = (arrayOfInt2[i] >>> i1 | this.biL[j][n] << 32 - i1);
          k += 1;
          i = n;
        }
        int[] arrayOfInt1 = localGF2Matrix.biL[j];
        int n = localGF2Matrix.length;
        int[] arrayOfInt2 = this.biL[j];
        k = i + 1;
        arrayOfInt1[(n - 1)] = (arrayOfInt2[i] >>> i1);
        if (k < this.length)
        {
          arrayOfInt1 = localGF2Matrix.biL[j];
          i = localGF2Matrix.length - 1;
          arrayOfInt1[i] |= this.biL[j][k] << 32 - i1;
        }
      }
      else
      {
        System.arraycopy(this.biL[j], m, localGF2Matrix.biL[j], 0, localGF2Matrix.length);
      }
      j -= 1;
    }
    return localGF2Matrix;
  }
  
  public Matrix se()
  {
    int i = this.numColumns;
    int j = this.bjp;
    int[][] arrayOfInt = (int[][])Array.newInstance(Integer.TYPE, new int[] { i, j + 31 >>> 5 });
    i = 0;
    while (i < this.bjp)
    {
      j = 0;
      while (j < this.numColumns)
      {
        int k = this.biL[i][(j >>> 5)];
        int m = i >>> 5;
        if ((k >>> (j & 0x1F) & 0x1) == 1)
        {
          int[] arrayOfInt1 = arrayOfInt[j];
          arrayOfInt1[m] |= 1 << (i & 0x1F);
        }
        j += 1;
      }
      i += 1;
    }
    return new GF2Matrix(this.bjp, arrayOfInt);
  }
  
  public Matrix sf()
  {
    if (this.bjp != this.numColumns) {
      throw new ArithmeticException("Matrix is not invertible.");
    }
    int i = this.bjp;
    int j = this.length;
    int[][] arrayOfInt1 = (int[][])Array.newInstance(Integer.TYPE, new int[] { i, j });
    i = this.bjp - 1;
    while (i >= 0)
    {
      arrayOfInt1[i] = IntUtils.י(this.biL[i]);
      i -= 1;
    }
    i = this.bjp;
    j = this.length;
    int[][] arrayOfInt2 = (int[][])Array.newInstance(Integer.TYPE, new int[] { i, j });
    i = this.bjp - 1;
    while (i >= 0)
    {
      arrayOfInt2[i][(i >> 5)] = (1 << (i & 0x1F));
      i -= 1;
    }
    j = 0;
    while (j < this.bjp)
    {
      int n = j >> 5;
      int i1 = 1 << (j & 0x1F);
      if ((arrayOfInt1[j][n] & i1) == 0)
      {
        int k = 0;
        int m;
        for (i = j + 1; i < this.bjp; i = m + 1)
        {
          m = i;
          if ((arrayOfInt1[i][n] & i1) != 0)
          {
            k = 1;
            ˊ(arrayOfInt1, j, i);
            ˊ(arrayOfInt2, j, i);
            m = this.bjp;
          }
        }
        if (k == 0) {
          throw new ArithmeticException("Matrix is not invertible.");
        }
      }
      i = this.bjp - 1;
      while (i >= 0)
      {
        if ((i != j) && ((arrayOfInt1[i][n] & i1) != 0))
        {
          ˎ(arrayOfInt1[j], arrayOfInt1[i], n);
          ˎ(arrayOfInt2[j], arrayOfInt2[i], 0);
        }
        i -= 1;
      }
      j += 1;
    }
    return new GF2Matrix(this.numColumns, arrayOfInt2);
  }
  
  public String toString()
  {
    int n = this.numColumns & 0x1F;
    int i;
    if (n == 0) {
      i = this.length;
    } else {
      i = this.length - 1;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    int j = 0;
    while (j < this.bjp)
    {
      localStringBuffer.append(j + ": ");
      int k = 0;
      while (k < i)
      {
        int i1 = this.biL[j][k];
        m = 0;
        while (m < 32)
        {
          if ((i1 >>> m & 0x1) == 0) {
            localStringBuffer.append('0');
          } else {
            localStringBuffer.append('1');
          }
          m += 1;
        }
        localStringBuffer.append(' ');
        k += 1;
      }
      int m = this.biL[j][(this.length - 1)];
      k = 0;
      while (k < n)
      {
        if ((m >>> k & 0x1) == 0) {
          localStringBuffer.append('0');
        } else {
          localStringBuffer.append('1');
        }
        k += 1;
      }
      localStringBuffer.append('\n');
      j += 1;
    }
    return localStringBuffer.toString();
  }
  
  public Matrix ˊ(Matrix paramMatrix)
  {
    if (!(paramMatrix instanceof GF2Matrix)) {
      throw new ArithmeticException("matrix is not defined over GF(2)");
    }
    if (paramMatrix.bjp != this.numColumns) {
      throw new ArithmeticException("length mismatch");
    }
    GF2Matrix localGF2Matrix = (GF2Matrix)paramMatrix;
    paramMatrix = new GF2Matrix(this.bjp, paramMatrix.numColumns);
    int i2 = this.numColumns & 0x1F;
    int j;
    if (i2 == 0) {
      j = this.length;
    } else {
      j = this.length - 1;
    }
    int k = 0;
    while (k < this.bjp)
    {
      int i = 0;
      int m = 0;
      int n;
      int[] arrayOfInt;
      while (m < j)
      {
        int i3 = this.biL[k][m];
        n = 0;
        while (n < 32)
        {
          if ((i3 & 1 << n) != 0)
          {
            i1 = 0;
            while (i1 < localGF2Matrix.length)
            {
              arrayOfInt = paramMatrix.biL[k];
              arrayOfInt[i1] ^= localGF2Matrix.biL[i][i1];
              i1 += 1;
            }
          }
          i += 1;
          n += 1;
        }
        m += 1;
      }
      int i1 = this.biL[k][(this.length - 1)];
      m = 0;
      while (m < i2)
      {
        if ((i1 & 1 << m) != 0)
        {
          n = 0;
          while (n < localGF2Matrix.length)
          {
            arrayOfInt = paramMatrix.biL[k];
            arrayOfInt[n] ^= localGF2Matrix.biL[i][n];
            n += 1;
          }
        }
        i += 1;
        m += 1;
      }
      k += 1;
    }
    return paramMatrix;
  }
  
  public Matrix ˊ(Permutation paramPermutation)
  {
    paramPermutation = paramPermutation.sD();
    if (paramPermutation.length != this.numColumns) {
      throw new ArithmeticException("length mismatch");
    }
    GF2Matrix localGF2Matrix = new GF2Matrix(this.bjp, this.numColumns);
    int i = this.numColumns - 1;
    while (i >= 0)
    {
      int k = i >>> 5;
      int m = paramPermutation[i];
      int n = paramPermutation[i];
      int j = this.bjp - 1;
      while (j >= 0)
      {
        int[] arrayOfInt = localGF2Matrix.biL[j];
        arrayOfInt[k] |= (this.biL[j][(m >>> 5)] >>> (n & 0x1F) & 0x1) << (i & 0x1F);
        j -= 1;
      }
      i -= 1;
    }
    return localGF2Matrix;
  }
  
  public Vector ˊ(Vector paramVector)
  {
    if (!(paramVector instanceof GF2Vector)) {
      throw new ArithmeticException("vector is not defined over GF(2)");
    }
    if (paramVector.length != this.bjp) {
      throw new ArithmeticException("length mismatch");
    }
    paramVector = ((GF2Vector)paramVector).sq();
    int[] arrayOfInt = new int[this.length];
    int i1 = this.bjp >> 5;
    int i2 = this.bjp;
    int i = 0;
    int j = 0;
    int k;
    while (j < i1)
    {
      k = 1;
      int m;
      int n;
      do
      {
        if ((paramVector[j] & k) != 0)
        {
          m = 0;
          while (m < this.length)
          {
            arrayOfInt[m] ^= this.biL[i][m];
            m += 1;
          }
        }
        m = i + 1;
        n = k << 1;
        i = m;
        k = n;
      } while (n != 0);
      j += 1;
      i = m;
    }
    j = 1;
    while (j != 1 << (i2 & 0x1F))
    {
      if ((paramVector[i1] & j) != 0)
      {
        k = 0;
        while (k < this.length)
        {
          arrayOfInt[k] ^= this.biL[i][k];
          k += 1;
        }
      }
      i += 1;
      j <<= 1;
    }
    return new GF2Vector(arrayOfInt, this.numColumns);
  }
  
  public Vector ˋ(Vector paramVector)
  {
    if (!(paramVector instanceof GF2Vector)) {
      throw new ArithmeticException("vector is not defined over GF(2)");
    }
    if (paramVector.length != this.bjp) {
      throw new ArithmeticException("length mismatch");
    }
    paramVector = ((GF2Vector)paramVector).sq();
    int[] arrayOfInt = new int[this.bjp + this.numColumns + 31 >>> 5];
    int i1 = this.bjp >>> 5;
    int i = 0;
    int j = 0;
    int k;
    int n;
    while (j < i1)
    {
      k = 1;
      do
      {
        if ((paramVector[j] & k) != 0)
        {
          m = 0;
          while (m < this.length)
          {
            arrayOfInt[m] ^= this.biL[i][m];
            m += 1;
          }
          m = this.numColumns + i >>> 5;
          n = this.numColumns;
          arrayOfInt[m] |= 1 << (n + i & 0x1F);
        }
        m = i + 1;
        n = k << 1;
        i = m;
        k = n;
      } while (n != 0);
      j += 1;
      i = m;
    }
    int m = this.bjp;
    j = 1;
    while (j != 1 << (m & 0x1F))
    {
      if ((paramVector[i1] & j) != 0)
      {
        k = 0;
        while (k < this.length)
        {
          arrayOfInt[k] ^= this.biL[i][k];
          k += 1;
        }
        k = this.numColumns + i >>> 5;
        n = this.numColumns;
        arrayOfInt[k] |= 1 << (n + i & 0x1F);
      }
      i += 1;
      j <<= 1;
    }
    return new GF2Vector(arrayOfInt, this.bjp + this.numColumns);
  }
  
  public Vector ˎ(Vector paramVector)
  {
    if (!(paramVector instanceof GF2Vector)) {
      throw new ArithmeticException("vector is not defined over GF(2)");
    }
    if (paramVector.length != this.numColumns) {
      throw new ArithmeticException("length mismatch");
    }
    paramVector = ((GF2Vector)paramVector).sq();
    int[] arrayOfInt = new int[this.bjp + 31 >>> 5];
    int i = 0;
    while (i < this.bjp)
    {
      int j = 0;
      int k = 0;
      while (k < this.length)
      {
        j ^= this.biL[i][k] & paramVector[k];
        k += 1;
      }
      int m = 0;
      k = 0;
      while (k < 32)
      {
        m ^= j >>> k & 0x1;
        k += 1;
      }
      if (m == 1)
      {
        j = i >>> 5;
        arrayOfInt[j] |= 1 << (i & 0x1F);
      }
      i += 1;
    }
    return new GF2Vector(arrayOfInt, this.bjp);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.GF2Matrix
 * JD-Core Version:    0.7.0.1
 */