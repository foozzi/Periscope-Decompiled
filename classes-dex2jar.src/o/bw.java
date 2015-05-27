package o;

import android.location.Location;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.zzc;
import com.google.android.gms.maps.model.internal.zze;
import com.google.android.gms.maps.model.internal.zzp;

public abstract interface bw
  extends IInterface
{
  public abstract void clear();
  
  public abstract void onCreate(Bundle paramBundle);
  
  public abstract void onDestroy();
  
  public abstract void onLowMemory();
  
  public abstract void onPause();
  
  public abstract void onResume();
  
  public abstract void onSaveInstanceState(Bundle paramBundle);
  
  public abstract void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract void ł(int paramInt);
  
  public abstract dl ˊ(PolylineOptions paramPolylineOptions);
  
  public abstract dq ˊ(CircleOptions paramCircleOptions);
  
  public abstract dr ˊ(GroundOverlayOptions paramGroundOverlayOptions);
  
  public abstract dr ˊ(GroundOverlayOptions paramGroundOverlayOptions, zze paramzze);
  
  public abstract dt ˊ(MarkerOptions paramMarkerOptions, zzp paramzzp);
  
  public abstract du ˊ(PolygonOptions paramPolygonOptions);
  
  public abstract dv ˊ(TileOverlayOptions paramTileOverlayOptions);
  
  public abstract void ˊ(zzc paramzzc);
  
  public abstract void ˊ(zzc paramzzc, int paramInt, ci paramci);
  
  public abstract void ˊ(zzc paramzzc, ci paramci);
  
  public abstract void ˊ(bx parambx);
  
  public abstract void ˊ(ck paramck);
  
  public abstract void ˊ(cl paramcl);
  
  public abstract void ˊ(cm paramcm);
  
  public abstract void ˊ(cn paramcn);
  
  public abstract void ˊ(co paramco);
  
  public abstract void ˊ(cq paramcq);
  
  public abstract void ˊ(cr paramcr);
  
  public abstract void ˊ(cs paramcs);
  
  public abstract void ˊ(ct paramct);
  
  public abstract void ˊ(cu paramcu);
  
  public abstract void ˊ(cv paramcv);
  
  public abstract void ˊ(cw paramcw);
  
  public abstract void ˊ(cx paramcx);
  
  public abstract void ˊ(dc paramdc, ﱟ paramﱟ);
  
  public abstract void ˊ(ﱟ paramﱟ, int paramInt, ci paramci);
  
  public abstract void ˊ(ﱟ paramﱟ, ci paramci);
  
  public abstract dt ˋ(MarkerOptions paramMarkerOptions);
  
  public abstract void ˋ(zzc paramzzc);
  
  public abstract void ˋ(ﱟ paramﱟ);
  
  public abstract void ˎ(ﱟ paramﱟ);
  
  public abstract void ˣ(boolean paramBoolean);
  
  public abstract boolean ו(boolean paramBoolean);
  
  public abstract int ת();
  
  public abstract void ۦ(boolean paramBoolean);
  
  public abstract CameraPosition খ();
  
  public abstract float ঘ();
  
  public abstract float ষ();
  
  public abstract void ঢ়();
  
  public abstract boolean ฑ();
  
  public abstract boolean ต();
  
  public abstract boolean น();
  
  public abstract Location ม();
  
  public abstract ce อ();
  
  public abstract void เ(boolean paramBoolean);
  
  public abstract ca ງ();
  
  public abstract boolean ე();
  
  public abstract ds პ();
  
  public abstract boolean Ꮧ();
  
  public abstract void ﾟ(String paramString);
  
  public static abstract class if
    extends Binder
    implements bw
  {
    public static bw ـ(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if ((localIInterface != null) && ((localIInterface instanceof bw))) {
        return (bw)localIInterface;
      }
      return new if(paramIBinder);
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    {
      float f;
      boolean bool;
      Object localObject;
      switch (paramInt1)
      {
      default: 
        break;
      case 1598968902: 
        paramParcel2.writeString("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        paramParcel1 = খ();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
        }
        else
        {
          paramParcel2.writeInt(0);
        }
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        f = ঘ();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        f = ষ();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 4: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˋ(ﱟ.if.ʼ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 5: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˎ(ﱟ.if.ʼ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 6: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(ﱟ.if.ʼ(paramParcel1.readStrongBinder()), ci.if.ᴵ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 7: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(ﱟ.if.ʼ(paramParcel1.readStrongBinder()), paramParcel1.readInt(), ci.if.ᴵ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 8: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ঢ়();
        paramParcel2.writeNoException();
        return true;
      case 9: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = PolylineOptions.CREATOR.ᐟ(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        paramParcel1 = ˊ(paramParcel1);
        paramParcel2.writeNoException();
        if (paramParcel1 != null) {
          paramParcel1 = paramParcel1.asBinder();
        } else {
          paramParcel1 = null;
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 10: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = PolygonOptions.CREATOR.יּ(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        paramParcel1 = ˊ(paramParcel1);
        paramParcel2.writeNoException();
        if (paramParcel1 != null) {
          paramParcel1 = paramParcel1.asBinder();
        } else {
          paramParcel1 = null;
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 11: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = MarkerOptions.CREATOR.יִ(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        paramParcel1 = ˋ(paramParcel1);
        paramParcel2.writeNoException();
        if (paramParcel1 != null) {
          paramParcel1 = paramParcel1.asBinder();
        } else {
          paramParcel1 = null;
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 12: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = GroundOverlayOptions.CREATOR.ᕀ(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        paramParcel1 = ˊ(paramParcel1);
        paramParcel2.writeNoException();
        if (paramParcel1 != null) {
          paramParcel1 = paramParcel1.asBinder();
        } else {
          paramParcel1 = null;
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 13: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = TileOverlayOptions.CREATOR.ᗮ(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        paramParcel1 = ˊ(paramParcel1);
        paramParcel2.writeNoException();
        if (paramParcel1 != null) {
          paramParcel1 = paramParcel1.asBinder();
        } else {
          paramParcel1 = null;
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 14: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        clear();
        paramParcel2.writeNoException();
        return true;
      case 15: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        paramInt1 = ת();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 16: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ł(paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 17: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        bool = ฑ();
        paramParcel2.writeNoException();
        if (bool) {
          paramInt1 = 1;
        } else {
          paramInt1 = 0;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      case 18: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          bool = true;
        } else {
          bool = false;
        }
        ˣ(bool);
        paramParcel2.writeNoException();
        return true;
      case 19: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        bool = ต();
        paramParcel2.writeNoException();
        if (bool) {
          paramInt1 = 1;
        } else {
          paramInt1 = 0;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      case 20: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          bool = true;
        } else {
          bool = false;
        }
        bool = ו(bool);
        paramParcel2.writeNoException();
        if (bool) {
          paramInt1 = 1;
        } else {
          paramInt1 = 0;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      case 21: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        bool = น();
        paramParcel2.writeNoException();
        if (bool) {
          paramInt1 = 1;
        } else {
          paramInt1 = 0;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      case 22: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          bool = true;
        } else {
          bool = false;
        }
        ۦ(bool);
        paramParcel2.writeNoException();
        return true;
      case 23: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        paramParcel1 = ม();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
        }
        else
        {
          paramParcel2.writeInt(0);
        }
        return true;
      case 24: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(bx.if.ᐧ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 25: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        paramParcel1 = อ();
        paramParcel2.writeNoException();
        if (paramParcel1 != null) {
          paramParcel1 = paramParcel1.asBinder();
        } else {
          paramParcel1 = null;
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 26: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        paramParcel1 = ງ();
        paramParcel2.writeNoException();
        if (paramParcel1 != null) {
          paramParcel1 = paramParcel1.asBinder();
        } else {
          paramParcel1 = null;
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 27: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(cm.if.ⁱ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 28: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(cq.if.ʳ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 29: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(cs.if.ˆ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 30: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(cu.if.ˡ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 31: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(cv.if.ˮ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 32: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(co.if.ﹺ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 33: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(ck.if.ᵔ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 35: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = CircleOptions.CREATOR.ᑊ(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        paramParcel1 = ˊ(paramParcel1);
        paramParcel2.writeNoException();
        if (paramParcel1 != null) {
          paramParcel1 = paramParcel1.asBinder();
        } else {
          paramParcel1 = null;
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 36: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(cx.if.ᐠ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 37: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(cw.if.ۥ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 38: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(dc.if.ᵕ(paramParcel1.readStrongBinder()), ﱟ.if.ʼ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 39: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        setPadding(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 40: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        bool = ე();
        paramParcel2.writeNoException();
        if (bool) {
          paramInt1 = 1;
        } else {
          paramInt1 = 0;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      case 41: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          bool = true;
        } else {
          bool = false;
        }
        เ(bool);
        paramParcel2.writeNoException();
        return true;
      case 42: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(cr.if.ʴ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 44: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        paramParcel1 = პ();
        paramParcel2.writeNoException();
        if (paramParcel1 != null) {
          paramParcel1 = paramParcel1.asBinder();
        } else {
          paramParcel1 = null;
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 45: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(cn.if.ﹶ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 53: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(ct.if.ˇ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 54: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        onCreate(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 55: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        onResume();
        paramParcel2.writeNoException();
        return true;
      case 56: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        onPause();
        paramParcel2.writeNoException();
        return true;
      case 57: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        onDestroy();
        paramParcel2.writeNoException();
        return true;
      case 58: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        onLowMemory();
        paramParcel2.writeNoException();
        return true;
      case 59: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        bool = Ꮧ();
        paramParcel2.writeNoException();
        if (bool) {
          paramInt1 = 1;
        } else {
          paramInt1 = 0;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      case 60: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        onSaveInstanceState(paramParcel1);
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
        }
        else
        {
          paramParcel2.writeInt(0);
        }
        return true;
      case 61: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ﾟ(paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 64: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = zzc.CREATOR.ۥ(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        ˊ(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 65: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = zzc.CREATOR.ۥ(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        ˋ(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 66: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          localObject = zzc.CREATOR.ۥ(paramParcel1);
        } else {
          localObject = null;
        }
        ˊ((zzc)localObject, ci.if.ᴵ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 67: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          localObject = zzc.CREATOR.ۥ(paramParcel1);
        } else {
          localObject = null;
        }
        ˊ((zzc)localObject, paramParcel1.readInt(), ci.if.ᴵ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 68: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          localObject = MarkerOptions.CREATOR.יִ(paramParcel1);
        } else {
          localObject = null;
        }
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = zzp.CREATOR.ᐣ(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        paramParcel1 = ˊ((MarkerOptions)localObject, paramParcel1);
        paramParcel2.writeNoException();
        if (paramParcel1 != null) {
          paramParcel1 = paramParcel1.asBinder();
        } else {
          paramParcel1 = null;
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 69: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ˊ(cl.if.ᵢ(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 70: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramParcel1.readInt() != 0) {
          localObject = GroundOverlayOptions.CREATOR.ᕀ(paramParcel1);
        } else {
          localObject = null;
        }
        if (paramParcel1.readInt() != 0) {
          paramParcel1 = zze.CREATOR.ᐠ(paramParcel1);
        } else {
          paramParcel1 = null;
        }
        paramParcel1 = ˊ((GroundOverlayOptions)localObject, paramParcel1);
        paramParcel2.writeNoException();
        if (paramParcel1 != null) {
          paramParcel1 = paramParcel1.asBinder();
        } else {
          paramParcel1 = null;
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    }
    
    static class if
      implements bw
    {
      private IBinder EL;
      
      if(IBinder paramIBinder)
      {
        this.EL = paramIBinder;
      }
      
      public IBinder asBinder()
      {
        return this.EL;
      }
      
      public void clear()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(14, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onCreate(Bundle paramBundle)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(54, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onDestroy()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(57, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onLowMemory()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(58, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onPause()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(56, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onResume()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(55, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onSaveInstanceState(Bundle paramBundle)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(60, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0) {
            paramBundle.readFromParcel(localParcel2);
          }
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          localParcel1.writeInt(paramInt1);
          localParcel1.writeInt(paramInt2);
          localParcel1.writeInt(paramInt3);
          localParcel1.writeInt(paramInt4);
          this.EL.transact(39, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void ł(int paramInt)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          localParcel1.writeInt(paramInt);
          this.EL.transact(16, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public dl ˊ(PolylineOptions paramPolylineOptions)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramPolylineOptions != null)
          {
            localParcel1.writeInt(1);
            paramPolylineOptions.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(9, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramPolylineOptions = dl.if.ᵣ(localParcel2.readStrongBinder());
          return paramPolylineOptions;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public dq ˊ(CircleOptions paramCircleOptions)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramCircleOptions != null)
          {
            localParcel1.writeInt(1);
            paramCircleOptions.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(35, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramCircleOptions = dq.if.יּ(localParcel2.readStrongBinder());
          return paramCircleOptions;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public dr ˊ(GroundOverlayOptions paramGroundOverlayOptions)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramGroundOverlayOptions != null)
          {
            localParcel1.writeInt(1);
            paramGroundOverlayOptions.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(12, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramGroundOverlayOptions = dr.if.ᐟ(localParcel2.readStrongBinder());
          return paramGroundOverlayOptions;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public dr ˊ(GroundOverlayOptions paramGroundOverlayOptions, zze paramzze)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramGroundOverlayOptions != null)
          {
            localParcel1.writeInt(1);
            paramGroundOverlayOptions.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          if (paramzze != null)
          {
            localParcel1.writeInt(1);
            paramzze.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(70, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramGroundOverlayOptions = dr.if.ᐟ(localParcel2.readStrongBinder());
          return paramGroundOverlayOptions;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public dt ˊ(MarkerOptions paramMarkerOptions, zzp paramzzp)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramMarkerOptions != null)
          {
            localParcel1.writeInt(1);
            paramMarkerOptions.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          if (paramzzp != null)
          {
            localParcel1.writeInt(1);
            paramzzp.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(68, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramMarkerOptions = dt.if.ᐪ(localParcel2.readStrongBinder());
          return paramMarkerOptions;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public du ˊ(PolygonOptions paramPolygonOptions)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramPolygonOptions != null)
          {
            localParcel1.writeInt(1);
            paramPolygonOptions.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(10, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramPolygonOptions = du.if.ᒽ(localParcel2.readStrongBinder());
          return paramPolygonOptions;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public dv ˊ(TileOverlayOptions paramTileOverlayOptions)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramTileOverlayOptions != null)
          {
            localParcel1.writeInt(1);
            paramTileOverlayOptions.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(13, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramTileOverlayOptions = dv.if.ᔇ(localParcel2.readStrongBinder());
          return paramTileOverlayOptions;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void ˊ(zzc paramzzc)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramzzc != null)
          {
            localParcel1.writeInt(1);
            paramzzc.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(64, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void ˊ(zzc paramzzc, int paramInt, ci paramci)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramzzc != null)
            {
              localParcel1.writeInt(1);
              paramzzc.writeToParcel(localParcel1, 0);
            }
            else
            {
              localParcel1.writeInt(0);
            }
            localParcel1.writeInt(paramInt);
            if (paramci != null)
            {
              paramzzc = paramci.asBinder();
              localParcel1.writeStrongBinder(paramzzc);
              this.EL.transact(67, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramzzc = null;
        }
      }
      
      public void ˊ(zzc paramzzc, ci paramci)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramzzc != null)
            {
              localParcel1.writeInt(1);
              paramzzc.writeToParcel(localParcel1, 0);
            }
            else
            {
              localParcel1.writeInt(0);
            }
            if (paramci != null)
            {
              paramzzc = paramci.asBinder();
              localParcel1.writeStrongBinder(paramzzc);
              this.EL.transact(66, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramzzc = null;
        }
      }
      
      public void ˊ(bx parambx)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (parambx != null)
            {
              parambx = parambx.asBinder();
              localParcel1.writeStrongBinder(parambx);
              this.EL.transact(24, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          parambx = null;
        }
      }
      
      public void ˊ(ck paramck)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramck != null)
            {
              paramck = paramck.asBinder();
              localParcel1.writeStrongBinder(paramck);
              this.EL.transact(33, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramck = null;
        }
      }
      
      public void ˊ(cl paramcl)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramcl != null)
            {
              paramcl = paramcl.asBinder();
              localParcel1.writeStrongBinder(paramcl);
              this.EL.transact(69, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramcl = null;
        }
      }
      
      public void ˊ(cm paramcm)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramcm != null)
            {
              paramcm = paramcm.asBinder();
              localParcel1.writeStrongBinder(paramcm);
              this.EL.transact(27, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramcm = null;
        }
      }
      
      public void ˊ(cn paramcn)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramcn != null)
            {
              paramcn = paramcn.asBinder();
              localParcel1.writeStrongBinder(paramcn);
              this.EL.transact(45, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramcn = null;
        }
      }
      
      public void ˊ(co paramco)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramco != null)
            {
              paramco = paramco.asBinder();
              localParcel1.writeStrongBinder(paramco);
              this.EL.transact(32, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramco = null;
        }
      }
      
      public void ˊ(cq paramcq)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramcq != null)
            {
              paramcq = paramcq.asBinder();
              localParcel1.writeStrongBinder(paramcq);
              this.EL.transact(28, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramcq = null;
        }
      }
      
      public void ˊ(cr paramcr)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramcr != null)
            {
              paramcr = paramcr.asBinder();
              localParcel1.writeStrongBinder(paramcr);
              this.EL.transact(42, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramcr = null;
        }
      }
      
      public void ˊ(cs paramcs)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramcs != null)
            {
              paramcs = paramcs.asBinder();
              localParcel1.writeStrongBinder(paramcs);
              this.EL.transact(29, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramcs = null;
        }
      }
      
      public void ˊ(ct paramct)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramct != null)
            {
              paramct = paramct.asBinder();
              localParcel1.writeStrongBinder(paramct);
              this.EL.transact(53, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramct = null;
        }
      }
      
      public void ˊ(cu paramcu)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramcu != null)
            {
              paramcu = paramcu.asBinder();
              localParcel1.writeStrongBinder(paramcu);
              this.EL.transact(30, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramcu = null;
        }
      }
      
      public void ˊ(cv paramcv)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramcv != null)
            {
              paramcv = paramcv.asBinder();
              localParcel1.writeStrongBinder(paramcv);
              this.EL.transact(31, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramcv = null;
        }
      }
      
      public void ˊ(cw paramcw)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramcw != null)
            {
              paramcw = paramcw.asBinder();
              localParcel1.writeStrongBinder(paramcw);
              this.EL.transact(37, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramcw = null;
        }
      }
      
      public void ˊ(cx paramcx)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramcx != null)
            {
              paramcx = paramcx.asBinder();
              localParcel1.writeStrongBinder(paramcx);
              this.EL.transact(36, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramcx = null;
        }
      }
      
      public void ˊ(dc paramdc, ﱟ paramﱟ)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramdc != null)
            {
              paramdc = paramdc.asBinder();
              localParcel1.writeStrongBinder(paramdc);
              if (paramﱟ == null) {
                break label101;
              }
              paramdc = paramﱟ.asBinder();
              localParcel1.writeStrongBinder(paramdc);
              this.EL.transact(38, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramdc = null;
          continue;
          label101:
          paramdc = null;
        }
      }
      
      public void ˊ(ﱟ paramﱟ, int paramInt, ci paramci)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramﱟ != null)
            {
              paramﱟ = paramﱟ.asBinder();
              localParcel1.writeStrongBinder(paramﱟ);
              localParcel1.writeInt(paramInt);
              if (paramci == null) {
                break label114;
              }
              paramﱟ = paramci.asBinder();
              localParcel1.writeStrongBinder(paramﱟ);
              this.EL.transact(7, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramﱟ = null;
          continue;
          label114:
          paramﱟ = null;
        }
      }
      
      public void ˊ(ﱟ paramﱟ, ci paramci)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramﱟ != null)
            {
              paramﱟ = paramﱟ.asBinder();
              localParcel1.writeStrongBinder(paramﱟ);
              if (paramci == null) {
                break label101;
              }
              paramﱟ = paramci.asBinder();
              localParcel1.writeStrongBinder(paramﱟ);
              this.EL.transact(6, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramﱟ = null;
          continue;
          label101:
          paramﱟ = null;
        }
      }
      
      public dt ˋ(MarkerOptions paramMarkerOptions)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramMarkerOptions != null)
          {
            localParcel1.writeInt(1);
            paramMarkerOptions.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(11, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramMarkerOptions = dt.if.ᐪ(localParcel2.readStrongBinder());
          return paramMarkerOptions;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void ˋ(zzc paramzzc)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramzzc != null)
          {
            localParcel1.writeInt(1);
            paramzzc.writeToParcel(localParcel1, 0);
          }
          else
          {
            localParcel1.writeInt(0);
          }
          this.EL.transact(65, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void ˋ(ﱟ paramﱟ)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramﱟ != null)
            {
              paramﱟ = paramﱟ.asBinder();
              localParcel1.writeStrongBinder(paramﱟ);
              this.EL.transact(4, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramﱟ = null;
        }
      }
      
      public void ˎ(ﱟ paramﱟ)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramﱟ != null)
            {
              paramﱟ = paramﱟ.asBinder();
              localParcel1.writeStrongBinder(paramﱟ);
              this.EL.transact(5, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          paramﱟ = null;
        }
      }
      
      public void ˣ(boolean paramBoolean)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramBoolean)
            {
              i = 1;
              localParcel1.writeInt(i);
              this.EL.transact(18, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          int i = 0;
        }
      }
      
      public boolean ו(boolean paramBoolean)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramBoolean)
            {
              i = 1;
              localParcel1.writeInt(i);
              this.EL.transact(20, localParcel1, localParcel2, 0);
              localParcel2.readException();
              i = localParcel2.readInt();
              if (i != 0) {
                paramBoolean = true;
              } else {
                paramBoolean = false;
              }
              return paramBoolean;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          int i = 0;
        }
      }
      
      public int ת()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(15, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void ۦ(boolean paramBoolean)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramBoolean)
            {
              i = 1;
              localParcel1.writeInt(i);
              this.EL.transact(22, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          int i = 0;
        }
      }
      
      public CameraPosition খ()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          CameraPosition localCameraPosition;
          if (localParcel2.readInt() != 0) {
            localCameraPosition = CameraPosition.CREATOR.ᐩ(localParcel2);
          } else {
            localCameraPosition = null;
          }
          return localCameraPosition;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public float ঘ()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          float f = localParcel2.readFloat();
          return f;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public float ষ()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          float f = localParcel2.readFloat();
          return f;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void ঢ়()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(8, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean ฑ()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(17, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool;
          if (i != 0) {
            bool = true;
          } else {
            bool = false;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean ต()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(19, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool;
          if (i != 0) {
            bool = true;
          } else {
            bool = false;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean น()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(21, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool;
          if (i != 0) {
            bool = true;
          } else {
            bool = false;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public Location ม()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(23, localParcel1, localParcel2, 0);
          localParcel2.readException();
          Location localLocation;
          if (localParcel2.readInt() != 0) {
            localLocation = (Location)Location.CREATOR.createFromParcel(localParcel2);
          } else {
            localLocation = null;
          }
          return localLocation;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public ce อ()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(25, localParcel1, localParcel2, 0);
          localParcel2.readException();
          ce localce = ce.if.ٴ(localParcel2.readStrongBinder());
          return localce;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void เ(boolean paramBoolean)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (paramBoolean)
            {
              i = 1;
              localParcel1.writeInt(i);
              this.EL.transact(41, localParcel1, localParcel2, 0);
              localParcel2.readException();
              return;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          int i = 0;
        }
      }
      
      public ca ງ()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(26, localParcel1, localParcel2, 0);
          localParcel2.readException();
          ca localca = ca.if.ﾞ(localParcel2.readStrongBinder());
          return localca;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean ე()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(40, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool;
          if (i != 0) {
            bool = true;
          } else {
            bool = false;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public ds პ()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(44, localParcel1, localParcel2, 0);
          localParcel2.readException();
          ds localds = ds.if.ᐡ(localParcel2.readStrongBinder());
          return localds;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean Ꮧ()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          this.EL.transact(59, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool;
          if (i != 0) {
            bool = true;
          } else {
            bool = false;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void ﾟ(String paramString)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          localParcel1.writeString(paramString);
          this.EL.transact(61, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bw
 * JD-Core Version:    0.7.0.1
 */