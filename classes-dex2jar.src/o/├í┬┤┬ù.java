package o;

import java.util.ArrayList;
import java.util.List;

public class ᴗ
  implements 丨.if
{
  private ﯨ.if<ᴗ.ˊ> Ϲ = new ﯨ.ˊ(30);
  final ArrayList<ᴗ.ˊ> С = new ArrayList();
  final ArrayList<ᴗ.ˊ> У = new ArrayList();
  final ᴗ.if н;
  Runnable п;
  final boolean ѵ;
  final 丨 Ғ;
  
  public ᴗ(ᴗ.if paramif)
  {
    this(paramif, false);
  }
  
  ᴗ(ᴗ.if paramif, boolean paramBoolean)
  {
    this.н = paramif;
    this.ѵ = paramBoolean;
    this.Ғ = new 丨(this);
  }
  
  private void ʻ(ᴗ.ˊ paramˊ)
  {
    this.У.add(paramˊ);
    switch (paramˊ.ʳ)
    {
    default: 
      break;
    case 0: 
      this.н.ᵎ(paramˊ.Ҭ, paramˊ.ӟ);
      return;
    case 3: 
      this.н.ᵔ(paramˊ.Ҭ, paramˊ.ӟ);
      return;
    case 1: 
      this.н.ٴ(paramˊ.Ҭ, paramˊ.ӟ);
      return;
    case 2: 
      this.н.ᴵ(paramˊ.Ҭ, paramˊ.ӟ);
      return;
    }
    throw new IllegalArgumentException("Unknown update op type for " + paramˊ);
  }
  
  private void ˊ(ᴗ.ˊ paramˊ)
  {
    ʻ(paramˊ);
  }
  
  private void ˋ(ᴗ.ˊ paramˊ)
  {
    int i2 = paramˊ.Ҭ;
    int n = 0;
    int m = paramˊ.Ҭ + paramˊ.ӟ;
    int i1 = -1;
    int k;
    for (int i = paramˊ.Ҭ; i < m; i = k)
    {
      int j = 0;
      k = 0;
      if ((this.н.ᒢ(i) != null) || (Ꭵ(i)))
      {
        if (i1 == 0)
        {
          ˏ(ʻ(1, i2, n));
          k = 1;
        }
        j = 1;
      }
      else
      {
        if (i1 == 1)
        {
          ʻ(ʻ(1, i2, n));
          j = 1;
        }
        i1 = 0;
        k = j;
        j = i1;
      }
      if (k != 0)
      {
        k = i - n;
        m -= n;
        i = 1;
      }
      else
      {
        n += 1;
        k = i;
        i = n;
      }
      k += 1;
      n = i;
      i1 = j;
    }
    ᴗ.ˊ localˊ = paramˊ;
    if (n != paramˊ.ӟ)
    {
      ʼ(paramˊ);
      localˊ = ʻ(1, i2, n);
    }
    if (i1 == 0)
    {
      ˏ(localˊ);
      return;
    }
    ʻ(localˊ);
  }
  
  private void ˎ(ᴗ.ˊ paramˊ)
  {
    int j = paramˊ.Ҭ;
    int k = 0;
    int i3 = paramˊ.Ҭ;
    int i4 = paramˊ.ӟ;
    int i2 = -1;
    int i = paramˊ.Ҭ;
    while (i < i3 + i4)
    {
      int n;
      int m;
      int i1;
      if ((this.н.ᒢ(i) != null) || (Ꭵ(i)))
      {
        n = j;
        m = k;
        if (i2 == 0)
        {
          ˏ(ʻ(2, j, k));
          m = 0;
          n = i;
        }
        k = 1;
        j = n;
        i1 = m;
        m = k;
      }
      else
      {
        n = j;
        i1 = k;
        if (i2 == 1)
        {
          ʻ(ʻ(2, j, k));
          i1 = 0;
          n = i;
        }
        m = 0;
        j = n;
      }
      k = i1 + 1;
      i += 1;
      i2 = m;
    }
    ᴗ.ˊ localˊ = paramˊ;
    if (k != paramˊ.ӟ)
    {
      ʼ(paramˊ);
      localˊ = ʻ(2, j, k);
    }
    if (i2 == 0)
    {
      ˏ(localˊ);
      return;
    }
    ʻ(localˊ);
  }
  
  private void ˏ(ᴗ.ˊ paramˊ)
  {
    if ((paramˊ.ʳ == 0) || (paramˊ.ʳ == 3)) {
      throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }
    int n = ﹳ(paramˊ.Ҭ, paramˊ.ʳ);
    int i1 = 1;
    int j = paramˊ.Ҭ;
    int k;
    switch (paramˊ.ʳ)
    {
    default: 
      break;
    case 2: 
      k = 1;
      break;
    case 1: 
      k = 0;
      break;
    }
    throw new IllegalArgumentException("op should be remove or update." + paramˊ);
    int m = 1;
    while (m < paramˊ.ӟ)
    {
      int i2 = ﹳ(paramˊ.Ҭ + k * m, paramˊ.ʳ);
      int i = 0;
      switch (paramˊ.ʳ)
      {
      default: 
        break;
      case 2: 
        if (i2 == n + 1) {
          i = 1;
        } else {
          i = 0;
        }
        break;
      case 1: 
        if (i2 == n) {
          i = 1;
        } else {
          i = 0;
        }
        break;
      }
      if (i != 0)
      {
        i = i1 + 1;
      }
      else
      {
        ᴗ.ˊ localˊ = ʻ(paramˊ.ʳ, n, i1);
        ˊ(localˊ, j);
        ʼ(localˊ);
        i = j;
        if (paramˊ.ʳ == 2) {
          i = j + i1;
        }
        n = i2;
        i1 = 1;
        j = i;
        i = i1;
      }
      m += 1;
      i1 = i;
    }
    ʼ(paramˊ);
    if (i1 > 0)
    {
      paramˊ = ʻ(paramˊ.ʳ, n, i1);
      ˊ(paramˊ, j);
      ʼ(paramˊ);
    }
  }
  
  private boolean Ꭵ(int paramInt)
  {
    int k = this.У.size();
    int i = 0;
    while (i < k)
    {
      ᴗ.ˊ localˊ = (ᴗ.ˊ)this.У.get(i);
      if (localˊ.ʳ == 3)
      {
        if (ﾞ(localˊ.ӟ, i + 1) == paramInt) {
          return true;
        }
      }
      else if (localˊ.ʳ == 0)
      {
        int m = localˊ.Ҭ;
        int n = localˊ.ӟ;
        int j = localˊ.Ҭ;
        while (j < m + n)
        {
          if (ﾞ(j, i + 1) == paramInt) {
            return true;
          }
          j += 1;
        }
      }
      i += 1;
    }
    return false;
  }
  
  private void ᐝ(ᴗ.ˊ paramˊ)
  {
    ʻ(paramˊ);
  }
  
  private int ﹳ(int paramInt1, int paramInt2)
  {
    int j = this.У.size() - 1;
    ᴗ.ˊ localˊ;
    for (int i = paramInt1; j >= 0; i = paramInt1)
    {
      localˊ = (ᴗ.ˊ)this.У.get(j);
      if (localˊ.ʳ == 3)
      {
        int k;
        if (localˊ.Ҭ < localˊ.ӟ)
        {
          paramInt1 = localˊ.Ҭ;
          k = localˊ.ӟ;
        }
        else
        {
          paramInt1 = localˊ.ӟ;
          k = localˊ.Ҭ;
        }
        if ((i >= paramInt1) && (i <= k))
        {
          if (paramInt1 == localˊ.Ҭ)
          {
            if (paramInt2 == 0) {
              localˊ.ӟ += 1;
            } else if (paramInt2 == 1) {
              localˊ.ӟ -= 1;
            }
            paramInt1 = i + 1;
          }
          else
          {
            if (paramInt2 == 0) {
              localˊ.Ҭ += 1;
            } else if (paramInt2 == 1) {
              localˊ.Ҭ -= 1;
            }
            paramInt1 = i - 1;
          }
        }
        else
        {
          paramInt1 = i;
          if (i < localˊ.Ҭ) {
            if (paramInt2 == 0)
            {
              localˊ.Ҭ += 1;
              localˊ.ӟ += 1;
              paramInt1 = i;
            }
            else
            {
              paramInt1 = i;
              if (paramInt2 == 1)
              {
                localˊ.Ҭ -= 1;
                localˊ.ӟ -= 1;
                paramInt1 = i;
              }
            }
          }
        }
      }
      else if (localˊ.Ҭ <= i)
      {
        if (localˊ.ʳ == 0)
        {
          paramInt1 = i - localˊ.ӟ;
        }
        else
        {
          paramInt1 = i;
          if (localˊ.ʳ == 1) {
            paramInt1 = i + localˊ.ӟ;
          }
        }
      }
      else if (paramInt2 == 0)
      {
        localˊ.Ҭ += 1;
        paramInt1 = i;
      }
      else
      {
        paramInt1 = i;
        if (paramInt2 == 1)
        {
          localˊ.Ҭ -= 1;
          paramInt1 = i;
        }
      }
      j -= 1;
    }
    paramInt1 = this.У.size() - 1;
    while (paramInt1 >= 0)
    {
      localˊ = (ᴗ.ˊ)this.У.get(paramInt1);
      if (localˊ.ʳ == 3)
      {
        if ((localˊ.ӟ == localˊ.Ҭ) || (localˊ.ӟ < 0))
        {
          this.У.remove(paramInt1);
          ʼ(localˊ);
        }
      }
      else if (localˊ.ӟ <= 0)
      {
        this.У.remove(paramInt1);
        ʼ(localˊ);
      }
      paramInt1 -= 1;
    }
    return i;
  }
  
  public void reset()
  {
    ˎ(this.С);
    ˎ(this.У);
  }
  
  public boolean ʹ(int paramInt1, int paramInt2)
  {
    this.С.add(ʻ(2, paramInt1, paramInt2));
    return this.С.size() == 1;
  }
  
  public ᴗ.ˊ ʻ(int paramInt1, int paramInt2, int paramInt3)
  {
    ᴗ.ˊ localˊ = (ᴗ.ˊ)this.Ϲ.ᐩ();
    if (localˊ == null) {
      return new ᴗ.ˊ(paramInt1, paramInt2, paramInt3);
    }
    localˊ.ʳ = paramInt1;
    localˊ.Ҭ = paramInt2;
    localˊ.ӟ = paramInt3;
    return localˊ;
  }
  
  public void ʼ(ᴗ.ˊ paramˊ)
  {
    if (!this.ѵ) {
      this.Ϲ.ˏ(paramˊ);
    }
  }
  
  void ˊ(ᴗ.ˊ paramˊ, int paramInt)
  {
    this.н.ʽ(paramˊ);
    switch (paramˊ.ʳ)
    {
    default: 
      break;
    case 1: 
      this.н.י(paramInt, paramˊ.ӟ);
      return;
    case 2: 
      this.н.ᴵ(paramInt, paramˊ.ӟ);
      return;
    }
    throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
  }
  
  void ˎ(List<ᴗ.ˊ> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      ʼ((ᴗ.ˊ)paramList.get(i));
      i += 1;
    }
    paramList.clear();
  }
  
  public boolean ՙ(int paramInt1, int paramInt2)
  {
    this.С.add(ʻ(0, paramInt1, paramInt2));
    return this.С.size() == 1;
  }
  
  public int ᐤ(int paramInt)
  {
    return ﾞ(paramInt, 0);
  }
  
  public int ᒡ(int paramInt)
  {
    int m = this.С.size();
    int k = 0;
    for (int i = paramInt; k < m; i = paramInt)
    {
      ᴗ.ˊ localˊ = (ᴗ.ˊ)this.С.get(k);
      paramInt = i;
      switch (localˊ.ʳ)
      {
      default: 
        paramInt = i;
        break;
      case 0: 
        paramInt = i;
        if (localˊ.Ҭ <= i) {
          paramInt = i + localˊ.ӟ;
        }
        break;
      case 1: 
        paramInt = i;
        if (localˊ.Ҭ <= i)
        {
          if (localˊ.Ҭ + localˊ.ӟ > i) {
            return -1;
          }
          paramInt = i - localˊ.ӟ;
        }
        break;
      case 3: 
        if (localˊ.Ҭ == i)
        {
          paramInt = localˊ.ӟ;
        }
        else
        {
          int j = i;
          if (localˊ.Ҭ < i) {
            j = i - 1;
          }
          paramInt = j;
          if (localˊ.ӟ <= j) {
            paramInt = j + 1;
          }
        }
        break;
      }
      k += 1;
    }
    return i;
  }
  
  public void ﭤ()
  {
    this.Ғ.ᐝ(this.С);
    int j = this.С.size();
    int i = 0;
    while (i < j)
    {
      ᴗ.ˊ localˊ = (ᴗ.ˊ)this.С.get(i);
      switch (localˊ.ʳ)
      {
      default: 
        break;
      case 0: 
        ᐝ(localˊ);
        break;
      case 1: 
        ˋ(localˊ);
        break;
      case 2: 
        ˎ(localˊ);
        break;
      case 3: 
        ˊ(localˊ);
      }
      if (this.п != null) {
        this.п.run();
      }
      i += 1;
    }
    this.С.clear();
  }
  
  public void ﯧ()
  {
    int j = this.У.size();
    int i = 0;
    while (i < j)
    {
      this.н.ͺ((ᴗ.ˊ)this.У.get(i));
      i += 1;
    }
    ˎ(this.У);
  }
  
  public boolean ﯿ()
  {
    return this.С.size() > 0;
  }
  
  public void ﹹ()
  {
    ﯧ();
    int j = this.С.size();
    int i = 0;
    while (i < j)
    {
      ᴗ.ˊ localˊ = (ᴗ.ˊ)this.С.get(i);
      switch (localˊ.ʳ)
      {
      default: 
        break;
      case 0: 
        this.н.ͺ(localˊ);
        this.н.ᵎ(localˊ.Ҭ, localˊ.ӟ);
        break;
      case 1: 
        this.н.ͺ(localˊ);
        this.н.י(localˊ.Ҭ, localˊ.ӟ);
        break;
      case 2: 
        this.н.ͺ(localˊ);
        this.н.ᴵ(localˊ.Ҭ, localˊ.ӟ);
        break;
      case 3: 
        this.н.ͺ(localˊ);
        this.н.ᵔ(localˊ.Ҭ, localˊ.ӟ);
      }
      if (this.п != null) {
        this.п.run();
      }
      i += 1;
    }
    ˎ(this.С);
  }
  
  int ﾞ(int paramInt1, int paramInt2)
  {
    int k = this.У.size();
    int j = paramInt2;
    for (paramInt2 = paramInt1; j < k; paramInt2 = paramInt1)
    {
      ᴗ.ˊ localˊ = (ᴗ.ˊ)this.У.get(j);
      if (localˊ.ʳ == 3)
      {
        if (localˊ.Ҭ == paramInt2)
        {
          paramInt1 = localˊ.ӟ;
        }
        else
        {
          int i = paramInt2;
          if (localˊ.Ҭ < paramInt2) {
            i = paramInt2 - 1;
          }
          paramInt1 = i;
          if (localˊ.ӟ <= i) {
            paramInt1 = i + 1;
          }
        }
      }
      else
      {
        paramInt1 = paramInt2;
        if (localˊ.Ҭ <= paramInt2) {
          if (localˊ.ʳ == 1)
          {
            if (paramInt2 < localˊ.Ҭ + localˊ.ӟ) {
              return -1;
            }
            paramInt1 = paramInt2 - localˊ.ӟ;
          }
          else
          {
            paramInt1 = paramInt2;
            if (localˊ.ʳ == 0) {
              paramInt1 = paramInt2 + localˊ.ӟ;
            }
          }
        }
      }
      j += 1;
    }
    return paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´
 * JD-Core Version:    0.7.0.1
 */