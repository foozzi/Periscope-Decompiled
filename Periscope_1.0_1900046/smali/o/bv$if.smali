.class public abstract Lo/bv$if;
.super Landroid/os/Binder;

# interfaces
.implements Lo/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/bv$if$if;
    }
.end annotation


# direct methods
.method public static ˑ(Landroid/os/IBinder;)Lo/bv;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v0, v1, Lo/bv;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lo/bv;

    return-object v0

    :cond_1
    new-instance v0, Lo/bv$if$if;

    invoke-direct {v0, p0}, Lo/bv$if$if;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_10

    :sswitch_0
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_1
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bv$if;->ऱ()Lo/ﱟ;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lo/ﱟ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_2
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/bv$if;->এ()Lo/ﱟ;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lo/ﱟ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_3
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lo/bv$if;->ˈ(FF)Lo/ﱟ;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lo/ﱟ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_4
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lo/bv$if;->י(F)Lo/ﱟ;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lo/ﱟ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_5
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lo/bv$if;->ٴ(F)Lo/ﱟ;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lo/ﱟ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_6
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lo/bv$if;->ˊ(FII)Lo/ﱟ;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lo/ﱟ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_7
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_6

    sget-object v0, Lcom/google/android/gms/maps/model/CameraPosition;->CREATOR:Lo/dy;

    invoke-virtual {v0, p2}, Lo/dy;->ᐩ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0, v2}, Lo/bv$if;->ˋ(Lcom/google/android/gms/maps/model/CameraPosition;)Lo/ﱟ;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lo/ﱟ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_8
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_8

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lo/eg;

    invoke-virtual {v0, p2}, Lo/eg;->ᵣ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0, v2}, Lo/bv$if;->ˋ(Lcom/google/android/gms/maps/model/LatLng;)Lo/ﱟ;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lo/ﱟ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_9
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_a

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lo/eg;

    invoke-virtual {v0, p2}, Lo/eg;->ᵣ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lo/bv$if;->ˊ(Lcom/google/android/gms/maps/model/LatLng;F)Lo/ﱟ;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_b

    invoke-interface {v4}, Lo/ﱟ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_c

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lo/ee;

    invoke-virtual {v0, p2}, Lo/ee;->ᵕ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lo/bv$if;->ˊ(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lo/ﱟ;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_d

    invoke-interface {v4}, Lo/ﱟ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :sswitch_b
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_e

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lo/ee;

    invoke-virtual {v0, p2}, Lo/ee;->ᵕ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lo/bv$if;->ˊ(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lo/ﱟ;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_f

    invoke-interface {v6}, Lo/ﱟ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    :goto_10
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
