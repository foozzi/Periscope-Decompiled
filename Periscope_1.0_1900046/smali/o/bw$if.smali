.class public abstract Lo/bw$if;
.super Landroid/os/Binder;

# interfaces
.implements Lo/bw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/bw$if$if;
    }
.end annotation


# direct methods
.method public static ـ(Landroid/os/IBinder;)Lo/bw;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v0, v1, Lo/bw;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lo/bw;

    return-object v0

    :cond_1
    new-instance v0, Lo/bw$if$if;

    invoke-direct {v0, p0}, Lo/bw$if$if;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_28

    :sswitch_0
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_1
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->খ()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v2, p3, v0}, Lcom/google/android/gms/maps/model/CameraPosition;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_2
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->ঘ()F

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 v0, 0x1

    return v0

    :sswitch_3
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->ষ()F

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 v0, 0x1

    return v0

    :sswitch_4
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/ﱟ$if;->ʼ(Landroid/os/IBinder;)Lo/ﱟ;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˋ(Lo/ﱟ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_5
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/ﱟ$if;->ʼ(Landroid/os/IBinder;)Lo/ﱟ;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˎ(Lo/ﱟ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_6
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/ﱟ$if;->ʼ(Landroid/os/IBinder;)Lo/ﱟ;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/ci$if;->ᴵ(Landroid/os/IBinder;)Lo/ci;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lo/bw$if;->ˊ(Lo/ﱟ;Lo/ci;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_7
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/ﱟ$if;->ʼ(Landroid/os/IBinder;)Lo/ﱟ;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/ci$if;->ᴵ(Landroid/os/IBinder;)Lo/ci;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lo/bw$if;->ˊ(Lo/ﱟ;ILo/ci;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_8
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->ঢ়()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_9
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Lo/em;

    invoke-virtual {v0, p2}, Lo/em;->ᐟ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lcom/google/android/gms/maps/model/PolylineOptions;)Lo/dl;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lo/dl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_3

    sget-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Lo/ek;

    invoke-virtual {v0, p2}, Lo/ek;->יּ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lcom/google/android/gms/maps/model/PolygonOptions;)Lo/du;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lo/du;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_5

    sget-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Lo/ei;

    invoke-virtual {v0, p2}, Lo/ei;->יִ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {p0, v2}, Lo/bw$if;->ˋ(Lcom/google/android/gms/maps/model/MarkerOptions;)Lo/dt;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lo/dt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_c
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_7

    sget-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lo/ec;

    invoke-virtual {v0, p2}, Lo/ec;->ᕀ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lo/dr;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lo/dr;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_d
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_9

    sget-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Lo/eu;

    invoke-virtual {v0, p2}, Lo/eu;->ᗮ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lo/dv;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_a

    invoke-interface {v3}, Lo/dv;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_e
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->clear()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_f
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->ת()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :sswitch_10
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ł(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_11
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->ฑ()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :sswitch_12
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_c

    const/4 v2, 0x1

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p0, v2}, Lo/bw$if;->ˣ(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_13
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->ต()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :sswitch_14
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_e

    const/4 v2, 0x1

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p0, v2}, Lo/bw$if;->ו(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_f

    const/4 v0, 0x1

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :sswitch_15
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->น()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_10

    const/4 v0, 0x1

    goto :goto_10

    :cond_10
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :sswitch_16
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_11

    const/4 v2, 0x1

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {p0, v2}, Lo/bw$if;->ۦ(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_17
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->ม()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v2, p3, v0}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    const/4 v0, 0x1

    return v0

    :sswitch_18
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/bx$if;->ᐧ(Landroid/os/IBinder;)Lo/bx;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lo/bx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_19
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->อ()Lo/ce;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_13

    invoke-interface {v2}, Lo/ce;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_13

    :cond_13
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_1a
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->ງ()Lo/ca;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_14

    invoke-interface {v2}, Lo/ca;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_14

    :cond_14
    const/4 v0, 0x0

    :goto_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_1b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/cm$if;->ⁱ(Landroid/os/IBinder;)Lo/cm;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lo/cm;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_1c
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/cq$if;->ʳ(Landroid/os/IBinder;)Lo/cq;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lo/cq;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_1d
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/cs$if;->ˆ(Landroid/os/IBinder;)Lo/cs;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lo/cs;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_1e
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/cu$if;->ˡ(Landroid/os/IBinder;)Lo/cu;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lo/cu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_1f
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/cv$if;->ˮ(Landroid/os/IBinder;)Lo/cv;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lo/cv;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_20
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/co$if;->ﹺ(Landroid/os/IBinder;)Lo/co;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lo/co;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_21
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/ck$if;->ᵔ(Landroid/os/IBinder;)Lo/ck;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lo/ck;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_22
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_15

    sget-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lo/ea;

    invoke-virtual {v0, p2}, Lo/ea;->ᑊ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v2

    goto :goto_15

    :cond_15
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lcom/google/android/gms/maps/model/CircleOptions;)Lo/dq;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_16

    invoke-interface {v3}, Lo/dq;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_16

    :cond_16
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_23
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/cx$if;->ᐠ(Landroid/os/IBinder;)Lo/cx;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lo/cx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_24
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/cw$if;->ۥ(Landroid/os/IBinder;)Lo/cw;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lo/cw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_25
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/dc$if;->ᵕ(Landroid/os/IBinder;)Lo/dc;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/ﱟ$if;->ʼ(Landroid/os/IBinder;)Lo/ﱟ;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lo/bw$if;->ˊ(Lo/dc;Lo/ﱟ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_26
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lo/bw$if;->setPadding(IIII)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_27
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->ე()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_17

    const/4 v0, 0x1

    goto :goto_17

    :cond_17
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :sswitch_28
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_18

    const/4 v2, 0x1

    goto :goto_18

    :cond_18
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0, v2}, Lo/bw$if;->เ(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_29
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/cr$if;->ʴ(Landroid/os/IBinder;)Lo/cr;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lo/cr;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_2a
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->პ()Lo/ds;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_19

    invoke-interface {v2}, Lo/ds;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_19

    :cond_19
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_2b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/cn$if;->ﹶ(Landroid/os/IBinder;)Lo/cn;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lo/cn;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_2c
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/ct$if;->ˇ(Landroid/os/IBinder;)Lo/ct;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lo/ct;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_2d
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_1a

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v2, v0

    goto :goto_1a

    :cond_1a
    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {p0, v2}, Lo/bw$if;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_2e
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->onResume()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_2f
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->onPause()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_30
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->onDestroy()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_31
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->onLowMemory()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_32
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bw$if;->Ꮧ()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1b

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1b
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :sswitch_33
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_1c

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v2, v0

    goto :goto_1c

    :cond_1c
    const/4 v2, 0x0

    :goto_1c
    invoke-virtual {p0, v2}, Lo/bw$if;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1d

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v2, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1d
    const/4 v0, 0x1

    return v0

    :sswitch_34
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ﾟ(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_35
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_1e

    sget-object v0, Lcom/google/android/gms/maps/model/internal/zzc;->CREATOR:Lo/dn;

    invoke-virtual {v0, p2}, Lo/dn;->ۥ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/internal/zzc;

    move-result-object v2

    goto :goto_1e

    :cond_1e
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lcom/google/android/gms/maps/model/internal/zzc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_36
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_1f

    sget-object v0, Lcom/google/android/gms/maps/model/internal/zzc;->CREATOR:Lo/dn;

    invoke-virtual {v0, p2}, Lo/dn;->ۥ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/internal/zzc;

    move-result-object v2

    goto :goto_1f

    :cond_1f
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {p0, v2}, Lo/bw$if;->ˋ(Lcom/google/android/gms/maps/model/internal/zzc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_37
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_20

    sget-object v0, Lcom/google/android/gms/maps/model/internal/zzc;->CREATOR:Lo/dn;

    invoke-virtual {v0, p2}, Lo/dn;->ۥ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/internal/zzc;

    move-result-object v2

    goto :goto_20

    :cond_20
    const/4 v2, 0x0

    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/ci$if;->ᴵ(Landroid/os/IBinder;)Lo/ci;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lo/bw$if;->ˊ(Lcom/google/android/gms/maps/model/internal/zzc;Lo/ci;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_38
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_21

    sget-object v0, Lcom/google/android/gms/maps/model/internal/zzc;->CREATOR:Lo/dn;

    invoke-virtual {v0, p2}, Lo/dn;->ۥ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/internal/zzc;

    move-result-object v2

    goto :goto_21

    :cond_21
    const/4 v2, 0x0

    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/ci$if;->ᴵ(Landroid/os/IBinder;)Lo/ci;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lo/bw$if;->ˊ(Lcom/google/android/gms/maps/model/internal/zzc;ILo/ci;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_39
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_22

    sget-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Lo/ei;

    invoke-virtual {v0, p2}, Lo/ei;->יִ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    goto :goto_22

    :cond_22
    const/4 v2, 0x0

    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_23

    sget-object v0, Lcom/google/android/gms/maps/model/internal/zzp;->CREATOR:Lo/dx;

    invoke-virtual {v0, p2}, Lo/dx;->ᐣ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/internal/zzp;

    move-result-object v3

    goto :goto_23

    :cond_23
    const/4 v3, 0x0

    :goto_23
    invoke-virtual {p0, v2, v3}, Lo/bw$if;->ˊ(Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/google/android/gms/maps/model/internal/zzp;)Lo/dt;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_24

    invoke-interface {v4}, Lo/dt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_24

    :cond_24
    const/4 v0, 0x0

    :goto_24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_3a
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/cl$if;->ᵢ(Landroid/os/IBinder;)Lo/cl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/bw$if;->ˊ(Lo/cl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_3b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_25

    sget-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lo/ec;

    invoke-virtual {v0, p2}, Lo/ec;->ᕀ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v2

    goto :goto_25

    :cond_25
    const/4 v2, 0x0

    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_26

    sget-object v0, Lcom/google/android/gms/maps/model/internal/zze;->CREATOR:Lo/do;

    invoke-virtual {v0, p2}, Lo/do;->ᐠ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/internal/zze;

    move-result-object v3

    goto :goto_26

    :cond_26
    const/4 v3, 0x0

    :goto_26
    invoke-virtual {p0, v2, v3}, Lo/bw$if;->ˊ(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Lcom/google/android/gms/maps/model/internal/zze;)Lo/dr;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_27

    invoke-interface {v4}, Lo/dr;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_27

    :cond_27
    const/4 v0, 0x0

    :goto_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :goto_28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2c -> :sswitch_2a
        0x2d -> :sswitch_2b
        0x35 -> :sswitch_2c
        0x36 -> :sswitch_2d
        0x37 -> :sswitch_2e
        0x38 -> :sswitch_2f
        0x39 -> :sswitch_30
        0x3a -> :sswitch_31
        0x3b -> :sswitch_32
        0x3c -> :sswitch_33
        0x3d -> :sswitch_34
        0x40 -> :sswitch_35
        0x41 -> :sswitch_36
        0x42 -> :sswitch_37
        0x43 -> :sswitch_38
        0x44 -> :sswitch_39
        0x45 -> :sswitch_3a
        0x46 -> :sswitch_3b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
