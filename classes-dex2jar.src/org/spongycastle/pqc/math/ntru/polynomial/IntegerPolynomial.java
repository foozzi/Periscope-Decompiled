package org.spongycastle.pqc.math.ntru.polynomial;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import org.spongycastle.pqc.math.ntru.euclid.BigIntEuclidean;
import org.spongycastle.pqc.math.ntru.util.ArrayEncoder;
import org.spongycastle.pqc.math.ntru.util.Util;
import org.spongycastle.util.Arrays;

public class IntegerPolynomial
  implements Polynomial
{
  private static final int[] bjE = { 4507, 4513, 4517, 4519, 4523, 4547, 4549, 4561, 4567, 4583, 4591, 4597, 4603, 4621, 4637, 4639, 4643, 4649, 4651, 4657, 4663, 4673, 4679, 4691, 4703, 4721, 4723, 4729, 4733, 4751, 4759, 4783, 4787, 4789, 4793, 4799, 4801, 4813, 4817, 4831, 4861, 4871, 4877, 4889, 4903, 4909, 4919, 4931, 4933, 4937, 4943, 4951, 4957, 4967, 4969, 4973, 4987, 4993, 4999, 5003, 5009, 5011, 5021, 5023, 5039, 5051, 5059, 5077, 5081, 5087, 5099, 5101, 5107, 5113, 5119, 5147, 5153, 5167, 5171, 5179, 5189, 5197, 5209, 5227, 5231, 5233, 5237, 5261, 5273, 5279, 5281, 5297, 5303, 5309, 5323, 5333, 5347, 5351, 5381, 5387, 5393, 5399, 5407, 5413, 5417, 5419, 5431, 5437, 5441, 5443, 5449, 5471, 5477, 5479, 5483, 5501, 5503, 5507, 5519, 5521, 5527, 5531, 5557, 5563, 5569, 5573, 5581, 5591, 5623, 5639, 5641, 5647, 5651, 5653, 5657, 5659, 5669, 5683, 5689, 5693, 5701, 5711, 5717, 5737, 5741, 5743, 5749, 5779, 5783, 5791, 5801, 5807, 5813, 5821, 5827, 5839, 5843, 5849, 5851, 5857, 5861, 5867, 5869, 5879, 5881, 5897, 5903, 5923, 5927, 5939, 5953, 5981, 5987, 6007, 6011, 6029, 6037, 6043, 6047, 6053, 6067, 6073, 6079, 6089, 6091, 6101, 6113, 6121, 6131, 6133, 6143, 6151, 6163, 6173, 6197, 6199, 6203, 6211, 6217, 6221, 6229, 6247, 6257, 6263, 6269, 6271, 6277, 6287, 6299, 6301, 6311, 6317, 6323, 6329, 6337, 6343, 6353, 6359, 6361, 6367, 6373, 6379, 6389, 6397, 6421, 6427, 6449, 6451, 6469, 6473, 6481, 6491, 6521, 6529, 6547, 6551, 6553, 6563, 6569, 6571, 6577, 6581, 6599, 6607, 6619, 6637, 6653, 6659, 6661, 6673, 6679, 6689, 6691, 6701, 6703, 6709, 6719, 6733, 6737, 6761, 6763, 6779, 6781, 6791, 6793, 6803, 6823, 6827, 6829, 6833, 6841, 6857, 6863, 6869, 6871, 6883, 6899, 6907, 6911, 6917, 6947, 6949, 6959, 6961, 6967, 6971, 6977, 6983, 6991, 6997, 7001, 7013, 7019, 7027, 7039, 7043, 7057, 7069, 7079, 7103, 7109, 7121, 7127, 7129, 7151, 7159, 7177, 7187, 7193, 7207, 7211, 7213, 7219, 7229, 7237, 7243, 7247, 7253, 7283, 7297, 7307, 7309, 7321, 7331, 7333, 7349, 7351, 7369, 7393, 7411, 7417, 7433, 7451, 7457, 7459, 7477, 7481, 7487, 7489, 7499, 7507, 7517, 7523, 7529, 7537, 7541, 7547, 7549, 7559, 7561, 7573, 7577, 7583, 7589, 7591, 7603, 7607, 7621, 7639, 7643, 7649, 7669, 7673, 7681, 7687, 7691, 7699, 7703, 7717, 7723, 7727, 7741, 7753, 7757, 7759, 7789, 7793, 7817, 7823, 7829, 7841, 7853, 7867, 7873, 7877, 7879, 7883, 7901, 7907, 7919, 7927, 7933, 7937, 7949, 7951, 7963, 7993, 8009, 8011, 8017, 8039, 8053, 8059, 8069, 8081, 8087, 8089, 8093, 8101, 8111, 8117, 8123, 8147, 8161, 8167, 8171, 8179, 8191, 8209, 8219, 8221, 8231, 8233, 8237, 8243, 8263, 8269, 8273, 8287, 8291, 8293, 8297, 8311, 8317, 8329, 8353, 8363, 8369, 8377, 8387, 8389, 8419, 8423, 8429, 8431, 8443, 8447, 8461, 8467, 8501, 8513, 8521, 8527, 8537, 8539, 8543, 8563, 8573, 8581, 8597, 8599, 8609, 8623, 8627, 8629, 8641, 8647, 8663, 8669, 8677, 8681, 8689, 8693, 8699, 8707, 8713, 8719, 8731, 8737, 8741, 8747, 8753, 8761, 8779, 8783, 8803, 8807, 8819, 8821, 8831, 8837, 8839, 8849, 8861, 8863, 8867, 8887, 8893, 8923, 8929, 8933, 8941, 8951, 8963, 8969, 8971, 8999, 9001, 9007, 9011, 9013, 9029, 9041, 9043, 9049, 9059, 9067, 9091, 9103, 9109, 9127, 9133, 9137, 9151, 9157, 9161, 9173, 9181, 9187, 9199, 9203, 9209, 9221, 9227, 9239, 9241, 9257, 9277, 9281, 9283, 9293, 9311, 9319, 9323, 9337, 9341, 9343, 9349, 9371, 9377, 9391, 9397, 9403, 9413, 9419, 9421, 9431, 9433, 9437, 9439, 9461, 9463, 9467, 9473, 9479, 9491, 9497, 9511, 9521, 9533, 9539, 9547, 9551, 9587, 9601, 9613, 9619, 9623, 9629, 9631, 9643, 9649, 9661, 9677, 9679, 9689, 9697, 9719, 9721, 9733, 9739, 9743, 9749, 9767, 9769, 9781, 9787, 9791, 9803, 9811, 9817, 9829, 9833, 9839, 9851, 9857, 9859, 9871, 9883, 9887, 9901, 9907, 9923, 9929, 9931, 9941, 9949, 9967, 9973 };
  private static final List bjF = new ArrayList();
  public int[] bjG;
  
  static
  {
    int i = 0;
    while (i != bjE.length)
    {
      bjF.add(BigInteger.valueOf(bjE[i]));
      i += 1;
    }
  }
  
  public IntegerPolynomial(int paramInt)
  {
    this.bjG = new int[paramInt];
  }
  
  public IntegerPolynomial(BigIntPolynomial paramBigIntPolynomial)
  {
    this.bjG = new int[paramBigIntPolynomial.bjA.length];
    int i = 0;
    while (i < paramBigIntPolynomial.bjA.length)
    {
      this.bjG[i] = paramBigIntPolynomial.bjA[i].intValue();
      i += 1;
    }
  }
  
  public IntegerPolynomial(int[] paramArrayOfInt)
  {
    this.bjG = paramArrayOfInt;
  }
  
  private boolean sW()
  {
    int i = 0;
    while (i < this.bjG.length)
    {
      if (this.bjG[i] != 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private boolean sY()
  {
    int i = 1;
    while (i < this.bjG.length)
    {
      if (this.bjG[i] != 0) {
        return false;
      }
      i += 1;
    }
    return Math.abs(this.bjG[0]) == 1;
  }
  
  private void sort(int[] paramArrayOfInt)
  {
    int i = 1;
    while (i != 0)
    {
      i = 0;
      int j = 0;
      while (j != paramArrayOfInt.length - 1)
      {
        if (paramArrayOfInt[j] > paramArrayOfInt[(j + 1)])
        {
          i = paramArrayOfInt[j];
          paramArrayOfInt[j] = paramArrayOfInt[(j + 1)];
          paramArrayOfInt[(j + 1)] = i;
          i = 1;
        }
        j += 1;
      }
    }
  }
  
  private void ˊ(IntegerPolynomial paramIntegerPolynomial, int paramInt1, int paramInt2, int paramInt3)
  {
    int j = this.bjG.length;
    int i = paramInt2;
    while (i < j)
    {
      this.bjG[i] = ((this.bjG[i] - paramIntegerPolynomial.bjG[(i - paramInt2)] * paramInt1) % paramInt3);
      i += 1;
    }
  }
  
  private IntegerPolynomial ˋ(IntegerPolynomial paramIntegerPolynomial)
  {
    Object localObject2 = this.bjG;
    Object localObject1 = paramIntegerPolynomial.bjG;
    int k = paramIntegerPolynomial.bjG.length;
    if (k <= 32)
    {
      int m = k * 2 - 1;
      paramIntegerPolynomial = new IntegerPolynomial(new int[m]);
      i = 0;
      while (i < m)
      {
        j = Math.max(0, i - k + 1);
        while (j <= Math.min(i, k - 1))
        {
          localObject3 = paramIntegerPolynomial.bjG;
          localObject3[i] += localObject1[j] * localObject2[(i - j)];
          j += 1;
        }
        i += 1;
      }
      return paramIntegerPolynomial;
    }
    int j = k / 2;
    paramIntegerPolynomial = new IntegerPolynomial(Arrays.copyOf((int[])localObject2, j));
    localObject2 = new IntegerPolynomial(Arrays.copyOfRange((int[])localObject2, j, k));
    IntegerPolynomial localIntegerPolynomial1 = new IntegerPolynomial(Arrays.copyOf((int[])localObject1, j));
    IntegerPolynomial localIntegerPolynomial2 = new IntegerPolynomial(Arrays.copyOfRange((int[])localObject1, j, k));
    localObject1 = (IntegerPolynomial)paramIntegerPolynomial.clone();
    ((IntegerPolynomial)localObject1).ˎ((IntegerPolynomial)localObject2);
    Object localObject3 = (IntegerPolynomial)localIntegerPolynomial1.clone();
    ((IntegerPolynomial)localObject3).ˎ(localIntegerPolynomial2);
    paramIntegerPolynomial = paramIntegerPolynomial.ˋ(localIntegerPolynomial1);
    localObject2 = ((IntegerPolynomial)localObject2).ˋ(localIntegerPolynomial2);
    localObject3 = ((IntegerPolynomial)localObject1).ˋ((IntegerPolynomial)localObject3);
    ((IntegerPolynomial)localObject3).ˏ(paramIntegerPolynomial);
    ((IntegerPolynomial)localObject3).ˏ((IntegerPolynomial)localObject2);
    localObject1 = new IntegerPolynomial(k * 2 - 1);
    int i = 0;
    while (i < paramIntegerPolynomial.bjG.length)
    {
      ((IntegerPolynomial)localObject1).bjG[i] = paramIntegerPolynomial.bjG[i];
      i += 1;
    }
    i = 0;
    while (i < ((IntegerPolynomial)localObject3).bjG.length)
    {
      paramIntegerPolynomial = ((IntegerPolynomial)localObject1).bjG;
      k = j + i;
      paramIntegerPolynomial[k] += localObject3.bjG[i];
      i += 1;
    }
    i = 0;
    while (i < ((IntegerPolynomial)localObject2).bjG.length)
    {
      paramIntegerPolynomial = ((IntegerPolynomial)localObject1).bjG;
      k = j * 2 + i;
      paramIntegerPolynomial[k] += localObject2.bjG[i];
      i += 1;
    }
    return localObject1;
  }
  
  private IntegerPolynomial ˋ(IntegerPolynomial paramIntegerPolynomial, int paramInt)
  {
    Object localObject;
    if ((Util.tc()) && (paramInt == 2048))
    {
      LongPolynomial2 localLongPolynomial2 = new LongPolynomial2(this);
      paramIntegerPolynomial = new LongPolynomial2(paramIntegerPolynomial);
      i = 2;
      while (i < paramInt)
      {
        i *= 2;
        localObject = (LongPolynomial2)paramIntegerPolynomial.clone();
        ((LongPolynomial2)localObject).לּ(i - 1);
        ((LongPolynomial2)localObject).ˊ(localLongPolynomial2.ˊ(paramIntegerPolynomial).ˊ(paramIntegerPolynomial), i - 1);
        paramIntegerPolynomial = (IntegerPolynomial)localObject;
      }
      return paramIntegerPolynomial.ta();
    }
    int i = 2;
    while (i < paramInt)
    {
      i *= 2;
      localObject = new IntegerPolynomial(Arrays.copyOf(paramIntegerPolynomial.bjG, paramIntegerPolynomial.bjG.length));
      ((IntegerPolynomial)localObject).ᵝ(i);
      ((IntegerPolynomial)localObject).ˏ(ˊ(paramIntegerPolynomial, i).ˊ(paramIntegerPolynomial, i), i);
      paramIntegerPolynomial = (IntegerPolynomial)localObject;
    }
    return paramIntegerPolynomial;
  }
  
  public static IntegerPolynomial ᐠ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new IntegerPolynomial(ArrayEncoder.ᐣ(paramArrayOfByte, paramInt1, paramInt2));
  }
  
  public static IntegerPolynomial ᕀ(byte[] paramArrayOfByte, int paramInt)
  {
    return new IntegerPolynomial(ArrayEncoder.ᵕ(paramArrayOfByte, paramInt));
  }
  
  private void ᵝ(int paramInt)
  {
    int i = 0;
    while (i < this.bjG.length)
    {
      int[] arrayOfInt = this.bjG;
      arrayOfInt[i] *= 2;
      arrayOfInt = this.bjG;
      arrayOfInt[i] %= paramInt;
      i += 1;
    }
  }
  
  public void clear()
  {
    int i = 0;
    while (i < this.bjG.length)
    {
      this.bjG[i] = 0;
      i += 1;
    }
  }
  
  public Object clone()
  {
    return new IntegerPolynomial((int[])this.bjG.clone());
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof IntegerPolynomial)) {
      return Arrays.ՙ(this.bjG, ((IntegerPolynomial)paramObject).bjG);
    }
    return false;
  }
  
  int qa()
  {
    int i = this.bjG.length - 1;
    while ((i > 0) && (this.bjG[i] == 0)) {
      i -= 1;
    }
    return i;
  }
  
  public byte[] sR()
  {
    return ArrayEncoder.ᵢ(this.bjG);
  }
  
  public IntegerPolynomial sS()
  {
    int n = this.bjG.length;
    int i = 0;
    Object localObject1 = new IntegerPolynomial(n + 1);
    ((IntegerPolynomial)localObject1).bjG[0] = 1;
    Object localObject3 = new IntegerPolynomial(n + 1);
    Object localObject2 = new IntegerPolynomial(n + 1);
    ((IntegerPolynomial)localObject2).bjG = Arrays.copyOf(this.bjG, n + 1);
    ((IntegerPolynomial)localObject2).ẋ(3);
    Object localObject4 = new IntegerPolynomial(n + 1);
    ((IntegerPolynomial)localObject4).bjG[0] = -1;
    ((IntegerPolynomial)localObject4).bjG[n] = 1;
    for (;;)
    {
      if (localObject2.bjG[0] == 0)
      {
        j = 1;
        while (j <= n)
        {
          ((IntegerPolynomial)localObject2).bjG[(j - 1)] = localObject2.bjG[j];
          ((IntegerPolynomial)localObject3).bjG[(n + 1 - j)] = localObject3.bjG[(n - j)];
          j += 1;
        }
        ((IntegerPolynomial)localObject2).bjG[n] = 0;
        ((IntegerPolynomial)localObject3).bjG[0] = 0;
        i += 1;
        if (((IntegerPolynomial)localObject2).sW()) {
          return null;
        }
      }
      else
      {
        if (((IntegerPolynomial)localObject2).sY()) {
          break;
        }
        Object localObject8 = localObject1;
        Object localObject7 = localObject3;
        Object localObject6 = localObject2;
        Object localObject5 = localObject4;
        if (((IntegerPolynomial)localObject2).qa() < ((IntegerPolynomial)localObject4).qa())
        {
          localObject5 = localObject2;
          localObject6 = localObject4;
          localObject7 = localObject1;
          localObject8 = localObject3;
        }
        if (localObject6.bjG[0] == localObject5.bjG[0])
        {
          localObject6.ˏ(localObject5, 3);
          localObject8.ˏ(localObject7, 3);
          localObject1 = localObject8;
          localObject3 = localObject7;
          localObject2 = localObject6;
          localObject4 = localObject5;
        }
        else
        {
          localObject6.ˎ(localObject5, 3);
          localObject8.ˎ(localObject7, 3);
          localObject1 = localObject8;
          localObject3 = localObject7;
          localObject2 = localObject6;
          localObject4 = localObject5;
        }
      }
    }
    if (localObject1.bjG[n] != 0) {
      return null;
    }
    localObject3 = new IntegerPolynomial(n);
    int j = n - 1;
    while (j >= 0)
    {
      int m = j - i % n;
      int k = m;
      if (m < 0) {
        k = m + n;
      }
      ((IntegerPolynomial)localObject3).bjG[k] = (localObject2.bjG[0] * localObject1.bjG[j]);
      j -= 1;
    }
    ((IntegerPolynomial)localObject3).〵(3);
    return localObject3;
  }
  
  public Resultant sT()
  {
    int k = this.bjG.length;
    Object localObject6 = new LinkedList();
    Object localObject2 = null;
    Object localObject3 = Constants.bjC;
    Object localObject1 = Constants.bjC;
    int i = 1;
    Iterator localIterator = bjF.iterator();
    for (;;)
    {
      localObject4 = localObject1;
      if (localIterator.hasNext()) {
        localObject2 = (BigInteger)localIterator.next();
      } else {
        localObject2 = ((BigInteger)localObject2).nextProbablePrime();
      }
      localObject5 = ᵍ(((BigInteger)localObject2).intValue());
      ((LinkedList)localObject6).add(localObject5);
      localObject1 = ((BigInteger)localObject3).multiply((BigInteger)localObject2);
      Object localObject7 = BigIntEuclidean.ͺ((BigInteger)localObject2, (BigInteger)localObject3);
      localObject5 = ((BigInteger)localObject4).multiply(((BigIntEuclidean)localObject7).aFO.multiply((BigInteger)localObject2)).add(((ModularResultant)localObject5).bjR.multiply(((BigIntEuclidean)localObject7).aPZ.multiply((BigInteger)localObject3))).mod((BigInteger)localObject1);
      localObject3 = localObject1;
      localObject1 = ((BigInteger)localObject3).divide(BigInteger.valueOf(2L));
      localObject7 = ((BigInteger)localObject1).negate();
      if (((BigInteger)localObject5).compareTo((BigInteger)localObject1) > 0)
      {
        localObject1 = ((BigInteger)localObject5).subtract((BigInteger)localObject3);
      }
      else
      {
        localObject1 = localObject5;
        if (((BigInteger)localObject5).compareTo((BigInteger)localObject7) < 0) {
          localObject1 = ((BigInteger)localObject5).add((BigInteger)localObject3);
        }
      }
      if (((BigInteger)localObject1).equals(localObject4))
      {
        int j = i + 1;
        i = j;
        if (j >= 3) {
          break;
        }
      }
      else
      {
        i = 1;
      }
    }
    while (((LinkedList)localObject6).size() > 1) {
      ((LinkedList)localObject6).addLast(ModularResultant.ˊ((ModularResultant)((LinkedList)localObject6).removeFirst(), (ModularResultant)((LinkedList)localObject6).removeFirst()));
    }
    Object localObject4 = ((ModularResultant)((LinkedList)localObject6).getFirst()).bjQ;
    Object localObject5 = ((BigInteger)localObject3).divide(BigInteger.valueOf(2L));
    localObject6 = ((BigInteger)localObject5).negate();
    localObject2 = localObject1;
    if (((BigInteger)localObject1).compareTo((BigInteger)localObject5) > 0) {
      localObject2 = ((BigInteger)localObject1).subtract((BigInteger)localObject3);
    }
    localObject1 = localObject2;
    if (((BigInteger)localObject2).compareTo((BigInteger)localObject6) < 0) {
      localObject1 = ((BigInteger)localObject2).add((BigInteger)localObject3);
    }
    i = 0;
    while (i < k)
    {
      localObject2 = localObject4.bjA[i];
      if (((BigInteger)localObject2).compareTo((BigInteger)localObject5) > 0) {
        ((BigIntPolynomial)localObject4).bjA[i] = ((BigInteger)localObject2).subtract((BigInteger)localObject3);
      }
      if (((BigInteger)localObject2).compareTo((BigInteger)localObject6) < 0) {
        ((BigIntPolynomial)localObject4).bjA[i] = ((BigInteger)localObject2).add((BigInteger)localObject3);
      }
      i += 1;
    }
    return new Resultant((BigIntPolynomial)localObject4, (BigInteger)localObject1);
  }
  
  public void sU()
  {
    int i = 0;
    while (i < this.bjG.length)
    {
      int[] arrayOfInt = this.bjG;
      arrayOfInt[i] %= 3;
      if (this.bjG[i] > 1)
      {
        arrayOfInt = this.bjG;
        arrayOfInt[i] -= 3;
      }
      if (this.bjG[i] < -1)
      {
        arrayOfInt = this.bjG;
        arrayOfInt[i] += 3;
      }
      i += 1;
    }
  }
  
  public int sV()
  {
    int j = 0;
    int i = 0;
    while (i < this.bjG.length)
    {
      j += this.bjG[i];
      i += 1;
    }
    return j;
  }
  
  public boolean sX()
  {
    int i = 1;
    while (i < this.bjG.length)
    {
      if (this.bjG[i] != 0) {
        return false;
      }
      i += 1;
    }
    return this.bjG[0] == 1;
  }
  
  public void sZ()
  {
    int j = this.bjG[(this.bjG.length - 1)];
    int i = this.bjG.length - 1;
    while (i > 0)
    {
      this.bjG[i] = this.bjG[(i - 1)];
      i -= 1;
    }
    this.bjG[0] = j;
  }
  
  public IntegerPolynomial ta()
  {
    return (IntegerPolynomial)clone();
  }
  
  public IntegerPolynomial ˊ(IntegerPolynomial paramIntegerPolynomial)
  {
    int j = this.bjG.length;
    if (paramIntegerPolynomial.bjG.length != j) {
      throw new IllegalArgumentException("Number of coefficients must be the same");
    }
    paramIntegerPolynomial = ˋ(paramIntegerPolynomial);
    if (paramIntegerPolynomial.bjG.length > j)
    {
      int i = j;
      while (i < paramIntegerPolynomial.bjG.length)
      {
        int[] arrayOfInt = paramIntegerPolynomial.bjG;
        int k = i - j;
        arrayOfInt[k] += paramIntegerPolynomial.bjG[i];
        i += 1;
      }
      paramIntegerPolynomial.bjG = Arrays.copyOf(paramIntegerPolynomial.bjG, j);
    }
    return paramIntegerPolynomial;
  }
  
  public IntegerPolynomial ˊ(IntegerPolynomial paramIntegerPolynomial, int paramInt)
  {
    paramIntegerPolynomial = ˊ(paramIntegerPolynomial);
    paramIntegerPolynomial.〳(paramInt);
    return paramIntegerPolynomial;
  }
  
  public BigIntPolynomial ˋ(BigIntPolynomial paramBigIntPolynomial)
  {
    return new BigIntPolynomial(this).ˋ(paramBigIntPolynomial);
  }
  
  public void ˎ(IntegerPolynomial paramIntegerPolynomial)
  {
    if (paramIntegerPolynomial.bjG.length > this.bjG.length) {
      this.bjG = Arrays.copyOf(this.bjG, paramIntegerPolynomial.bjG.length);
    }
    int i = 0;
    while (i < paramIntegerPolynomial.bjG.length)
    {
      int[] arrayOfInt = this.bjG;
      arrayOfInt[i] += paramIntegerPolynomial.bjG[i];
      i += 1;
    }
  }
  
  public void ˎ(IntegerPolynomial paramIntegerPolynomial, int paramInt)
  {
    ˎ(paramIntegerPolynomial);
    〳(paramInt);
  }
  
  public void ˏ(IntegerPolynomial paramIntegerPolynomial)
  {
    if (paramIntegerPolynomial.bjG.length > this.bjG.length) {
      this.bjG = Arrays.copyOf(this.bjG, paramIntegerPolynomial.bjG.length);
    }
    int i = 0;
    while (i < paramIntegerPolynomial.bjG.length)
    {
      int[] arrayOfInt = this.bjG;
      arrayOfInt[i] -= paramIntegerPolynomial.bjG[i];
      i += 1;
    }
  }
  
  public void ˏ(IntegerPolynomial paramIntegerPolynomial, int paramInt)
  {
    ˏ(paramIntegerPolynomial);
    〳(paramInt);
  }
  
  public byte[] ᴳ(int paramInt)
  {
    return ArrayEncoder.ι(this.bjG, paramInt);
  }
  
  public IntegerPolynomial ᴼ(int paramInt)
  {
    int n = this.bjG.length;
    int i = 0;
    Object localObject1 = new IntegerPolynomial(n + 1);
    ((IntegerPolynomial)localObject1).bjG[0] = 1;
    Object localObject2 = new IntegerPolynomial(n + 1);
    Object localObject3 = new IntegerPolynomial(n + 1);
    ((IntegerPolynomial)localObject3).bjG = Arrays.copyOf(this.bjG, n + 1);
    ((IntegerPolynomial)localObject3).ẋ(2);
    Object localObject4 = new IntegerPolynomial(n + 1);
    ((IntegerPolynomial)localObject4).bjG[0] = 1;
    ((IntegerPolynomial)localObject4).bjG[n] = 1;
    for (;;)
    {
      if (localObject3.bjG[0] == 0)
      {
        j = 1;
        while (j <= n)
        {
          ((IntegerPolynomial)localObject3).bjG[(j - 1)] = localObject3.bjG[j];
          ((IntegerPolynomial)localObject2).bjG[(n + 1 - j)] = localObject2.bjG[(n - j)];
          j += 1;
        }
        ((IntegerPolynomial)localObject3).bjG[n] = 0;
        ((IntegerPolynomial)localObject2).bjG[0] = 0;
        i += 1;
        if (((IntegerPolynomial)localObject3).sW()) {
          return null;
        }
      }
      else
      {
        if (((IntegerPolynomial)localObject3).sX()) {
          break;
        }
        Object localObject8 = localObject1;
        Object localObject7 = localObject2;
        Object localObject6 = localObject3;
        Object localObject5 = localObject4;
        if (((IntegerPolynomial)localObject3).qa() < ((IntegerPolynomial)localObject4).qa())
        {
          localObject5 = localObject3;
          localObject6 = localObject4;
          localObject7 = localObject1;
          localObject8 = localObject2;
        }
        localObject6.ˎ(localObject5, 2);
        localObject8.ˎ(localObject7, 2);
        localObject1 = localObject8;
        localObject2 = localObject7;
        localObject3 = localObject6;
        localObject4 = localObject5;
      }
    }
    if (localObject1.bjG[n] != 0) {
      return null;
    }
    localObject2 = new IntegerPolynomial(n);
    int j = n - 1;
    while (j >= 0)
    {
      int m = j - i % n;
      int k = m;
      if (m < 0) {
        k = m + n;
      }
      ((IntegerPolynomial)localObject2).bjG[k] = localObject1.bjG[j];
      j -= 1;
    }
    return ˋ((IntegerPolynomial)localObject2, paramInt);
  }
  
  public ModularResultant ᵍ(int paramInt)
  {
    Object localObject2 = Arrays.copyOf(this.bjG, this.bjG.length + 1);
    Object localObject1 = new IntegerPolynomial((int[])localObject2);
    int i = localObject2.length;
    Object localObject3 = new IntegerPolynomial(i);
    ((IntegerPolynomial)localObject3).bjG[0] = -1;
    ((IntegerPolynomial)localObject3).bjG[(i - 1)] = 1;
    localObject2 = new IntegerPolynomial(((IntegerPolynomial)localObject1).bjG);
    Object localObject4 = new IntegerPolynomial(i);
    localObject1 = new IntegerPolynomial(i);
    ((IntegerPolynomial)localObject1).bjG[0] = 1;
    int j = i - 1;
    i = ((IntegerPolynomial)localObject2).qa();
    int m = j;
    int k = 1;
    for (;;)
    {
      Object localObject5 = localObject4;
      Object localObject6 = localObject3;
      if (i <= 0) {
        break;
      }
      int n = Util.וֹ(localObject2.bjG[i], paramInt);
      n = localObject6.bjG[j] * n % paramInt;
      localObject6.ˊ((IntegerPolynomial)localObject2, n, j - i, paramInt);
      localObject5.ˊ((IntegerPolynomial)localObject1, n, j - i, paramInt);
      n = localObject6.qa();
      localObject3 = localObject6;
      localObject4 = localObject5;
      j = n;
      if (n < i)
      {
        j = k * Util.ˡ(localObject2.bjG[i], m - n, paramInt) % paramInt;
        k = j;
        if (m % 2 == 1)
        {
          k = j;
          if (i % 2 == 1) {
            k = -j % paramInt;
          }
        }
        j = i;
        m = i;
        i = n;
        localObject3 = localObject2;
        localObject2 = localObject6;
        localObject4 = localObject1;
        localObject1 = localObject5;
      }
    }
    i = k * Util.ˡ(localObject2.bjG[0], j, paramInt) % paramInt;
    ((IntegerPolynomial)localObject1).ᵚ(Util.וֹ(localObject2.bjG[0], paramInt));
    ((IntegerPolynomial)localObject1).〳(paramInt);
    ((IntegerPolynomial)localObject1).ᵚ(i);
    ((IntegerPolynomial)localObject1).〳(paramInt);
    ((IntegerPolynomial)localObject1).bjG = Arrays.copyOf(((IntegerPolynomial)localObject1).bjG, ((IntegerPolynomial)localObject1).bjG.length - 1);
    return new ModularResultant(new BigIntPolynomial((IntegerPolynomial)localObject1), BigInteger.valueOf(i), BigInteger.valueOf(paramInt));
  }
  
  void ᵐ(int paramInt)
  {
    int i = 0;
    while (i < this.bjG.length)
    {
      int[] arrayOfInt = this.bjG;
      arrayOfInt[i] -= paramInt;
      i += 1;
    }
  }
  
  public void ᵚ(int paramInt)
  {
    int i = 0;
    while (i < this.bjG.length)
    {
      int[] arrayOfInt = this.bjG;
      arrayOfInt[i] *= paramInt;
      i += 1;
    }
  }
  
  public void ᵦ(int paramInt)
  {
    int i = 0;
    while (i < this.bjG.length)
    {
      int[] arrayOfInt = this.bjG;
      arrayOfInt[i] *= 3;
      arrayOfInt = this.bjG;
      arrayOfInt[i] %= paramInt;
      i += 1;
    }
  }
  
  public void ẋ(int paramInt)
  {
    〳(paramInt);
    〵(paramInt);
  }
  
  void ẍ(int paramInt)
  {
    〳(paramInt);
    int i = 0;
    while (i < this.bjG.length)
    {
      int[] arrayOfInt;
      while (this.bjG[i] < paramInt / 2)
      {
        arrayOfInt = this.bjG;
        arrayOfInt[i] += paramInt;
      }
      while (this.bjG[i] >= paramInt / 2)
      {
        arrayOfInt = this.bjG;
        arrayOfInt[i] -= paramInt;
      }
      i += 1;
    }
  }
  
  public void 〳(int paramInt)
  {
    int i = 0;
    while (i < this.bjG.length)
    {
      int[] arrayOfInt = this.bjG;
      arrayOfInt[i] %= paramInt;
      i += 1;
    }
  }
  
  public void 〵(int paramInt)
  {
    int i = 0;
    while (i < this.bjG.length)
    {
      while (this.bjG[i] < 0)
      {
        int[] arrayOfInt = this.bjG;
        arrayOfInt[i] += paramInt;
      }
      i += 1;
    }
  }
  
  public long ノ(int paramInt)
  {
    int i = this.bjG.length;
    IntegerPolynomial localIntegerPolynomial = (IntegerPolynomial)clone();
    localIntegerPolynomial.亅(paramInt);
    long l2 = 0L;
    long l1 = 0L;
    paramInt = 0;
    while (paramInt != localIntegerPolynomial.bjG.length)
    {
      int j = localIntegerPolynomial.bjG[paramInt];
      l2 += j;
      l1 += j * j;
      paramInt += 1;
    }
    return l1 - l2 * l2 / i;
  }
  
  void 亅(int paramInt)
  {
    ẍ(paramInt);
    int[] arrayOfInt = Arrays.י(this.bjG);
    sort(arrayOfInt);
    int j = 0;
    int k = 0;
    int i = 0;
    while (i < arrayOfInt.length - 1)
    {
      int n = arrayOfInt[(i + 1)] - arrayOfInt[i];
      m = j;
      if (n > j)
      {
        m = n;
        k = arrayOfInt[i];
      }
      i += 1;
      j = m;
    }
    i = arrayOfInt[0];
    int m = arrayOfInt[(arrayOfInt.length - 1)];
    if (paramInt - m + i > j) {
      paramInt = (m + i) / 2;
    } else {
      paramInt = j / 2 + k + paramInt / 2;
    }
    ᵐ(paramInt);
  }
  
  public void 亠(int paramInt)
  {
    int i = 0;
    while (i < this.bjG.length)
    {
      int[] arrayOfInt;
      while (this.bjG[i] < -paramInt / 2)
      {
        arrayOfInt = this.bjG;
        arrayOfInt[i] += paramInt;
      }
      while (this.bjG[i] > paramInt / 2)
      {
        arrayOfInt = this.bjG;
        arrayOfInt[i] -= paramInt;
      }
      i += 1;
    }
  }
  
  public int 冫(int paramInt)
  {
    int j = 0;
    int i = 0;
    while (i != this.bjG.length)
    {
      int k = j;
      if (this.bjG[i] == paramInt) {
        k = j + 1;
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  class CombineTask
    implements Callable<ModularResultant>
  {
    private ModularResultant bjH;
    private ModularResultant bjI;
    
    public ModularResultant tb()
    {
      return ModularResultant.ˊ(this.bjH, this.bjI);
    }
  }
  
  class ModResultantTask
    implements Callable<ModularResultant>
  {
    private int bjJ;
    
    public ModularResultant tb()
    {
      return this.bjK.ᵍ(this.bjJ);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial
 * JD-Core Version:    0.7.0.1
 */