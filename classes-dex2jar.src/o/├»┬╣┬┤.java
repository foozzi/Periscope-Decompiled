package o;

import java.util.Map;

public class ﹴ<K, V>
{
  static Object[] זּ;
  static int נּ;
  static Object[] רּ;
  static int ﭕ;
  int Ị;
  int[] ﭜ;
  Object[] ﭡ;
  
  public ﹴ()
  {
    this.ﭜ = ᵌ.ᔆ;
    this.ﭡ = ᵌ.ᴬ;
    this.Ị = 0;
  }
  
  public ﹴ(int paramInt)
  {
    if (paramInt == 0)
    {
      this.ﭜ = ᵌ.ᔆ;
      this.ﭡ = ᵌ.ᴬ;
    }
    else
    {
      ˍ(paramInt);
    }
    this.Ị = 0;
  }
  
  private static void ˊ(int[] paramArrayOfInt, Object[] paramArrayOfObject, int paramInt)
  {
    if (paramArrayOfInt.length == 8) {
      try
      {
        if (ﭕ < 10)
        {
          paramArrayOfObject[0] = רּ;
          paramArrayOfObject[1] = paramArrayOfInt;
          paramInt = (paramInt << 1) - 1;
          break label121;
          רּ = paramArrayOfObject;
          ﭕ += 1;
        }
      }
      finally {}
    } else if (paramArrayOfInt.length != 4) {}
    for (;;)
    {
      try
      {
        if (נּ < 10)
        {
          paramArrayOfObject[0] = זּ;
          paramArrayOfObject[1] = paramArrayOfInt;
          paramInt = (paramInt << 1) - 1;
          break label137;
          זּ = paramArrayOfObject;
          נּ += 1;
        }
        return;
      }
      finally {}
      return;
      label121:
      while (paramInt >= 2)
      {
        paramArrayOfObject[paramInt] = null;
        paramInt -= 1;
      }
      break;
      label137:
      while (paramInt >= 2)
      {
        paramArrayOfObject[paramInt] = null;
        paramInt -= 1;
      }
    }
  }
  
  private void ˍ(int paramInt)
  {
    if (paramInt == 8) {
      try
      {
        if (רּ != null)
        {
          Object[] arrayOfObject1 = רּ;
          this.ﭡ = arrayOfObject1;
          רּ = (Object[])arrayOfObject1[0];
          this.ﭜ = ((int[])arrayOfObject1[1]);
          arrayOfObject1[1] = null;
          arrayOfObject1[0] = null;
          ﭕ -= 1;
          return;
        }
      }
      finally {}
    } else if (paramInt == 4) {
      try
      {
        if (זּ != null)
        {
          Object[] arrayOfObject2 = זּ;
          this.ﭡ = arrayOfObject2;
          זּ = (Object[])arrayOfObject2[0];
          this.ﭜ = ((int[])arrayOfObject2[1]);
          arrayOfObject2[1] = null;
          arrayOfObject2[0] = null;
          נּ -= 1;
          return;
        }
      }
      finally {}
    }
    this.ﭜ = new int[paramInt];
    this.ﭡ = new Object[paramInt << 1];
  }
  
  public void clear()
  {
    if (this.Ị != 0)
    {
      ˊ(this.ﭜ, this.ﭡ, this.Ị);
      this.ﭜ = ᵌ.ᔆ;
      this.ﭡ = ᵌ.ᴬ;
      this.Ị = 0;
    }
  }
  
  public boolean containsKey(Object paramObject)
  {
    return indexOfKey(paramObject) >= 0;
  }
  
  public boolean containsValue(Object paramObject)
  {
    return indexOfValue(paramObject) >= 0;
  }
  
