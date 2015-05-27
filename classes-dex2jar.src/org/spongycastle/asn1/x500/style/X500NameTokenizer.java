package org.spongycastle.asn1.x500.style;

public class X500NameTokenizer
{
  private char axS;
  private StringBuffer axT = new StringBuffer();
  private int index;
  private String value;
  
  public X500NameTokenizer(String paramString)
  {
    this(paramString, ',');
  }
  
  public X500NameTokenizer(String paramString, char paramChar)
  {
    this.value = paramString;
    this.index = -1;
    this.axS = paramChar;
  }
  
  public boolean hasMoreTokens()
  {
    return this.index != this.value.length();
  }
  
  public String nextToken()
  {
    if (this.index == this.value.length()) {
      return null;
    }
    int k = this.index + 1;
    int j = 0;
    int m = 0;
    this.axT.setLength(0);
    while (k != this.value.length())
    {
      char c = this.value.charAt(k);
      int i;
      if (c == '"')
      {
        i = j;
        if (m == 0) {
          if (j == 0) {
            i = 1;
          } else {
            i = 0;
          }
        }
        this.axT.append(c);
        m = 0;
        j = i;
        i = m;
      }
      else if ((m != 0) || (j != 0))
      {
        this.axT.append(c);
        i = 0;
      }
      else if (c == '\\')
      {
        this.axT.append(c);
        i = 1;
      }
      else
      {
        if (c == this.axS) {
          break;
        }
        this.axT.append(c);
        i = m;
      }
      k += 1;
      m = i;
    }
    this.index = k;
    return this.axT.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x500.style.X500NameTokenizer
 * JD-Core Version:    0.7.0.1
 */