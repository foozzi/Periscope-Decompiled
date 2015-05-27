package o;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class jz
  implements Closeable
{
  private static final char[] Ng = ")]}'\n".toCharArray();
  private boolean Nh = false;
  private final char[] Ni = new char[1024];
  private int Nj = 0;
  private int Nk = 0;
  private int Nl = 0;
  private long Nm;
  private int Nn;
  private String No;
  private int[] Np = new int[32];
  private int Nq = 0;
  private String[] Nr;
  private int[] Ns;
  private final Reader in;
  private int limit = 0;
  private int pos = 0;
  
  static
  {
    hi.Lb = new ka();
  }
  
  public jz(Reader paramReader)
  {
    int[] arrayOfInt = this.Np;
    int i = this.Nq;
    this.Nq = (i + 1);
    arrayOfInt[i] = 6;
    this.Nr = new String[32];
    this.Ns = new int[32];
    if (paramReader == null) {
      throw new NullPointerException("in == null");
    }
    this.in = paramReader;
  }
  
  private int W()
  {
    int i = this.Np[(this.Nq - 1)];
    if (i == 1)
    {
      this.Np[(this.Nq - 1)] = 2;
    }
    else if (i == 2)
    {
      switch (ˢ(true))
      {
      default: 
        break;
      case 93: 
        this.Nl = 4;
        return 4;
      case 59: 
        ab();
      case 44: 
        break;
      }
      throw ᵓ("Unterminated array");
    }
    else
    {
      if ((i == 3) || (i == 5))
      {
        this.Np[(this.Nq - 1)] = 4;
        if (i == 5)
        {
          switch (ˢ(true))
          {
          default: 
            break;
          case 125: 
            this.Nl = 2;
            return 2;
          case 59: 
            ab();
          case 44: 
            break;
          }
          throw ᵓ("Unterminated object");
        }
        int j = ˢ(true);
        switch (j)
        {
        default: 
          break;
        case 34: 
          this.Nl = 13;
          return 13;
        case 39: 
          ab();
          this.Nl = 12;
          return 12;
        case 125: 
          if (i != 5)
          {
            this.Nl = 2;
            return 2;
          }
          throw ᵓ("Expected name");
        }
        ab();
        this.pos -= 1;
        if (ˊ((char)j))
        {
          this.Nl = 14;
          return 14;
        }
        throw ᵓ("Expected name");
      }
      if (i == 4)
      {
        this.Np[(this.Nq - 1)] = 5;
        switch (ˢ(true))
        {
        default: 
          break;
        case 58: 
          break;
        case 61: 
          ab();
          if (((this.pos >= this.limit) && (!ᵖ(1))) || (this.Ni[this.pos] != '>')) {
            break label427;
          }
          this.pos += 1;
          break;
        }
        throw ᵓ("Expected ':'");
      }
      else
      {
        label427:
        if (i == 6)
        {
          if (this.Nh) {
            ae();
          }
          this.Np[(this.Nq - 1)] = 7;
        }
        else if (i == 7)
        {
          if (ˢ(false) == -1)
          {
            this.Nl = 17;
            return 17;
          }
          ab();
          this.pos -= 1;
        }
        else if (i == 8)
        {
          throw new IllegalStateException("JsonReader is closed");
        }
      }
    }
    switch (ˢ(true))
    {
    default: 
      break;
    case 93: 
      if (i == 1)
      {
        this.Nl = 4;
        return 4;
      }
    case 44: 
    case 59: 
      if ((i == 1) || (i == 2))
      {
        ab();
        this.pos -= 1;
        this.Nl = 7;
        return 7;
      }
      throw ᵓ("Unexpected value");
    case 39: 
      ab();
      this.Nl = 8;
      return 8;
    case 34: 
      if (this.Nq == 1) {
        ab();
      }
      this.Nl = 9;
      return 9;
    case 91: 
      this.Nl = 3;
      return 3;
    }
    this.Nl = 1;
    return 1;
    this.pos -= 1;
    if (this.Nq == 1) {
      ab();
    }
    i = X();
    if (i != 0) {
      return i;
    }
    i = Y();
    if (i != 0) {
      return i;
    }
    if (!ˊ(this.Ni[this.pos])) {
      throw ᵓ("Expected value");
    }
    ab();
    this.Nl = 10;
    return 10;
  }
  
  private int X()
  {
    int i = this.Ni[this.pos];
    String str1;
    String str2;
    if ((i == 116) || (i == 84))
    {
      str1 = "true";
      str2 = "TRUE";
      i = 5;
    }
    else if ((i == 102) || (i == 70))
    {
      str1 = "false";
      str2 = "FALSE";
      i = 6;
    }
    else if ((i == 110) || (i == 78))
    {
      str1 = "null";
      str2 = "NULL";
      i = 7;
    }
    else
    {
      return 0;
    }
    int k = str1.length();
    int j = 1;
    while (j < k)
    {
      if ((this.pos + j >= this.limit) && (!ᵖ(j + 1))) {
        return 0;
      }
      int m = this.Ni[(this.pos + j)];
      if ((m != str1.charAt(j)) && (m != str2.charAt(j))) {
        return 0;
      }
      j += 1;
    }
    if (((this.pos + k < this.limit) || (ᵖ(k + 1))) && (ˊ(this.Ni[(this.pos + k)]))) {
      return 0;
    }
    this.pos += k;
    this.Nl = i;
    return i;
  }
  
  private int Y()
  {
    char[] arrayOfChar = this.Ni;
    int i6 = this.pos;
    int i5 = this.limit;
    long l1 = 0L;
    int m = 0;
    int k = 1;
    int i2 = 0;
    int j = 0;
    for (;;)
    {
      int i1 = i6;
      int n = i5;
      if (i6 + j == i5)
      {
        if (j == arrayOfChar.length) {
          return 0;
        }
        if (!ᵖ(j + 1)) {
          break;
        }
        i1 = this.pos;
        n = this.limit;
      }
      char c = arrayOfChar[(i1 + j)];
      int i3;
      int i;
      long l2;
      int i4;
      switch (c)
      {
      default: 
        break;
      case '-': 
        if (i2 == 0)
        {
          i3 = 1;
          i = 1;
          l2 = l1;
          i4 = k;
          break label477;
        }
        if (i2 == 5)
        {
          i = 6;
          l2 = l1;
          i3 = m;
          i4 = k;
          break label477;
        }
        return 0;
      case '+': 
        if (i2 == 5)
        {
          i = 6;
          l2 = l1;
          i3 = m;
          i4 = k;
          break label477;
        }
        return 0;
      case 'E': 
      case 'e': 
        if ((i2 == 2) || (i2 == 4))
        {
          i = 5;
          l2 = l1;
          i3 = m;
          i4 = k;
          break label477;
        }
        return 0;
      case '.': 
        if (i2 == 2)
        {
          i = 3;
          l2 = l1;
          i3 = m;
          i4 = k;
          break label477;
        }
        return 0;
      }
      if ((c < '0') || (c > '9'))
      {
        if (!ˊ(c)) {
          break;
        }
        return 0;
      }
      if ((i2 == 1) || (i2 == 0))
      {
        l2 = -(c - '0');
        i = 2;
        i3 = m;
        i4 = k;
      }
      else if (i2 == 2)
      {
        if (l1 == 0L) {
          return 0;
        }
        l2 = 10L * l1 - (c - '0');
        if ((l1 > -922337203685477580L) || ((l1 == -922337203685477580L) && (l2 < l1))) {
          i = 1;
        } else {
          i = 0;
        }
        i4 = k & i;
        i3 = m;
        i = i2;
      }
      else if (i2 == 3)
      {
        i = 4;
        l2 = l1;
        i3 = m;
        i4 = k;
      }
      else if (i2 != 5)
      {
        l2 = l1;
        i3 = m;
        i4 = k;
        i = i2;
        if (i2 != 6) {}
      }
      else
      {
        i = 7;
        i4 = k;
        i3 = m;
        l2 = l1;
      }
      label477:
      j += 1;
      i6 = i1;
      i5 = n;
      l1 = l2;
      m = i3;
      k = i4;
      i2 = i;
    }
    if ((i2 == 2) && (k != 0) && ((l1 != -9223372036854775808L) || (m != 0)))
    {
      if (m == 0) {
        l1 = -l1;
      }
      this.Nm = l1;
      this.pos += j;
      this.Nl = 15;
      return 15;
    }
    if ((i2 == 2) || (i2 == 4) || (i2 == 7))
    {
      this.Nn = j;
      this.Nl = 16;
      return 16;
    }
    return 0;
  }
  
  private String Z()
  {
    Object localObject1 = null;
    int i = 0;
    Object localObject2;
    int j;
    do
    {
      for (;;)
      {
        if (this.pos + i < this.limit)
        {
          switch (this.Ni[(this.pos + i)])
          {
          default: 
            break;
          case '#': 
          case '/': 
          case ';': 
          case '=': 
          case '\\': 
            ab();
          case '\t': 
          case '\n': 
          case '\f': 
          case '\r': 
          case ' ': 
          case ',': 
          case ':': 
          case '[': 
          case ']': 
          case '{': 
          case '}': 
            localObject2 = localObject1;
            j = i;
            break;
          }
          i += 1;
        }
        else
        {
          if (i >= this.Ni.length) {
            break;
          }
          localObject2 = localObject1;
          j = i;
          if (!ᵖ(i + 1)) {
            break label273;
          }
        }
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new StringBuilder();
      }
      ((StringBuilder)localObject2).append(this.Ni, this.pos, i);
      this.pos += i;
      j = 0;
      i = 0;
      localObject1 = localObject2;
    } while (ᵖ(1));
    label273:
    if (localObject2 == null)
    {
      localObject1 = new String(this.Ni, this.pos, j);
    }
    else
    {
      ((StringBuilder)localObject2).append(this.Ni, this.pos, j);
      localObject1 = ((StringBuilder)localObject2).toString();
    }
    this.pos += j;
    return localObject1;
  }
  
  private void aa()
  {
    do
    {
      int i = 0;
      while (this.pos + i < this.limit)
      {
        switch (this.Ni[(this.pos + i)])
        {
        default: 
          break;
        case '#': 
        case '/': 
        case ';': 
        case '=': 
        case '\\': 
          ab();
        case '\t': 
        case '\n': 
        case '\f': 
        case '\r': 
        case ' ': 
        case ',': 
        case ':': 
        case '[': 
        case ']': 
        case '{': 
        case '}': 
          this.pos += i;
          return;
        }
        i += 1;
      }
      this.pos += i;
    } while (ᵖ(1));
  }
  
  private void ab()
  {
    if (!this.Nh) {
      throw ᵓ("Use JsonReader.setLenient(true) to accept malformed JSON");
    }
  }
  
  private void ac()
  {
    while ((this.pos < this.limit) || (ᵖ(1)))
    {
      char[] arrayOfChar = this.Ni;
      int i = this.pos;
      this.pos = (i + 1);
      i = arrayOfChar[i];
      if (i == 10)
      {
        this.Nj += 1;
        this.Nk = this.pos;
        return;
      }
      if (i == 13) {
        return;
      }
    }
  }
  
  private char ad()
  {
    if ((this.pos == this.limit) && (!ᵖ(1))) {
      throw ᵓ("Unterminated escape sequence");
    }
    char[] arrayOfChar = this.Ni;
    int i = this.pos;
    this.pos = (i + 1);
    char c = arrayOfChar[i];
    switch (c)
    {
    default: 
      return c;
    case 'u': 
      if ((this.pos + 4 > this.limit) && (!ᵖ(4))) {
        throw ᵓ("Unterminated escape sequence");
      }
      c = '\000';
      int j = this.pos;
      i = j;
      while (i < j + 4)
      {
        int k = this.Ni[i];
        int m = (char)(c << '\004');
        if ((k >= 48) && (k <= 57)) {
          c = (char)(k - 48 + m);
        } else if ((k >= 97) && (k <= 102)) {
          c = (char)(k - 97 + 10 + m);
        } else if ((k >= 65) && (k <= 70)) {
          c = (char)(k - 65 + 10 + m);
        } else {
          throw new NumberFormatException("\\u" + new String(this.Ni, this.pos, 4));
        }
        i += 1;
      }
      this.pos += 4;
      return c;
    case 't': 
      return '\t';
    case 'b': 
      return '\b';
    case 'n': 
      return '\n';
    case 'r': 
      return '\r';
    case 'f': 
      return '\f';
    case '\n': 
      this.Nj += 1;
      this.Nk = this.pos;
    }
    return c;
  }
  
  private void ae()
  {
    ˢ(true);
    this.pos -= 1;
    if ((this.pos + Ng.length > this.limit) && (!ᵖ(Ng.length))) {
      return;
    }
    int i = 0;
    while (i < Ng.length)
    {
      if (this.Ni[(this.pos + i)] != Ng[i]) {
        return;
      }
      i += 1;
    }
    this.pos += Ng.length;
  }
  
  private int getColumnNumber()
  {
    return this.pos - this.Nk + 1;
  }
  
  private int getLineNumber()
  {
    return this.Nj + 1;
  }
  
  private boolean ˊ(char paramChar)
  {
    switch (paramChar)
    {
    default: 
      break;
    case '#': 
    case '/': 
    case ';': 
    case '=': 
    case '\\': 
      ab();
    case '\t': 
    case '\n': 
    case '\f': 
    case '\r': 
    case ' ': 
    case ',': 
    case ':': 
    case '[': 
    case ']': 
    case '{': 
    case '}': 
      return false;
    }
    return true;
  }
  
  private String ˋ(char paramChar)
  {
    char[] arrayOfChar = this.Ni;
    StringBuilder localStringBuilder = new StringBuilder();
    for (;;)
    {
      int i = this.pos;
      int k = this.limit;
      int n;
      for (int j = i; i < k; j = n)
      {
        int i1 = i + 1;
        char c = arrayOfChar[i];
        if (c == paramChar)
        {
          this.pos = i1;
          localStringBuilder.append(arrayOfChar, j, i1 - j - 1);
          return localStringBuilder.toString();
        }
        int m;
        if (c == '\\')
        {
          this.pos = i1;
          localStringBuilder.append(arrayOfChar, j, i1 - j - 1);
          localStringBuilder.append(ad());
          i = this.pos;
          m = this.limit;
          n = i;
        }
        else
        {
          i = i1;
          m = k;
          n = j;
          if (c == '\n')
          {
            this.Nj += 1;
            this.Nk = i1;
            n = j;
            m = k;
            i = i1;
          }
        }
        k = m;
      }
      localStringBuilder.append(arrayOfChar, j, i - j);
      this.pos = i;
      if (!ᵖ(1)) {
        throw ᵓ("Unterminated string");
      }
    }
  }
  
  private void ˎ(char paramChar)
  {
    char[] arrayOfChar = this.Ni;
    do
    {
      int i = this.pos;
      int k;
      for (int j = this.limit; i < j; j = k)
      {
        int m = i + 1;
        char c = arrayOfChar[i];
        if (c == paramChar)
        {
          this.pos = m;
          return;
        }
        if (c == '\\')
        {
          this.pos = m;
          ad();
          i = this.pos;
          k = this.limit;
        }
        else
        {
          i = m;
          k = j;
          if (c == '\n')
          {
            this.Nj += 1;
            this.Nk = m;
            k = j;
            i = m;
          }
        }
      }
      this.pos = i;
    } while (ᵖ(1));
    throw ᵓ("Unterminated string");
  }
  
  private int ˢ(boolean paramBoolean)
  {
    char[] arrayOfChar = this.Ni;
    int i = this.pos;
    int j = this.limit;
    for (;;)
    {
      int m = i;
      int k = j;
      if (i == j)
      {
        this.pos = i;
        if (!ᵖ(1)) {
          break;
        }
        m = this.pos;
        k = this.limit;
      }
      int n = m + 1;
      m = arrayOfChar[m];
      if (m == 10)
      {
        this.Nj += 1;
        this.Nk = n;
        i = n;
        j = k;
      }
      else
      {
        i = n;
        j = k;
        if (m != 32)
        {
          i = n;
          j = k;
          if (m != 13) {
            if (m == 9)
            {
              i = n;
              j = k;
            }
            else if (m == 47)
            {
              this.pos = n;
              if (n == k)
              {
                this.pos -= 1;
                boolean bool = ᵖ(2);
                this.pos += 1;
                if (!bool) {
                  return m;
                }
              }
              ab();
              switch (arrayOfChar[this.pos])
              {
              default: 
                return m;
              case '*': 
                this.pos += 1;
                if (!ᵌ("*/")) {
                  throw ᵓ("Unterminated comment");
                }
                i = this.pos + 2;
                j = this.limit;
                break;
              case '/': 
                this.pos += 1;
                ac();
                i = this.pos;
                j = this.limit;
                break;
              }
            }
            else if (m == 35)
            {
              this.pos = n;
              ab();
              ac();
              i = this.pos;
              j = this.limit;
            }
            else
            {
              this.pos = n;
              return m;
            }
          }
        }
      }
    }
    if (paramBoolean) {
      throw new EOFException("End of input at line " + getLineNumber() + " column " + getColumnNumber());
    }
    return -1;
  }
  
  private void ᵇ(int paramInt)
  {
    if (this.Nq == this.Np.length)
    {
      arrayOfInt1 = new int[this.Nq * 2];
      int[] arrayOfInt2 = new int[this.Nq * 2];
      String[] arrayOfString = new String[this.Nq * 2];
      System.arraycopy(this.Np, 0, arrayOfInt1, 0, this.Nq);
      System.arraycopy(this.Ns, 0, arrayOfInt2, 0, this.Nq);
      System.arraycopy(this.Nr, 0, arrayOfString, 0, this.Nq);
      this.Np = arrayOfInt1;
      this.Ns = arrayOfInt2;
      this.Nr = arrayOfString;
    }
    int[] arrayOfInt1 = this.Np;
    int i = this.Nq;
    this.Nq = (i + 1);
    arrayOfInt1[i] = paramInt;
  }
  
  private boolean ᵌ(String paramString)
  {
    while ((this.pos + paramString.length() <= this.limit) || (ᵖ(paramString.length())))
    {
      if (this.Ni[this.pos] == '\n')
      {
        this.Nj += 1;
        this.Nk = (this.pos + 1);
      }
      else
      {
        int i = 0;
        while (i < paramString.length())
        {
          if (this.Ni[(this.pos + i)] != paramString.charAt(i)) {
            break label105;
          }
          i += 1;
        }
        return true;
      }
      label105:
      this.pos += 1;
    }
    return false;
  }
  
  private IOException ᵓ(String paramString)
  {
    throw new kd(paramString + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
  }
  
  private boolean ᵖ(int paramInt)
  {
    char[] arrayOfChar = this.Ni;
    this.Nk -= this.pos;
    if (this.limit != this.pos)
    {
      this.limit -= this.pos;
      System.arraycopy(arrayOfChar, this.pos, arrayOfChar, 0, this.limit);
    }
    else
    {
      this.limit = 0;
    }
    this.pos = 0;
    int i;
    do
    {
      i = this.in.read(arrayOfChar, this.limit, arrayOfChar.length - this.limit);
      if (i == -1) {
        break;
      }
      this.limit += i;
      i = paramInt;
      if (this.Nj == 0)
      {
        i = paramInt;
        if (this.Nk == 0)
        {
          i = paramInt;
          if (this.limit > 0)
          {
            i = paramInt;
            if (arrayOfChar[0] == 65279)
            {
              this.pos += 1;
              this.Nk += 1;
              i = paramInt + 1;
            }
          }
        }
      }
      paramInt = i;
    } while (this.limit < i);
    return true;
    return false;
  }
  
  public kb J()
  {
    int j = this.Nl;
    int i = j;
    if (j == 0) {
      i = W();
    }
    switch (i)
    {
    default: 
      break;
    case 1: 
      return kb.Nv;
    case 2: 
      return kb.Nw;
    case 3: 
      return kb.Nt;
    case 4: 
      return kb.Nu;
    case 12: 
    case 13: 
    case 14: 
      return kb.Nx;
    case 5: 
    case 6: 
      return kb.NA;
    case 7: 
      return kb.NB;
    case 8: 
    case 9: 
    case 10: 
    case 11: 
      return kb.Ny;
    case 15: 
    case 16: 
      return kb.Nz;
    case 17: 
      return kb.NC;
    }
    throw new AssertionError();
  }
  
  public void beginArray()
  {
    int j = this.Nl;
    int i = j;
    if (j == 0) {
      i = W();
    }
    if (i == 3)
    {
      ᵇ(1);
      this.Ns[(this.Nq - 1)] = 0;
      this.Nl = 0;
      return;
    }
    throw new IllegalStateException("Expected BEGIN_ARRAY but was " + J() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
  }
  
  public void beginObject()
  {
    int j = this.Nl;
    int i = j;
    if (j == 0) {
      i = W();
    }
    if (i == 1)
    {
      ᵇ(3);
      this.Nl = 0;
      return;
    }
    throw new IllegalStateException("Expected BEGIN_OBJECT but was " + J() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
  }
  
  public void close()
  {
    this.Nl = 0;
    this.Np[0] = 8;
    this.Nq = 1;
    this.in.close();
  }
  
  public void endArray()
  {
    int j = this.Nl;
    int i = j;
    if (j == 0) {
      i = W();
    }
    if (i == 4)
    {
      this.Nq -= 1;
      int[] arrayOfInt = this.Ns;
      i = this.Nq - 1;
      arrayOfInt[i] += 1;
      this.Nl = 0;
      return;
    }
    throw new IllegalStateException("Expected END_ARRAY but was " + J() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
  }
  
  public void endObject()
  {
    int j = this.Nl;
    int i = j;
    if (j == 0) {
      i = W();
    }
    if (i == 2)
    {
      this.Nq -= 1;
      this.Nr[this.Nq] = null;
      int[] arrayOfInt = this.Ns;
      i = this.Nq - 1;
      arrayOfInt[i] += 1;
      this.Nl = 0;
      return;
    }
    throw new IllegalStateException("Expected END_OBJECT but was " + J() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
  }
  
  public String getPath()
  {
    StringBuilder localStringBuilder = new StringBuilder().append('$');
    int i = 0;
    int j = this.Nq;
    while (i < j)
    {
      switch (this.Np[i])
      {
      default: 
        break;
      case 1: 
      case 2: 
        localStringBuilder.append('[').append(this.Ns[i]).append(']');
        break;
      case 3: 
      case 4: 
      case 5: 
        localStringBuilder.append('.');
        if (this.Nr[i] != null) {
          localStringBuilder.append(this.Nr[i]);
        }
        break;
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public boolean hasNext()
  {
    int j = this.Nl;
    int i = j;
    if (j == 0) {
      i = W();
    }
    return (i != 2) && (i != 4);
  }
  
  public final boolean isLenient()
  {
    return this.Nh;
  }
  
  public boolean nextBoolean()
  {
    int j = this.Nl;
    int i = j;
    if (j == 0) {
      i = W();
    }
    int[] arrayOfInt;
    if (i == 5)
    {
      this.Nl = 0;
      arrayOfInt = this.Ns;
      i = this.Nq - 1;
      arrayOfInt[i] += 1;
      return true;
    }
    if (i == 6)
    {
      this.Nl = 0;
      arrayOfInt = this.Ns;
      i = this.Nq - 1;
      arrayOfInt[i] += 1;
      return false;
    }
    throw new IllegalStateException("Expected a boolean but was " + J() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
  }
  
  public double nextDouble()
  {
    int j = this.Nl;
    int i = j;
    if (j == 0) {
      i = W();
    }
    if (i == 15)
    {
      this.Nl = 0;
      arrayOfInt = this.Ns;
      i = this.Nq - 1;
      arrayOfInt[i] += 1;
      return this.Nm;
    }
    if (i == 16)
    {
      this.No = new String(this.Ni, this.pos, this.Nn);
      this.pos += this.Nn;
    }
    else if ((i == 8) || (i == 9))
    {
      char c;
      if (i == 8) {
        c = '\'';
      } else {
        c = '"';
      }
      this.No = ˋ(c);
    }
    else if (i == 10)
    {
      this.No = Z();
    }
    else if (i != 11)
    {
      throw new IllegalStateException("Expected a double but was " + J() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
    this.Nl = 11;
    double d = Double.parseDouble(this.No);
    if ((!this.Nh) && ((Double.isNaN(d)) || (Double.isInfinite(d)))) {
      throw new kd("JSON forbids NaN and infinities: " + d + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
    this.No = null;
    this.Nl = 0;
    int[] arrayOfInt = this.Ns;
    i = this.Nq - 1;
    arrayOfInt[i] += 1;
    return d;
  }
  
  public int nextInt()
  {
    int j = this.Nl;
    int i = j;
    if (j == 0) {
      i = W();
    }
    int[] arrayOfInt1;
    if (i == 15)
    {
      i = (int)this.Nm;
      if (this.Nm != i) {
        throw new NumberFormatException("Expected an int but was " + this.Nm + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
      }
      this.Nl = 0;
      arrayOfInt1 = this.Ns;
      j = this.Nq - 1;
      arrayOfInt1[j] += 1;
      return i;
    }
    if (i == 16)
    {
      this.No = new String(this.Ni, this.pos, this.Nn);
      this.pos += this.Nn;
    }
    else if ((i == 8) || (i == 9))
    {
      char c;
      if (i == 8) {
        c = '\'';
      } else {
        c = '"';
      }
      this.No = ˋ(c);
      try
      {
        i = Integer.parseInt(this.No);
        this.Nl = 0;
        arrayOfInt1 = this.Ns;
        j = this.Nq - 1;
        arrayOfInt1[j] += 1;
        return i;
      }
      catch (NumberFormatException localNumberFormatException) {}
    }
    else
    {
      throw new IllegalStateException("Expected an int but was " + J() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
    this.Nl = 11;
    double d = Double.parseDouble(this.No);
    i = (int)d;
    if (i != d) {
      throw new NumberFormatException("Expected an int but was " + this.No + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
    this.No = null;
    this.Nl = 0;
    int[] arrayOfInt2 = this.Ns;
    j = this.Nq - 1;
    arrayOfInt2[j] += 1;
    return i;
  }
  
  public long nextLong()
  {
    int j = this.Nl;
    int i = j;
    if (j == 0) {
      i = W();
    }
    int[] arrayOfInt1;
    if (i == 15)
    {
      this.Nl = 0;
      arrayOfInt1 = this.Ns;
      i = this.Nq - 1;
      arrayOfInt1[i] += 1;
      return this.Nm;
    }
    if (i == 16)
    {
      this.No = new String(this.Ni, this.pos, this.Nn);
      this.pos += this.Nn;
    }
    else if ((i == 8) || (i == 9))
    {
      char c;
      if (i == 8) {
        c = '\'';
      } else {
        c = '"';
      }
      this.No = ˋ(c);
      try
      {
        l = Long.parseLong(this.No);
        this.Nl = 0;
        arrayOfInt1 = this.Ns;
        i = this.Nq - 1;
        arrayOfInt1[i] += 1;
        return l;
      }
      catch (NumberFormatException localNumberFormatException) {}
    }
    else
    {
      throw new IllegalStateException("Expected a long but was " + J() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
    this.Nl = 11;
    double d = Double.parseDouble(this.No);
    long l = d;
    if (l != d) {
      throw new NumberFormatException("Expected a long but was " + this.No + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
    this.No = null;
    this.Nl = 0;
    int[] arrayOfInt2 = this.Ns;
    i = this.Nq - 1;
    arrayOfInt2[i] += 1;
    return l;
  }
  
  public String nextName()
  {
    int j = this.Nl;
    int i = j;
    if (j == 0) {
      i = W();
    }
    String str;
    if (i == 14) {
      str = Z();
    } else if (i == 12) {
      str = ˋ('\'');
    } else if (i == 13) {
      str = ˋ('"');
    } else {
      throw new IllegalStateException("Expected a name but was " + J() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
    this.Nl = 0;
    this.Nr[(this.Nq - 1)] = str;
    return str;
  }
  
  public void nextNull()
  {
    int j = this.Nl;
    int i = j;
    if (j == 0) {
      i = W();
    }
    if (i == 7)
    {
      this.Nl = 0;
      int[] arrayOfInt = this.Ns;
      i = this.Nq - 1;
      arrayOfInt[i] += 1;
      return;
    }
    throw new IllegalStateException("Expected null but was " + J() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
  }
  
  public String nextString()
  {
    int j = this.Nl;
    int i = j;
    if (j == 0) {
      i = W();
    }
    String str;
    if (i == 10)
    {
      str = Z();
    }
    else if (i == 8)
    {
      str = ˋ('\'');
    }
    else if (i == 9)
    {
      str = ˋ('"');
    }
    else if (i == 11)
    {
      str = this.No;
      this.No = null;
    }
    else if (i == 15)
    {
      str = Long.toString(this.Nm);
    }
    else if (i == 16)
    {
      str = new String(this.Ni, this.pos, this.Nn);
      this.pos += this.Nn;
    }
    else
    {
      throw new IllegalStateException("Expected a string but was " + J() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
    this.Nl = 0;
    int[] arrayOfInt = this.Ns;
    i = this.Nq - 1;
    arrayOfInt[i] += 1;
    return str;
  }
  
  public final void setLenient(boolean paramBoolean)
  {
    this.Nh = paramBoolean;
  }
  
  public void skipValue()
  {
    int j = 0;
    do
    {
      i = this.Nl;
      int k = i;
      if (i == 0) {
        k = W();
      }
      if (k == 3)
      {
        ᵇ(1);
        i = j + 1;
      }
      else if (k == 1)
      {
        ᵇ(3);
        i = j + 1;
      }
      else if (k == 4)
      {
        this.Nq -= 1;
        i = j - 1;
      }
      else if (k == 2)
      {
        this.Nq -= 1;
        i = j - 1;
      }
      else if ((k == 14) || (k == 10))
      {
        aa();
        i = j;
      }
      else if ((k == 8) || (k == 12))
      {
        ˎ('\'');
        i = j;
      }
      else if ((k == 9) || (k == 13))
      {
        ˎ('"');
        i = j;
      }
      else
      {
        i = j;
        if (k == 16)
        {
          this.pos += this.Nn;
          i = j;
        }
      }
      this.Nl = 0;
      j = i;
    } while (i != 0);
    int[] arrayOfInt = this.Ns;
    int i = this.Nq - 1;
    arrayOfInt[i] += 1;
    this.Nr[(this.Nq - 1)] = "null";
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + " at line " + getLineNumber() + " column " + getColumnNumber();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jz
 * JD-Core Version:    0.7.0.1
 */