package o;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

public class kc
  implements Closeable, Flushable
{
  private static final String[] NE = new String[''];
  private static final String[] NF;
  private boolean Ka;
  private boolean Kb;
  private String NG;
  private String NH;
  private boolean Nh;
  private int[] Np = new int[32];
  private int Nq = 0;
  private final Writer out;
  private String separator;
  
  static
  {
    int i = 0;
    while (i <= 31)
    {
      NE[i] = String.format("\\u%04x", new Object[] { Integer.valueOf(i) });
      i += 1;
    }
    NE[34] = "\\\"";
    NE[92] = "\\\\";
    NE[9] = "\\t";
    NE[8] = "\\b";
    NE[10] = "\\n";
    NE[13] = "\\r";
    NE[12] = "\\f";
    NF = (String[])NE.clone();
    NF[60] = "\\u003c";
    NF[62] = "\\u003e";
    NF[38] = "\\u0026";
    NF[61] = "\\u003d";
    NF[39] = "\\u0027";
  }
  
  public kc(Writer paramWriter)
  {
    ᵇ(6);
    this.separator = ":";
    this.Ka = true;
    if (paramWriter == null) {
      throw new NullPointerException("out == null");
    }
    this.out = paramWriter;
  }
  
  private int ah()
  {
    if (this.Nq == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    return this.Np[(this.Nq - 1)];
  }
  
  private void ai()
  {
    if (this.NH != null)
    {
      ak();
      ᵙ(this.NH);
      this.NH = null;
    }
  }
  
  private void aj()
  {
    if (this.NG == null) {
      return;
    }
    this.out.write("\n");
    int i = 1;
    int j = this.Nq;
    while (i < j)
    {
      this.out.write(this.NG);
      i += 1;
    }
  }
  
  private void ak()
  {
    int i = ah();
    if (i == 5) {
      this.out.write(44);
    } else if (i != 3) {
      throw new IllegalStateException("Nesting problem.");
    }
    aj();
    ᵟ(4);
  }
  
  private kc ˋ(int paramInt, String paramString)
  {
    ৲(true);
    ᵇ(paramInt);
    this.out.write(paramString);
    return this;
  }
  
  private kc ˎ(int paramInt1, int paramInt2, String paramString)
  {
    int i = ah();
    if ((i != paramInt2) && (i != paramInt1)) {
      throw new IllegalStateException("Nesting problem.");
    }
    if (this.NH != null) {
      throw new IllegalStateException("Dangling name: " + this.NH);
    }
    this.Nq -= 1;
    if (i == paramInt2) {
      aj();
    }
    this.out.write(paramString);
    return this;
  }
  
  private void ৲(boolean paramBoolean)
  {
    switch (ah())
    {
    default: 
      break;
    case 7: 
      if (!this.Nh) {
        throw new IllegalStateException("JSON must have only one top-level value.");
      }
    case 6: 
      if ((!this.Nh) && (!paramBoolean)) {
        throw new IllegalStateException("JSON must start with an array or an object.");
      }
      ᵟ(7);
      return;
    case 1: 
      ᵟ(2);
      aj();
      return;
    case 2: 
      this.out.append(',');
      aj();
      return;
    case 4: 
      this.out.append(this.separator);
      ᵟ(5);
      return;
    }
    throw new IllegalStateException("Nesting problem.");
  }
  
  private void ᵇ(int paramInt)
  {
    if (this.Nq == this.Np.length)
    {
      arrayOfInt = new int[this.Nq * 2];
      System.arraycopy(this.Np, 0, arrayOfInt, 0, this.Nq);
      this.Np = arrayOfInt;
    }
    int[] arrayOfInt = this.Np;
    int i = this.Nq;
    this.Nq = (i + 1);
    arrayOfInt[i] = paramInt;
  }
  
  private void ᵙ(String paramString)
  {
    String[] arrayOfString;
    if (this.Kb) {
      arrayOfString = NF;
    } else {
      arrayOfString = NE;
    }
    this.out.write("\"");
    int j = 0;
    int m = paramString.length();
    int i = 0;
    while (i < m)
    {
      int n = paramString.charAt(i);
      String str1;
      if (n < 128)
      {
        String str2 = arrayOfString[n];
        str1 = str2;
        if (str2 == null)
        {
          k = j;
          break label143;
        }
      }
      else if (n == 8232)
      {
        str1 = "\\u2028";
      }
      else
      {
        k = j;
        if (n != 8233) {
          break label143;
        }
        str1 = "\\u2029";
      }
      if (j < i) {
        this.out.write(paramString, j, i - j);
      }
      this.out.write(str1);
      int k = i + 1;
      label143:
      i += 1;
      j = k;
    }
    if (j < m) {
      this.out.write(paramString, j, m - j);
    }
    this.out.write("\"");
  }
  
  private void ᵟ(int paramInt)
  {
    this.Np[(this.Nq - 1)] = paramInt;
  }
  
  public kc P()
  {
    ai();
    return ˋ(1, "[");
  }
  
  public kc Q()
  {
    return ˎ(1, 2, "]");
  }
  
  public kc R()
  {
    ai();
    return ˋ(3, "{");
  }
  
  public kc S()
  {
    return ˎ(3, 5, "}");
  }
  
  public kc T()
  {
    if (this.NH != null) {
      if (this.Ka)
      {
        ai();
      }
      else
      {
        this.NH = null;
        return this;
      }
    }
    ৲(false);
    this.out.write("null");
    return this;
  }
  
  public final boolean af()
  {
    return this.Kb;
  }
  
  public final boolean ag()
  {
    return this.Ka;
  }
  
  public void close()
  {
    this.out.close();
    int i = this.Nq;
    if ((i > 1) || ((i == 1) && (this.Np[(i - 1)] != 7))) {
      throw new IOException("Incomplete document");
    }
    this.Nq = 0;
  }
  
  public void flush()
  {
    if (this.Nq == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    this.out.flush();
  }
  
  public boolean isLenient()
  {
    return this.Nh;
  }
  
  public final void setIndent(String paramString)
  {
    if (paramString.length() == 0)
    {
      this.NG = null;
      this.separator = ":";
      return;
    }
    this.NG = paramString;
    this.separator = ": ";
  }
  
  public final void setLenient(boolean paramBoolean)
  {
    this.Nh = paramBoolean;
  }
  
  public kc ˁ(boolean paramBoolean)
  {
    ai();
    ৲(false);
    Writer localWriter = this.out;
    String str;
    if (paramBoolean) {
      str = "true";
    } else {
      str = "false";
    }
    localWriter.write(str);
    return this;
  }
  
  public kc ˊ(Number paramNumber)
  {
    if (paramNumber == null) {
      return T();
    }
    ai();
    String str = paramNumber.toString();
    if ((!this.Nh) && ((str.equals("-Infinity")) || (str.equals("Infinity")) || (str.equals("NaN")))) {
      throw new IllegalArgumentException("Numeric values must be finite, but was " + paramNumber);
    }
    ৲(false);
    this.out.append(str);
    return this;
  }
  
  public final void ˤ(boolean paramBoolean)
  {
    this.Kb = paramBoolean;
  }
  
  public final void ι(boolean paramBoolean)
  {
    this.Ka = paramBoolean;
  }
  
  public kc ᐩ(long paramLong)
  {
    ai();
    ৲(false);
    this.out.write(Long.toString(paramLong));
    return this;
  }
  
  public kc ᒢ(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("name == null");
    }
    if (this.NH != null) {
      throw new IllegalStateException();
    }
    if (this.Nq == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    this.NH = paramString;
    return this;
  }
  
  public kc ᖮ(String paramString)
  {
    if (paramString == null) {
      return T();
    }
    ai();
    ৲(false);
    ᵙ(paramString);
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.kc
 * JD-Core Version:    0.7.0.1
 */