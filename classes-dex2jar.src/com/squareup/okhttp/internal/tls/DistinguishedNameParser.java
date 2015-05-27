package com.squareup.okhttp.internal.tls;

import javax.security.auth.x500.X500Principal;

final class DistinguishedNameParser
{
  private int beg;
  private char[] chars;
  private int cur;
  private final String dn;
  private int end;
  private final int length;
  private int pos;
  
  public DistinguishedNameParser(X500Principal paramX500Principal)
  {
    this.dn = paramX500Principal.getName("RFC2253");
    this.length = this.dn.length();
  }
  
  private String escapedAV()
  {
    this.beg = this.pos;
    this.end = this.pos;
    for (;;)
    {
      if (this.pos >= this.length) {
        return new String(this.chars, this.beg, this.end - this.beg);
      }
      char[] arrayOfChar;
      int i;
      switch (this.chars[this.pos])
      {
      default: 
        break;
      case '+': 
      case ',': 
      case ';': 
        return new String(this.chars, this.beg, this.end - this.beg);
      case '\\': 
        arrayOfChar = this.chars;
        i = this.end;
        this.end = (i + 1);
        arrayOfChar[i] = getEscaped();
        this.pos += 1;
        break;
      case ' ': 
        this.cur = this.end;
        this.pos += 1;
        arrayOfChar = this.chars;
        i = this.end;
        this.end = (i + 1);
        arrayOfChar[i] = ' ';
        while ((this.pos < this.length) && (this.chars[this.pos] == ' '))
        {
          arrayOfChar = this.chars;
          i = this.end;
          this.end = (i + 1);
          arrayOfChar[i] = ' ';
          this.pos += 1;
        }
        if ((this.pos == this.length) || (this.chars[this.pos] == ',') || (this.chars[this.pos] == '+') || (this.chars[this.pos] == ';'))
        {
          return new String(this.chars, this.beg, this.cur - this.beg);
          arrayOfChar = this.chars;
          i = this.end;
          this.end = (i + 1);
          arrayOfChar[i] = this.chars[this.pos];
          this.pos += 1;
        }
        break;
      }
    }
  }
  
  private int getByte(int paramInt)
  {
    if (paramInt + 1 >= this.length) {
      throw new IllegalStateException("Malformed DN: " + this.dn);
    }
    int i = this.chars[paramInt];
    if ((i >= 48) && (i <= 57)) {
      i -= 48;
    } else if ((i >= 97) && (i <= 102)) {
      i -= 87;
    } else if ((i >= 65) && (i <= 70)) {
      i -= 55;
    } else {
      throw new IllegalStateException("Malformed DN: " + this.dn);
    }
    paramInt = this.chars[(paramInt + 1)];
    if ((paramInt >= 48) && (paramInt <= 57)) {
      paramInt -= 48;
    } else if ((paramInt >= 97) && (paramInt <= 102)) {
      paramInt -= 87;
    } else if ((paramInt >= 65) && (paramInt <= 70)) {
      paramInt -= 55;
    } else {
      throw new IllegalStateException("Malformed DN: " + this.dn);
    }
    return (i << 4) + paramInt;
  }
  
  private char getEscaped()
  {
    this.pos += 1;
    if (this.pos == this.length) {
      throw new IllegalStateException("Unexpected end of DN: " + this.dn);
    }
    switch (this.chars[this.pos])
    {
    default: 
      break;
    case ' ': 
    case '"': 
    case '#': 
    case '%': 
    case '*': 
    case '+': 
    case ',': 
    case ';': 
    case '<': 
    case '=': 
    case '>': 
    case '\\': 
    case '_': 
      return this.chars[this.pos];
    }
    return getUTF8();
  }
  
  private char getUTF8()
  {
    int i = getByte(this.pos);
    this.pos += 1;
    if (i < 128) {
      return (char)i;
    }
    if ((i >= 192) && (i <= 247))
    {
      int j;
      if (i <= 223)
      {
        j = 1;
        i &= 0x1F;
      }
      else if (i <= 239)
      {
        j = 2;
        i &= 0xF;
      }
      else
      {
        j = 3;
        i &= 0x7;
      }
      int k = 0;
      while (k < j)
      {
        this.pos += 1;
        if ((this.pos == this.length) || (this.chars[this.pos] != '\\')) {
          return '?';
        }
        this.pos += 1;
        int m = getByte(this.pos);
        this.pos += 1;
        if ((m & 0xC0) != 128) {
          return '?';
        }
        i = (i << 6) + (m & 0x3F);
        k += 1;
      }
      return (char)i;
    }
    return '?';
  }
  
