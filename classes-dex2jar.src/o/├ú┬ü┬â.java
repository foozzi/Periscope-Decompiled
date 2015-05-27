package o;

import android.accounts.Account;
import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class ぃ
{
  private final List<String> CV;
  private final Account Cc;
  private final int Ce;
  private final View Cf;
  private final String Cg;
  private final String Ch;
  private final ai DM;
  private Integer DN;
  
  public ぃ(Account paramAccount, Collection<String> paramCollection, int paramInt, View paramView, String paramString1, String paramString2, ai paramai)
  {
    this.Cc = paramAccount;
    if (paramCollection == null) {
      paramAccount = Collections.EMPTY_LIST;
    } else {
      paramAccount = Collections.unmodifiableList(new ArrayList(paramCollection));
    }
    this.CV = paramAccount;
    this.Cf = paramView;
    this.Ce = paramInt;
    this.Cg = paramString1;
    this.Ch = paramString2;
    this.DM = paramai;
  }
  
  public void ˊ(Integer paramInteger)
  {
    this.DN = paramInteger;
  }
  
  public Account ᒱ()
  {
    return this.Cc;
  }
  
  @Deprecated
  public String ᖪ()
  {
    if (this.Cc != null) {
      return this.Cc.name;
    }
    return null;
  }
  
  public Account ᖬ()
  {
    if (this.Cc != null) {
      return this.Cc;
    }
    return new Account("<<default account>>", "com.google");
  }
  
  public List<String> ᖽ()
  {
    return this.CV;
  }
  
  public String ᖾ()
  {
    return this.Cg;
  }
  
  public String ᖿ()
  {
    return this.Ch;
  }
  
  public ai ᗁ()
  {
    return this.DM;
  }
  
  public Integer ᘅ()
  {
    return this.DN;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã
 * JD-Core Version:    0.7.0.1
 */