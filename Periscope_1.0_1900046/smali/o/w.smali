.class public Lo/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/w$if;,
        Lo/w$ˋ;,
        Lo/w$ˊ;
    }
.end annotation


# instance fields
.field private final FV:Lo/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ab<Lo/u;>;"
        }
    .end annotation
.end field

.field private Gc:Landroid/content/ContentProviderClient;

.field private Gd:Z

.field private Ge:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/ay;Lo/w$\u02ca;>;"
        }
    .end annotation
.end field

.field private Gf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Object;Lo/w$\u02cb;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/ab<Lo/u;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/w;->Gc:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/w;->Gd:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/w;->Ge:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/w;->Gf:Ljava/util/Map;

    iput-object p1, p0, Lo/w;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lo/w;->FV:Lo/ab;

    return-void
.end method

.method private ˊ(Lo/ay;Landroid/os/Looper;)Lo/w$ˊ;
    .locals 5

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p0, Lo/w;->Ge:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lo/w;->Ge:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/w$ˊ;

    move-object v2, v0

    if-nez v2, :cond_1

    new-instance v2, Lo/w$ˊ;

    invoke-direct {v2, p1, p2}, Lo/w$ˊ;-><init>(Lo/ay;Landroid/os/Looper;)V

    :cond_1
    iget-object v0, p0, Lo/w;->Ge:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method


# virtual methods
.method public removeAllListeners()V
    .locals 6

    :try_start_0
    iget-object v2, p0, Lo/w;->Ge:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lo/w;->Ge:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/w$ˊ;

    move-object v4, v0

    if-eqz v4, :cond_0

    iget-object v0, p0, Lo/w;->FV:Lo/ab;

    invoke-interface {v0}, Lo/ab;->ᴝ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/u;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzpi;->ˋ(Lo/bf;)Lcom/google/android/gms/internal/zzpi;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/u;->ˊ(Lcom/google/android/gms/internal/zzpi;)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/w;->Ge:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lo/w;->Gf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/w$ˋ;

    move-object v4, v0

    if-eqz v4, :cond_2

    iget-object v0, p0, Lo/w;->FV:Lo/ab;

    invoke-interface {v0}, Lo/ab;->ᴝ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/u;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzpi;->ˊ(Lo/bg;)Lcom/google/android/gms/internal/zzpi;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/u;->ˊ(Lcom/google/android/gms/internal/zzpi;)V

    :cond_2
    goto :goto_1

    :cond_3
    iget-object v0, p0, Lo/w;->Gf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v2

    :try_start_2
    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    return-void
.end method

.method public ˊ(Lcom/google/android/gms/location/LocationRequest;Lo/ay;Landroid/os/Looper;)V
    .locals 3

    iget-object v0, p0, Lo/w;->FV:Lo/ab;

    invoke-interface {v0}, Lo/ab;->ᴘ()V

    invoke-direct {p0, p2, p3}, Lo/w;->ˊ(Lo/ay;Landroid/os/Looper;)Lo/w$ˊ;

    move-result-object v2

    iget-object v0, p0, Lo/w;->FV:Lo/ab;

    invoke-interface {v0}, Lo/ab;->ᴝ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/u;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpg;->ˊ(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzpg;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzpi;->ˋ(Lcom/google/android/gms/internal/zzpg;Lo/bf;)Lcom/google/android/gms/internal/zzpi;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/u;->ˊ(Lcom/google/android/gms/internal/zzpi;)V

    return-void
.end method

.method public ˊ(Lo/ay;)V
    .locals 5

    iget-object v0, p0, Lo/w;->FV:Lo/ab;

    invoke-interface {v0}, Lo/ab;->ᴘ()V

    const-string v0, "Invalid null listener"

    invoke-static {p1, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lo/w;->Ge:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lo/w;->Ge:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/w$ˊ;

    move-object v3, v0

    iget-object v0, p0, Lo/w;->Gc:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/w;->Ge:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/w;->Gc:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lo/w;->Gc:Landroid/content/ContentProviderClient;

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lo/w$ˊ;->release()V

    iget-object v0, p0, Lo/w;->FV:Lo/ab;

    invoke-interface {v0}, Lo/ab;->ᴝ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/u;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzpi;->ˋ(Lo/bf;)Lcom/google/android/gms/internal/zzpi;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/u;->ˊ(Lcom/google/android/gms/internal/zzpi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v2

    throw v4

    :goto_0
    return-void
.end method

.method public ᔇ(Z)V
    .locals 1

    iget-object v0, p0, Lo/w;->FV:Lo/ab;

    invoke-interface {v0}, Lo/ab;->ᴘ()V

    iget-object v0, p0, Lo/w;->FV:Lo/ab;

    invoke-interface {v0}, Lo/ab;->ᴝ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/u;

    invoke-interface {v0, p1}, Lo/u;->ᔇ(Z)V

    iput-boolean p1, p0, Lo/w;->Gd:Z

    return-void
.end method

.method public ｒ()V
    .locals 2

    iget-boolean v0, p0, Lo/w;->Gd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lo/w;->ᔇ(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
