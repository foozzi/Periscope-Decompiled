package o;

public class ﹸ<E>
  implements Cloneable
{
  private static final Object ﭤ = new Object();
  private int Ị;
  private boolean ﯧ = false;
  private int[] ﯿ;
  private Object[] ﹹ;
  
  public ﹸ()
  {
    this(10);
  }
  
  public ﹸ(int paramInt)
  {
    if (paramInt == 0)
    {
      this.ﯿ = ᵌ.ᔆ;
      this.ﹹ = ᵌ.ᴬ;
    }
    else
    {
      paramInt = ᵌ.ˈ(paramInt);
      this.ﯿ = new int[paramInt];
      this.ﹹ = new Object[paramInt];
    }
    this.Ị = 0;
  }
  
  private void gc()
  {
    int m = this.Ị;
    int j = 0;
    int[] arrayOfInt = this.ﯿ;
    Object[] arrayOfObject = this.ﹹ;
    int i = 0;
    while (i < m)
    {
      Object localObject = arrayOfObject[i];
      int k = j;
      if (localObject != ﭤ)
      {
        if (i != j)
        {
          arrayOfInt[j] = arrayOfInt[i];
          arrayOfObject[j] = localObject;
          arrayOfObject[i] = null;
        }
        k = j + 1;
      }
      i += 1;
      j = k;
    }
    this.ﯧ = false;
    this.Ị = j;
  }
  
  public void clear()
  {
    int j = this.Ị;
    Object[] arrayOfObject = this.ﹹ;
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = null;
      i += 1;
    }
    this.Ị = 0;
    this.ﯧ = false;
  }
  
  public void delete(int paramInt)
  {
    paramInt = ᵌ.ˊ(this.ﯿ, this.Ị, paramInt);
    if ((paramInt >= 0) && (this.ﹹ[paramInt] != ﭤ))
    {
      this.ﹹ[paramInt] = ﭤ;
      this.ﯧ = true;
    }
  }
  
  public E get(int paramInt)
  {
    return get(paramInt, null);
  }
  
  public E get(int paramInt, E paramE)
  {
    paramInt = ᵌ.ˊ(this.ﯿ, this.Ị, paramInt);
    if ((paramInt < 0) || (this.ﹹ[paramInt] == ﭤ)) {
      return paramE;
    }
    return this.ﹹ[paramInt];
  }
  
  public int indexOfKey(int paramInt)
  {
    if (this.ﯧ) {
      gc();
    }
    return ᵌ.ˊ(this.ﯿ, this.Ị, paramInt);
  }
  
  public int keyAt(int paramInt)
  {
    if (this.ﯧ) {
      gc();
    }
    return this.ﯿ[paramInt];
  }
  
  public void put(int paramInt, E paramE)
  {
    int i = ᵌ.ˊ(this.ﯿ, this.Ị, paramInt);
    if (i >= 0)
    {
      this.ﹹ[i] = paramE;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < this.Ị) && (this.ﹹ[j] == ﭤ))
    {
      this.ﯿ[j] = paramInt;
      this.ﹹ[j] = paramE;
      return;
    }
    i = j;
    if (this.ﯧ)
    {
      i = j;
      if (this.Ị >= this.ﯿ.length)
      {
        gc();
        i = ᵌ.ˊ(this.ﯿ, this.Ị, paramInt) ^ 0xFFFFFFFF;
      }
    }
    if (this.Ị >= this.ﯿ.length)
    {
      j = ᵌ.ˈ(this.Ị + 1);
      int[] arrayOfInt = new int[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(this.ﯿ, 0, arrayOfInt, 0, this.ﯿ.length);
      System.arraycopy(this.ﹹ, 0, arrayOfObject, 0, this.ﹹ.length);
      this.ﯿ = arrayOfInt;
      this.ﹹ = arrayOfObject;
    }
    if (this.Ị - i != 0)
    {
      System.arraycopy(this.ﯿ, i, this.ﯿ, i + 1, this.Ị - i);
      System.arraycopy(this.ﹹ, i, this.ﹹ, i + 1, this.Ị - i);
    }
    this.ﯿ[i] = paramInt;
    this.ﹹ[i] = paramE;
    this.Ị += 1;
  }
  
  public void remove(int paramInt)
  {
    delete(paramInt);
  }
  
  public void removeAt(int paramInt)
  {
    if (this.ﹹ[paramInt] != ﭤ)
    {
      this.ﹹ[paramInt] = ﭤ;
      this.ﯧ = true;
    }
  }
  
  public int size()
  {
    if (this.ﯧ) {
      gc();
    }
    return this.Ị;
  }
  
  public String toString()
  {
    if (size() <= 0) {
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
      localStringBuilder.append(keyAt(i));
      localStringBuilder.append('=');
      Object localObject = valueAt(i);
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
  
  public E valueAt(int paramInt)
  {
    if (this.ﯧ) {
      gc();
    }
    return this.ﹹ[paramInt];
  }
  
  public ﹸ<E> ᕀ()
  {
    Object localObject = null;
    try
    {
      ﹸ localﹸ = (ﹸ)super.clone();
      localObject = localﹸ;
      localﹸ.ﯿ = ((int[])this.ﯿ.clone());
      localObject = localﹸ;
      localﹸ.ﹹ = ((Object[])this.ﹹ.clone());
      return localﹸ;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return localObject;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¹¸
 * JD-Core Version:    0.7.0.1
 */