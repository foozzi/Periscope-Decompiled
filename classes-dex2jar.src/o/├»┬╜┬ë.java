package o;

import java.io.InputStream;
import java.util.Properties;

class ｉ
{
  public final String nG;
  public final String nn;
  public final String packageName;
  public final String versionName;
  
  ｉ(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.nG = paramString1;
    this.versionName = paramString2;
    this.nn = paramString3;
    this.packageName = paramString4;
  }
  
  public static ｉ ʻ(InputStream paramInputStream)
  {
    Properties localProperties = new Properties();
    localProperties.load(paramInputStream);
    return ˊ(localProperties);
  }
  
  public static ｉ ˊ(Properties paramProperties)
  {
    return new ｉ(paramProperties.getProperty("version_code"), paramProperties.getProperty("version_name"), paramProperties.getProperty("build_id"), paramProperties.getProperty("package_name"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½
 * JD-Core Version:    0.7.0.1
 */