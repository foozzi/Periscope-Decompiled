.class public final Lo/dg;
.super Ljava/lang/Object;


# static fields
.field private static IE:Lo/dp;


# direct methods
.method public static Ɨ(I)Lo/df;
    .locals 3

    :try_start_0
    new-instance v0, Lo/df;

    invoke-static {}, Lo/dg;->Ῡ()Lo/dp;

    move-result-object v1

    invoke-interface {v1, p0}, Lo/dp;->Ȋ(I)Lo/ﱟ;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/df;-><init>(Lo/ﱟ;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    new-instance v0, Lo/di;

    invoke-direct {v0, v2}, Lo/di;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public static ˊ(Lo/dp;)V
    .locals 1

    sget-object v0, Lo/dg;->IE:Lo/dp;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dp;

    sput-object v0, Lo/dg;->IE:Lo/dp;

    return-void
.end method

.method private static Ῡ()Lo/dp;
    .locals 2

    sget-object v0, Lo/dg;->IE:Lo/dp;

    const-string v1, "IBitmapDescriptorFactory is not initialized"

    invoke-static {v0, v1}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dp;

    return-object v0
.end method
