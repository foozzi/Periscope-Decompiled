package o;

import android.text.TextUtils;
import com.twitter.sdk.android.core.TwitterAuthToken;

public class mr
  extends mg<TwitterAuthToken>
{
  @go("user_name")
  private final String nF;
  
  public mr(TwitterAuthToken paramTwitterAuthToken, long paramLong, String paramString)
  {
    super(paramTwitterAuthToken, paramLong);
    if (paramTwitterAuthToken == null) {
      throw new IllegalArgumentException("AuthToken must not be null.");
    }
    this.nF = paramString;
  }
  
  public long bk()
  {
    return getId();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    if (!super.equals(paramObject)) {
      return false;
    }
    paramObject = (mr)paramObject;
    return this.nF != null ? this.nF.equals(paramObject.nF) : paramObject.nF == null;
  }
  
  public String getUserName()
  {
    return this.nF;
  }
  
  public int hashCode()
  {
    int j = super.hashCode();
    int i;
    if (this.nF != null) {
      i = this.nF.hashCode();
    } else {
      i = 0;
    }
    return j * 31 + i;
  }
  
  static class if
    implements ta<mr>
  {
    private final fl gson = new fl();
    
    public String ˊ(mr parammr)
    {
      if ((parammr != null) && (parammr.aX() != null)) {
        try
        {
          parammr = this.gson.ᴸ(parammr);
          return parammr;
        }
        catch (Exception parammr)
        {
          pj.cd().ˑ("Twitter", parammr.getMessage());
        }
      }
      return "";
    }
    
    public mr ᵄ(String paramString)
    {
      if (!TextUtils.isEmpty(paramString)) {
        try
        {
          paramString = (mr)this.gson.ˊ(paramString, mr.class);
          return paramString;
        }
        catch (Exception paramString)
        {
          pj.cd().ˑ("Twitter", paramString.getMessage());
        }
      }
      return null;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.mr
 * JD-Core Version:    0.7.0.1
 */