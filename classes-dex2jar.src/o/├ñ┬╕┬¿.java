package o;

import java.util.List;

class 丨
{
  final 丨.if C;
  
  public 丨(丨.if paramif)
  {
    this.C = paramif;
  }
  
  private int ʻ(List<ᴗ.ˊ> paramList)
  {
    int j = 0;
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      int k;
      if (((ᴗ.ˊ)paramList.get(i)).ʳ == 3)
      {
        k = j;
        if (j != 0) {
          return i;
        }
      }
      else
      {
        k = 1;
      }
      i -= 1;
      j = k;
    }
    return -1;
  }
  
  private void ˊ(List<ᴗ.ˊ> paramList, int paramInt1, int paramInt2)
  {
    ᴗ.ˊ localˊ1 = (ᴗ.ˊ)paramList.get(paramInt1);
    ᴗ.ˊ localˊ2 = (ᴗ.ˊ)paramList.get(paramInt2);
    switch (localˊ2.ʳ)
    {
    default: 
      return;
    case 1: 
      ˊ(paramList, paramInt1, localˊ1, paramInt2, localˊ2);
      return;
    case 0: 
      ˋ(paramList, paramInt1, localˊ1, paramInt2, localˊ2);
      return;
    }
    ˎ(paramList, paramInt1, localˊ1, paramInt2, localˊ2);
  }
  
  private void ˋ(List<ᴗ.ˊ> paramList, int paramInt1, ᴗ.ˊ paramˊ1, int paramInt2, ᴗ.ˊ paramˊ2)
  {
    int i = 0;
    if (paramˊ1.ӟ < paramˊ2.Ҭ) {
      i = 0 - 1;
    }
    int j = i;
    if (paramˊ1.Ҭ < paramˊ2.Ҭ) {
      j = i + 1;
    }
    if (paramˊ2.Ҭ <= paramˊ1.Ҭ) {
      paramˊ1.Ҭ += paramˊ2.ӟ;
    }
    if (paramˊ2.Ҭ <= paramˊ1.ӟ) {
      paramˊ1.ӟ += paramˊ2.ӟ;
    }
    paramˊ2.Ҭ += j;
    paramList.set(paramInt1, paramˊ2);
    paramList.set(paramInt2, paramˊ1);
  }
  
  void ˊ(List<ᴗ.ˊ> paramList, int paramInt1, ᴗ.ˊ paramˊ1, int paramInt2, ᴗ.ˊ paramˊ2)
  {
    ᴗ.ˊ localˊ = null;
    int k = 0;
    int m;
    int i;
    int j;
    if (paramˊ1.Ҭ < paramˊ1.ӟ)
    {
      m = 0;
      i = k;
      j = m;
      if (paramˊ2.Ҭ == paramˊ1.Ҭ)
      {
        i = k;
        j = m;
        if (paramˊ2.ӟ == paramˊ1.ӟ - paramˊ1.Ҭ)
        {
          i = 1;
          j = m;
        }
      }
    }
    else
    {
      m = 1;
      i = k;
      j = m;
      if (paramˊ2.Ҭ == paramˊ1.ӟ + 1)
      {
        i = k;
        j = m;
        if (paramˊ2.ӟ == paramˊ1.Ҭ - paramˊ1.ӟ)
        {
          i = 1;
          j = m;
        }
      }
    }
    if (paramˊ1.ӟ < paramˊ2.Ҭ)
    {
      paramˊ2.Ҭ -= 1;
    }
    else if (paramˊ1.ӟ < paramˊ2.Ҭ + paramˊ2.ӟ)
    {
      paramˊ2.ӟ -= 1;
      paramˊ1.ʳ = 1;
      paramˊ1.ӟ = 1;
      if (paramˊ2.ӟ == 0)
      {
        paramList.remove(paramInt2);
        this.C.ʼ(paramˊ2);
      }
      return;
    }
    if (paramˊ1.Ҭ <= paramˊ2.Ҭ)
    {
      paramˊ2.Ҭ += 1;
    }
    else if (paramˊ1.Ҭ < paramˊ2.Ҭ + paramˊ2.ӟ)
    {
      k = paramˊ2.Ҭ;
      m = paramˊ2.ӟ;
      int n = paramˊ1.Ҭ;
      localˊ = this.C.ʻ(1, paramˊ1.Ҭ + 1, k + m - n);
      paramˊ2.ӟ = (paramˊ1.Ҭ - paramˊ2.Ҭ);
    }
    if (i != 0)
    {
      paramList.set(paramInt1, paramˊ2);
      paramList.remove(paramInt2);
      this.C.ʼ(paramˊ1);
      return;
    }
    if (j != 0)
    {
      if (localˊ != null)
      {
        if (paramˊ1.Ҭ > localˊ.Ҭ) {
          paramˊ1.Ҭ -= localˊ.ӟ;
        }
        if (paramˊ1.ӟ > localˊ.Ҭ) {
          paramˊ1.ӟ -= localˊ.ӟ;
        }
      }
      if (paramˊ1.Ҭ > paramˊ2.Ҭ) {
        paramˊ1.Ҭ -= paramˊ2.ӟ;
      }
      if (paramˊ1.ӟ > paramˊ2.Ҭ) {
        paramˊ1.ӟ -= paramˊ2.ӟ;
      }
    }
    else
    {
      if (localˊ != null)
      {
        if (paramˊ1.Ҭ >= localˊ.Ҭ) {
          paramˊ1.Ҭ -= localˊ.ӟ;
        }
        if (paramˊ1.ӟ >= localˊ.Ҭ) {
          paramˊ1.ӟ -= localˊ.ӟ;
        }
      }
      if (paramˊ1.Ҭ >= paramˊ2.Ҭ) {
        paramˊ1.Ҭ -= paramˊ2.ӟ;
      }
      if (paramˊ1.ӟ >= paramˊ2.Ҭ) {
        paramˊ1.ӟ -= paramˊ2.ӟ;
      }
    }
    paramList.set(paramInt1, paramˊ2);
    if (paramˊ1.Ҭ != paramˊ1.ӟ) {
      paramList.set(paramInt2, paramˊ1);
    } else {
      paramList.remove(paramInt2);
    }
    if (localˊ != null) {
      paramList.add(paramInt1, localˊ);
    }
  }
  
  void ˎ(List<ᴗ.ˊ> paramList, int paramInt1, ᴗ.ˊ paramˊ1, int paramInt2, ᴗ.ˊ paramˊ2)
  {
    ᴗ.ˊ localˊ1 = null;
    ᴗ.ˊ localˊ2 = null;
    if (paramˊ1.ӟ < paramˊ2.Ҭ)
    {
      paramˊ2.Ҭ -= 1;
    }
    else if (paramˊ1.ӟ < paramˊ2.Ҭ + paramˊ2.ӟ)
    {
      paramˊ2.ӟ -= 1;
      localˊ1 = this.C.ʻ(2, paramˊ1.Ҭ, 1);
    }
    if (paramˊ1.Ҭ <= paramˊ2.Ҭ)
    {
      paramˊ2.Ҭ += 1;
    }
    else if (paramˊ1.Ҭ < paramˊ2.Ҭ + paramˊ2.ӟ)
    {
      int i = paramˊ2.Ҭ + paramˊ2.ӟ - paramˊ1.Ҭ;
      localˊ2 = this.C.ʻ(2, paramˊ1.Ҭ + 1, i);
      paramˊ2.ӟ -= i;
    }
    paramList.set(paramInt2, paramˊ1);
    if (paramˊ2.ӟ > 0)
    {
      paramList.set(paramInt1, paramˊ2);
    }
    else
    {
      paramList.remove(paramInt1);
      this.C.ʼ(paramˊ2);
    }
    if (localˊ1 != null) {
      paramList.add(paramInt1, localˊ1);
    }
    if (localˊ2 != null) {
      paramList.add(paramInt1, localˊ2);
    }
  }
  
  void ᐝ(List<ᴗ.ˊ> paramList)
  {
    for (;;)
    {
      int i = ʻ(paramList);
      if (i == -1) {
        break;
      }
      ˊ(paramList, i, i + 1);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ä¸¨
 * JD-Core Version:    0.7.0.1
 */