.class public final Lo/bn;
.super Ljava/lang/Object;


# static fields
.field private static HR:Lo/bv;


# direct methods
.method public static ˊ(Lcom/google/android/gms/maps/model/LatLng;)Lo/bm;
    .locals 3

    :try_start_0
    new-instance v0, Lo/bm;

    invoke-static {}, Lo/bn;->ѵ()Lo/bv;

    move-result-object v1

    invoke-interface {v1, p0}, Lo/bv;->ˋ(Lcom/google/android/gms/maps/model/LatLng;)Lo/ﱟ;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/bm;-><init>(Lo/ﱟ;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    new-instance v0, Lo/di;

    invoke-direct {v0, v2}, Lo/di;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public static ˊ(Lo/bv;)V
    .locals 1

    invoke-static {p0}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bv;

    sput-object v0, Lo/bn;->HR:Lo/bv;

    return-void
.end method

.method private static ѵ()Lo/bv;
    .locals 2

    sget-object v0, Lo/bn;->HR:Lo/bv;

    const-string v1, "CameraUpdateFactory is not initialized"

    invoke-static {v0, v1}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bv;

    return-object v0
.end method
