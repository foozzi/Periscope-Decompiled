.class public Lo/x;
.super Lo/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/x$if;
    }
.end annotation


# instance fields
.field private final Gi:Lo/w;

.field private final Gj:Lo/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lo/x;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lo/m;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;Ljava/lang/String;)V

    new-instance v0, Lo/w;

    iget-object v1, p0, Lo/x;->FV:Lo/ab;

    invoke-direct {v0, p1, v1}, Lo/w;-><init>(Landroid/content/Context;Lo/ab;)V

    iput-object v0, p0, Lo/x;->Gi:Lo/w;

    iget-object v0, p0, Lo/x;->FV:Lo/ab;

    invoke-static {p1, p7, p8, v0}, Lo/j;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/ab;)Lo/j;

    move-result-object v0

    iput-object v0, p0, Lo/x;->Gj:Lo/j;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 5

    iget-object v2, p0, Lo/x;->Gi:Lo/w;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lo/x;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lo/x;->Gi:Lo/w;

    invoke-virtual {v0}, Lo/w;->removeAllListeners()V

    iget-object v0, p0, Lo/x;->Gi:Lo/w;

    invoke-virtual {v0}, Lo/w;->ｒ()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v0, "LocationClientImpl"

    const-string v1, "Client disconnected before listeners could be cleaned up"

    :try_start_2
    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Lo/m;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v2

    throw v4

    :goto_1
    return-void
.end method

.method public ˊ(Lcom/google/android/gms/location/LocationRequest;Lo/ay;Landroid/os/Looper;)V
    .locals 3

    iget-object v1, p0, Lo/x;->Gi:Lo/w;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lo/x;->Gi:Lo/w;

    invoke-virtual {v0, p1, p2, p3}, Lo/w;->ˊ(Lcom/google/android/gms/location/LocationRequest;Lo/ay;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :goto_0
    return-void
.end method

.method public ˊ(Lcom/google/android/gms/location/LocationSettingsRequest;Lo/ᖧ$ˊ;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/google/android/gms/location/LocationSettingsRequest;Lo/\u15a7$\u02ca<Lcom/google/android/gms/location/LocationSettingsResult;>;Ljava/lang/String;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lo/x;->ᴘ()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "locationSettingsRequest can\'t be null nor empty."

    invoke-static {v0, v1}, Lo/ﺧ;->ˏ(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "listener can\'t be null."

    invoke-static {v0, v1}, Lo/ﺧ;->ˏ(ZLjava/lang/Object;)V

    new-instance v2, Lo/x$if;

    invoke-direct {v2, p2}, Lo/x$if;-><init>(Lo/ᖧ$ˊ;)V

    invoke-virtual {p0}, Lo/x;->ᴝ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/u;

    invoke-interface {v0, p1, v2, p3}, Lo/u;->ˊ(Lcom/google/android/gms/location/LocationSettingsRequest;Lo/v;Ljava/lang/String;)V

    return-void
.end method

.method public ˊ(Lo/ay;)V
    .locals 1

    iget-object v0, p0, Lo/x;->Gi:Lo/w;

    invoke-virtual {v0, p1}, Lo/w;->ˊ(Lo/ay;)V

    return-void
.end method
