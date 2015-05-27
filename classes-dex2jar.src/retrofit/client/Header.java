package retrofit.client;

public final class Header
{
  private final String name;
  private final String value;
  
  public Header(String paramString1, String paramString2)
  {
    this.name = paramString1;
    this.value = paramString2;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (Header)paramObject;
    if (this.name != null ? !this.name.equals(paramObject.name) : paramObject.name != null) {
      return false;
    }
    return this.value != null ? this.value.equals(paramObject.value) : paramObject.value == null;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getValue()
  {
    return this.value;
  }
  
  public int hashCode()
  {
    int i;
    if (this.name != null) {
      i = this.name.hashCode();
    } else {
      i = 0;
    }
    int j;
    if (this.value != null) {
      j = this.value.hashCode();
    } else {
      j = 0;
    }
    return i * 31 + j;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str;
    if (this.name != null) {
      str = this.name;
    } else {
      str = "";
    }
    localStringBuilder = localStringBuilder.append(str).append(": ");
    if (this.value != null) {
      str = this.value;
    } else {
      str = "";
    }
    return str;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.client.Header
 * JD-Core Version:    0.7.0.1
 */