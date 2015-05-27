.class Lo/qc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/qe;


# instance fields
.field private final dV:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/qc;->dV:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private cq()Ljava/lang/String;
    .locals 4

    .line 56
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 59
    invoke-direct {p0}, Lo/qc;->ː()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 61
    :catch_0
    move-exception v3

    .line 62
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not call getId on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-interface {v0, v1, v2}, Lo/ps;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method private cr()Z
    .locals 4

    .line 71
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isLimitAdTrackingEnabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 74
    invoke-direct {p0}, Lo/qc;->ː()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 76
    :catch_0
    move-exception v3

    .line 77
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not call isLimitAdTrackingEnabled on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-interface {v0, v1, v2}, Lo/ps;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method private ː()Ljava/lang/Object;
    .locals 6

    .line 87
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lo/qc;->dV:Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 91
    :catch_0
    move-exception v5

    .line 92
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not call getAdvertisingIdInfo on com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-interface {v0, v1, v2}, Lo/ps;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public cl()Lo/pz;
    .locals 3

    .line 48
    iget-object v0, p0, Lo/qc;->dV:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lo/qc;->ۥ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lo/pz;

    invoke-direct {p0}, Lo/qc;->cq()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lo/qc;->cr()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lo/pz;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method ۥ(Landroid/content/Context;)Z
    .locals 7

    .line 33
    const-string v0, "o.\u10eb"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isGooglePlayServicesAvailable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0

    .line 36
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 37
    :catch_0
    move-exception v5

    .line 38
    const/4 v0, 0x0

    return v0
.end method