  public void ensureCapacity(int paramInt)
  {
    if (this.ﭜ.length < paramInt)
    {
      int[] arrayOfInt = this.ﭜ;
      Object[] arrayOfObject = this.ﭡ;
      ˍ(paramInt);
      if (this.Ị > 0)
      {
        System.arraycopy(arrayOfInt, 0, this.ﭜ, 0, this.Ị);
        System.arraycopy(arrayOfObject, 0, this.ﭡ, 0, this.Ị << 1);
      }
      ˊ(arrayOfInt, arrayOfObject, this.Ị);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof Map))
    {
      paramObject = (Map)paramObject;
      if (size() != paramObject.size()) {
        return false;
      }
      int i = 0;
      try
      {
        while (i < this.Ị)
        {
          Object localObject1 = keyAt(i);
          Object localObject2 = valueAt(i);
          Object localObject3 = paramObject.get(localObject1);
          boolean bool;
          if (localObject2 == null)
          {
            if (localObject3 == null)
            {
              bool = paramObject.containsKey(localObject1);
              if (bool) {}
            }
            else
            {
              return false;
            }
          }
          else
          {
            bool = localObject2.equals(localObject3);
            if (!bool) {
              return false;
            }
          }
          i += 1;
        }
      }
      catch (NullPointerException paramObject)
      {
        return false;
      }
      catch (ClassCastException paramObject)
      {
        return false;
      }
      return true;
    }
    return false;
  }
  
  public V get(Object paramObject)
  {
    int i = indexOfKey(paramObject);
    if (i >= 0) {
      return this.ﭡ[((i << 1) + 1)];
    }
    return null;
  }
  
  public int hashCode()
  {
    int[] arrayOfInt = this.ﭜ;
    Object[] arrayOfObject = this.ﭡ;
    int k = 0;
    int j = 0;
    int i = 1;
    int n = this.Ị;
    while (j < n)
    {
      Object localObject = arrayOfObject[i];
      int i1 = arrayOfInt[j];
      int m;
      if (localObject == null) {
        m = 0;
      } else {
        m = localObject.hashCode();
      }
      k += (i1 ^ m);
      j += 1;
      i += 2;
    }
    return k;
  }
  
  int indexOf(Object paramObject, int paramInt)
  {
    int j = this.Ị;
    if (j == 0) {
      return -1;
    }
    int k = ᵌ.ˊ(this.ﭜ, j, paramInt);
    if (k < 0) {
      return k;
    }
    if (paramObject.equals(this.ﭡ[(k << 1)])) {
      return k;
    }
    int i = k + 1;
    while ((i < j) && (this.ﭜ[i] == paramInt))
    {
      if (paramObject.equals(this.ﭡ[(i << 1)])) {
        return i;
      }
      i += 1;
    }
    j = k - 1;
    while ((j >= 0) && (this.ﭜ[j] == paramInt))
    {
      if (paramObject.equals(this.ﭡ[(j << 1)])) {
        return j;
      }
      j -= 1;
    }
    return i ^ 0xFFFFFFFF;
  }
  
  public int indexOfKey(Object paramObject)
  {
    if (paramObject == null) {
      return ᑊ();
    }
    return indexOf(paramObject, paramObject.hashCode());
  }
  
  int indexOfValue(Object paramObject)
  {
    int j = this.Ị * 2;
    Object[] arrayOfObject = this.ﭡ;
    int i;
    if (paramObject == null)
    {
      i = 1;
      while (i < j)
      {
        if (arrayOfObject[i] == null) {
          return i >> 1;
        }
        i += 2;
      }
    }
    else
    {
      i = 1;
      while (i < j)
      {
        if (paramObject.equals(arrayOfObject[i])) {
          return i >> 1;
        }
        i += 2;
      }
    }
    return -1;
  }
  
  public boolean isEmpty()
  {
    return this.Ị <= 0;
  }
  
  public K keyAt(int paramInt)
  {
    return this.ﭡ[(paramInt << 1)];
  }
  
  public V put(K paramK, V paramV)
  {
    int j;
    int i;
    if (paramK == null)
    {
      j = 0;
      i = ᑊ();
    }
    else
    {
      j = paramK.hashCode();
      i = indexOf(paramK, j);
    }
    if (i >= 0)
    {
      i = (i << 1) + 1;
      paramK = this.ﭡ[i];
      this.ﭡ[i] = paramV;
      return paramK;
    }
    int k = i ^ 0xFFFFFFFF;
    if (this.Ị >= this.ﭜ.length)
    {
      if (this.Ị >= 8) {
        i = this.Ị + (this.Ị >> 1);
      } else if (this.Ị >= 4) {
        i = 8;
      } else {
        i = 4;
      }
      int[] arrayOfInt = this.ﭜ;
      Object[] arrayOfObject = this.ﭡ;
      ˍ(i);
      if (this.ﭜ.length > 0)
      {
        System.arraycopy(arrayOfInt, 0, this.ﭜ, 0, arrayOfInt.length);
        System.arraycopy(arrayOfObject, 0, this.ﭡ, 0, arrayOfObject.length);
      }
      ˊ(arrayOfInt, arrayOfObject, this.Ị);
    }
    if (k < this.Ị)
    {
      System.arraycopy(this.ﭜ, k, this.ﭜ, k + 1, this.Ị - k);
      System.arraycopy(this.ﭡ, k << 1, this.ﭡ, k + 1 << 1, this.Ị - k << 1);
    }
    this.ﭜ[k] = j;
    this.ﭡ[(k << 1)] = paramK;
    this.ﭡ[((k << 1) + 1)] = paramV;
    this.Ị += 1;
    return null;
  }
  
  public V remove(Object paramObject)
  {
    int i = indexOfKey(paramObject);
    if (i >= 0) {
      return removeAt(i);
    }
    return null;
  }
  
  public V removeAt(int paramInt)
  {
    Object localObject = this.ﭡ[((paramInt << 1) + 1)];
    if (this.Ị <= 1)
    {
      ˊ(this.ﭜ, this.ﭡ, this.Ị);
      this.ﭜ = ᵌ.ᔆ;
      this.ﭡ = ᵌ.ᴬ;
      this.Ị = 0;
      return localObject;
    }
    if ((this.ﭜ.length > 8) && (this.Ị < this.ﭜ.length / 3))
    {
      int i;
      if (this.Ị > 8) {
        i = this.Ị + (this.Ị >> 1);
      } else {
        i = 8;
      }
      int[] arrayOfInt = this.ﭜ;
      Object[] arrayOfObject = this.ﭡ;
      ˍ(i);
      this.Ị -= 1;
      if (paramInt > 0)
      {
        System.arraycopy(arrayOfInt, 0, this.ﭜ, 0, paramInt);
        System.arraycopy(arrayOfObject, 0, this.ﭡ, 0, paramInt << 1);
      }
      if (paramInt < this.Ị)
      {
        System.arraycopy(arrayOfInt, paramInt + 1, this.ﭜ, paramInt, this.Ị - paramInt);
        System.arraycopy(arrayOfObject, paramInt + 1 << 1, this.ﭡ, paramInt << 1, this.Ị - paramInt << 1);
      }
      return localObject;
    }
    this.Ị -= 1;
    if (paramInt < this.Ị)
    {
      System.arraycopy(this.ﭜ, paramInt + 1, this.ﭜ, paramInt, this.Ị - paramInt);
      System.arraycopy(this.ﭡ, paramInt + 1 << 1, this.ﭡ, paramInt << 1, this.Ị - paramInt << 1);
    }
    this.ﭡ[(this.Ị << 1)] = null;
    this.ﭡ[((this.Ị << 1) + 1)] = null;
    return localObject;
  }
  
  public V setValueAt(int paramInt, V paramV)
  {
    paramInt = (paramInt << 1) + 1;
    Object localObject = this.ﭡ[paramInt];
    this.ﭡ[paramInt] = paramV;
    return localObject;
  }
  
  public int size()
  {
    return this.Ị;
  }
  
  public String toString()
  {
    if (isEmpty()) {
      return "{}";
    }
    StringBuilder localStringBuilder = new StringBuilder(this.Ị * 28);
    localStringBuilder.append('{');
    int i = 0;
    while (i < this.Ị)
    {
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      Object localObject = keyAt(i);
      if (localObject != this) {
        localStringBuilder.append(localObject);
      } else {
        localStringBuilder.append("(this Map)");
      }
      localStringBuilder.append('=');
      localObject = valueAt(i);
      if (localObject != this) {
        localStringBuilder.append(localObject);
      } else {
        localStringBuilder.append("(this Map)");
      }
      i += 1;
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public V valueAt(int paramInt)
  {
    return this.ﭡ[((paramInt << 1) + 1)];
  }
  
  int ᑊ()
  {
    int j = this.Ị;
    if (j == 0) {
      return -1;
    }
    int k = ᵌ.ˊ(this.ﭜ, j, 0);
    if (k < 0) {
      return k;
    }
    if (this.ﭡ[(k << 1)] == null) {
      return k;
    }
    int i = k + 1;
    while ((i < j) && (this.ﭜ[i] == 0))
    {
      if (this.ﭡ[(i << 1)] == null) {
        return i;
      }
      i += 1;
    }
    j = k - 1;
    while ((j >= 0) && (this.ﭜ[j] == 0))
    {
      if (this.ﭡ[(j << 1)] == null) {
        return j;
      }
      j -= 1;
    }
    return i ^ 0xFFFFFFFF;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¹´
 * JD-Core Version:    0.7.0.1
 */