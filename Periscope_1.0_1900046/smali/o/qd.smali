.class Lo/qd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/qe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/qd$1;,
        Lo/qd$ˊ;,
        Lo/qd$if;
    }
.end annotation


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

    iput-object v0, p0, Lo/qd;->dV:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public cl()Lo/pz;
    .locals 8

    .line 32
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 33
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "AdvertisingInfoServiceStrategy cannot be called on the main thread"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/qd;->dV:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 40
    const-string v0, "com.android.vending"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 41
    :catch_0
    move-exception v3

    .line 47
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Unable to determine if Google Play Services is available"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 52
    :goto_0
    new-instance v3, Lo/qd$if;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lo/qd$if;-><init>(Lo/qd$1;)V

    .line 53
    new-instance v4, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v0, "com.google.android.gms"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :try_start_1
    iget-object v0, p0, Lo/qd;->dV:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :try_start_2
    new-instance v5, Lo/qd$ˊ;

    invoke-virtual {v3}, Lo/qd$if;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v5, v0}, Lo/qd$ˊ;-><init>(Landroid/os/IBinder;)V

    .line 60
    new-instance v6, Lo/pz;

    invoke-virtual {v5}, Lo/qd$ˊ;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lo/qd$ˊ;->cr()Z

    move-result v1

    invoke-direct {v6, v0, v1}, Lo/pz;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :try_start_3
    iget-object v0, p0, Lo/qd;->dV:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    return-object v6

    .line 62
    :catch_1
    move-exception v5

    .line 63
    :try_start_4
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Exception in binding to Google Play Service to capture AdvertisingId"

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    :try_start_5
    iget-object v0, p0, Lo/qd;->dV:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 68
    goto :goto_1

    .line 67
    :catchall_0
    move-exception v7

    :try_start_6
    iget-object v0, p0, Lo/qd;->dV:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v7

    :goto_1
    goto :goto_2

    .line 70
    :cond_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not bind to Google Play Service to capture AdvertisingId"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 76
    :goto_2
    goto :goto_3

    .line 73
    :catch_2
    move-exception v5

    .line 74
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not bind to Google Play Service to capture AdvertisingId"

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method