  private String hexAV()
  {
    if (this.pos + 4 >= this.length) {
      throw new IllegalStateException("Unexpected end of DN: " + this.dn);
    }
    this.beg = this.pos;
    for (this.pos += 1;; this.pos += 1)
    {
      if ((this.pos == this.length) || (this.chars[this.pos] == '+') || (this.chars[this.pos] == ',') || (this.chars[this.pos] == ';'))
      {
        this.end = this.pos;
        break;
      }
      if (this.chars[this.pos] == ' ')
      {
        this.end = this.pos;
        for (this.pos += 1; (this.pos < this.length) && (this.chars[this.pos] == ' '); this.pos += 1) {}
      }
      if ((this.chars[this.pos] >= 'A') && (this.chars[this.pos] <= 'F'))
      {
        localObject = this.chars;
        i = this.pos;
        localObject[i] = ((char)(localObject[i] + ' '));
      }
    }
    int k = this.end - this.beg;
    if ((k < 5) || ((k & 0x1) == 0)) {
      throw new IllegalStateException("Unexpected end of DN: " + this.dn);
    }
    Object localObject = new byte[k / 2];
    int i = 0;
    int j = this.beg + 1;
    while (i < localObject.length)
    {
      localObject[i] = ((byte)getByte(j));
      j += 2;
      i += 1;
    }
    return new String(this.chars, this.beg, k);
  }
  
  private String nextAT()
  {
    while ((this.pos < this.length) && (this.chars[this.pos] == ' ')) {
      this.pos += 1;
    }
    if (this.pos == this.length) {
      return null;
    }
    this.beg = this.pos;
    for (this.pos += 1; (this.pos < this.length) && (this.chars[this.pos] != '=') && (this.chars[this.pos] != ' '); this.pos += 1) {}
    if (this.pos >= this.length) {
      throw new IllegalStateException("Unexpected end of DN: " + this.dn);
    }
    this.end = this.pos;
    if (this.chars[this.pos] == ' ')
    {
      while ((this.pos < this.length) && (this.chars[this.pos] != '=') && (this.chars[this.pos] == ' ')) {
        this.pos += 1;
      }
      if ((this.chars[this.pos] != '=') || (this.pos == this.length)) {
        throw new IllegalStateException("Unexpected end of DN: " + this.dn);
      }
    }
    for (this.pos += 1; (this.pos < this.length) && (this.chars[this.pos] == ' '); this.pos += 1) {}
    if ((this.end - this.beg > 4) && (this.chars[(this.beg + 3)] == '.') && ((this.chars[this.beg] == 'O') || (this.chars[this.beg] == 'o')) && ((this.chars[(this.beg + 1)] == 'I') || (this.chars[(this.beg + 1)] == 'i')) && ((this.chars[(this.beg + 2)] == 'D') || (this.chars[(this.beg + 2)] == 'd'))) {
      this.beg += 4;
    }
    return new String(this.chars, this.beg, this.end - this.beg);
  }
  
  private String quotedAV()
  {
    this.pos += 1;
    this.beg = this.pos;
    for (this.end = this.beg;; this.end += 1)
    {
      if (this.pos == this.length) {
        throw new IllegalStateException("Unexpected end of DN: " + this.dn);
      }
      if (this.chars[this.pos] == '"')
      {
        this.pos += 1;
        break;
      }
      if (this.chars[this.pos] == '\\') {
        this.chars[this.end] = getEscaped();
      } else {
        this.chars[this.end] = this.chars[this.pos];
      }
      this.pos += 1;
    }
    while ((this.pos < this.length) && (this.chars[this.pos] == ' ')) {
      this.pos += 1;
    }
    return new String(this.chars, this.beg, this.end - this.beg);
  }
  
  public String findMostSpecific(String paramString)
  {
    this.pos = 0;
    this.beg = 0;
    this.end = 0;
    this.cur = 0;
    this.chars = this.dn.toCharArray();
    String str1 = nextAT();
    String str2 = str1;
    if (str1 == null) {
      return null;
    }
    for (;;)
    {
      str1 = "";
      if (this.pos == this.length) {
        return null;
      }
      switch (this.chars[this.pos])
      {
      default: 
        break;
      case '"': 
        str1 = quotedAV();
        break;
      case '#': 
        str1 = hexAV();
        break;
      case '+': 
      case ',': 
      case ';': 
        break;
      }
      str1 = escapedAV();
      if (paramString.equalsIgnoreCase(str2)) {
        return str1;
      }
      if (this.pos >= this.length) {
        return null;
      }
      if ((this.chars[this.pos] != ',') && (this.chars[this.pos] != ';') && (this.chars[this.pos] != '+')) {
        throw new IllegalStateException("Malformed DN: " + this.dn);
      }
      this.pos += 1;
      str2 = nextAT();
      if (str2 == null) {
        throw new IllegalStateException("Malformed DN: " + this.dn);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.tls.DistinguishedNameParser
 * JD-Core Version:    0.7.0.1
 */