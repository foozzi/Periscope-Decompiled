package o;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import java.lang.reflect.Field;
import java.security.GeneralSecurityException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import org.json.JSONObject;

public class qr
{
  private static final Pattern VZ = Pattern.compile("[^\\p{Alnum}]");
  private static final String Wa = Pattern.quote("/");
  private final String Va;
  private final String Vb;
  private final ReentrantLock Wb = new ReentrantLock();
  private final qs Wc;
  private final boolean Wd;
  private final boolean We;
  private final Context appContext;
  private final Collection<pq> nz;
  
  public qr(Context paramContext, String paramString1, String paramString2, Collection<pq> paramCollection)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("appContext must not be null");
    }
    if (paramString1 == null) {
      throw new IllegalArgumentException("appIdentifier must not be null");
    }
    if (paramCollection == null) {
      throw new IllegalArgumentException("kits must not be null");
    }
    this.appContext = paramContext;
    this.Vb = paramString1;
    this.Va = paramString2;
    this.nz = paramCollection;
    this.Wc = new qs();
    this.Wd = qh.ˊ(paramContext, "com.crashlytics.CollectDeviceIdentifiers", true);
    if (!this.Wd) {
      pj.cd().ˑ("Fabric", "Device ID collection disabled for " + paramContext.getPackageName());
    }
    this.We = qh.ˊ(paramContext, "com.crashlytics.CollectUserIdentifiers", true);
    if (!this.We) {
      pj.cd().ˑ("Fabric", "User information collection disabled for " + paramContext.getPackageName());
    }
  }
  
  private String ˊ(SharedPreferences paramSharedPreferences)
  {
    this.Wb.lock();
    try
    {
      String str2 = paramSharedPreferences.getString("crashlytics.installation.id", null);
      String str1 = str2;
      if (str2 == null)
      {
        str1 = ᑦ(UUID.randomUUID().toString());
        paramSharedPreferences.edit().putString("crashlytics.installation.id", str1).commit();
      }
      return str1;
    }
    finally
    {
      this.Wb.unlock();
    }
  }
  
  private void ˊ(Map<if, String> paramMap, if paramif, String paramString)
  {
    if (paramString != null) {
      paramMap.put(paramif, paramString);
    }
  }
  
  private void ˋ(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject.put("APPLICATION_INSTALLATION_UUID".toLowerCase(Locale.US), cA());
      return;
    }
    catch (Exception paramJSONObject)
    {
      pj.cd().ˏ("Fabric", "Could not write application id to JSON", paramJSONObject);
    }
  }
  
  private void ˎ(JSONObject paramJSONObject)
  {
    Iterator localIterator = Ἲ().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      try
      {
        paramJSONObject.put(((if)localEntry.getKey()).name().toLowerCase(Locale.US), localEntry.getValue());
      }
      catch (Exception localException)
      {
        pj.cd().ˏ("Fabric", "Could not write value to JSON: " + ((if)localEntry.getKey()).name(), localException);
      }
    }
  }
  
  private void ˏ(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject.put("os_version", cC());
      return;
    }
    catch (Exception paramJSONObject)
    {
      pj.cd().ˏ("Fabric", "Could not write OS version to JSON", paramJSONObject);
    }
  }
  
  private void ᐝ(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject.put("model", cD());
      return;
    }
    catch (Exception paramJSONObject)
    {
      pj.cd().ˏ("Fabric", "Could not write model to JSON", paramJSONObject);
    }
  }
  
  private boolean ᑋ(String paramString)
  {
    return this.appContext.checkCallingPermission(paramString) == 0;
  }
  
  private String ᑦ(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return VZ.matcher(paramString).replaceAll("").toLowerCase(Locale.US);
  }
  
  private String ᒾ(String paramString)
  {
    return paramString.replaceAll(Wa, "");
  }
  
  public String cA()
  {
    String str2 = this.Va;
    String str1 = str2;
    if (str2 == null)
    {
      SharedPreferences localSharedPreferences = qh.ᕀ(this.appContext);
      str2 = localSharedPreferences.getString("crashlytics.installation.id", null);
      str1 = str2;
      if (str2 == null) {
        str1 = ˊ(localSharedPreferences);
      }
    }
    return str1;
  }
  
  public String cB()
  {
    return this.Vb;
  }
  
  public String cC()
  {
    return String.format(Locale.US, "%s/%s", new Object[] { ᒾ(Build.VERSION.RELEASE), ᒾ(Build.VERSION.INCREMENTAL) });
  }
  
  public String cD()
  {
    return String.format(Locale.US, "%s/%s", new Object[] { ᒾ(Build.MANUFACTURER), ᒾ(Build.MODEL) });
  }
  
  public String cE()
  {
    Object localObject = "";
    if (this.Wd)
    {
      String str = cF();
      localObject = str;
      if (str == null)
      {
        SharedPreferences localSharedPreferences = qh.ᕀ(this.appContext);
        str = localSharedPreferences.getString("crashlytics.installation.id", null);
        localObject = str;
        if (str == null) {
          localObject = ˊ(localSharedPreferences);
        }
      }
    }
    return localObject;
  }
  
  public String cF()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (this.Wd)
    {
      String str = Settings.Secure.getString(this.appContext.getContentResolver(), "android_id");
      localObject1 = localObject2;
      if (!"9774d56d682e549c".equals(str)) {
        localObject1 = ᑦ(str);
      }
    }
    return localObject1;
  }
  
  public String cG()
  {
    if ((this.Wd) && (ᑋ("android.permission.READ_PHONE_STATE")))
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)this.appContext.getSystemService("phone");
      if (localTelephonyManager != null) {
        return ᑦ(localTelephonyManager.getDeviceId());
      }
    }
    return null;
  }
  
  public String cH()
  {
    if ((this.Wd) && (ᑋ("android.permission.ACCESS_WIFI_STATE")))
    {
      Object localObject = (WifiManager)this.appContext.getSystemService("wifi");
      if (localObject != null)
      {
        localObject = ((WifiManager)localObject).getConnectionInfo();
        if (localObject != null) {
          return ᑦ(((WifiInfo)localObject).getMacAddress());
        }
      }
    }
    return null;
  }
  
  public String cI()
  {
    if ((this.Wd) && (ᑋ("android.permission.BLUETOOTH"))) {
      try
      {
        BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        if (localBluetoothAdapter != null) {
          ᑦ(localBluetoothAdapter.getAddress());
        }
      }
      catch (Exception localException)
      {
        pj.cd().ˏ("Fabric", "Utils#getBluetoothMacAddress failed, returning null. Requires prior call to BluetoothAdatpter.getDefaultAdapter() on thread that has called Looper.prepare()", localException);
      }
    }
    return null;
  }
  
  public String cq()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (this.Wd)
    {
      pz localpz = new qa(this.appContext).cl();
      localObject1 = localObject2;
      if (localpz != null) {
        localObject1 = localpz.pX;
      }
    }
    return localObject1;
  }
  
  public boolean cz()
  {
    return this.We;
  }
  
  public String getInstallerPackageName()
  {
    return this.Wc.ᵀ(this.appContext);
  }
  
  public String getSerialNumber()
  {
    if ((this.Wd) && (Build.VERSION.SDK_INT >= 9)) {
      try
      {
        String str = ᑦ((String)Build.class.getField("SERIAL").get(null));
        return str;
      }
      catch (Exception localException)
      {
        pj.cd().ˏ("Fabric", "Could not retrieve android.os.Build.SERIAL value", localException);
      }
    }
    return null;
  }
  
  public String ʹ(String paramString1, String paramString2)
  {
    try
    {
      paramString2 = paramString2.replaceAll("\\.", new StringBuilder(new String(new char[] { 115, 108, 99 })).reverse().toString());
      paramString1 = qh.ᐝ(1, qh.І(paramString1 + paramString2));
    }
    catch (GeneralSecurityException paramString1)
    {
      pj.cd().ˏ("Fabric", "Could not create cipher to encrypt headers.", paramString1);
      return "";
    }
    paramString2 = new JSONObject();
    ˋ(paramString2);
    ˎ(paramString2);
    ˏ(paramString2);
    ᐝ(paramString2);
    if (paramString2.length() > 0) {
      try
      {
        paramString1 = qh.ˌ(paramString1.doFinal(paramString2.toString().getBytes()));
        return paramString1;
      }
      catch (GeneralSecurityException paramString1)
      {
        pj.cd().ˏ("Fabric", "Could not encrypt IDs", paramString1);
      }
    }
    return "";
  }
  
  public Map<if, String> Ἲ()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.nz.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (pq)localIterator.next();
      if ((localObject instanceof qm))
      {
        localObject = ((qm)localObject).Ἲ().entrySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
          ˊ(localHashMap, (if)localEntry.getKey(), (String)localEntry.getValue());
        }
      }
    }
    ˊ(localHashMap, if.Wi, cF());
    ˊ(localHashMap, if.Wj, cG());
    ˊ(localHashMap, if.Wk, getSerialNumber());
    ˊ(localHashMap, if.Wf, cH());
    ˊ(localHashMap, if.Wg, cI());
    ˊ(localHashMap, if.Wl, cq());
    return Collections.unmodifiableMap(localHashMap);
  }
  
  public static enum if
  {
    public final int Wm;
    
    private if(int paramInt)
    {
      this.Wm = paramInt;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qr
 * JD-Core Version:    0.7.0.1
 */