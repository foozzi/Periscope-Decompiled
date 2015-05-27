.class public final Lo/bo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/bo$if;
    }
.end annotation


# instance fields
.field private final HS:Lo/bw;

.field private HT:Lo/bu;


# direct methods
.method protected constructor <init>(Lo/bw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bw;

    iput-object v0, p0, Lo/bo;->HS:Lo/bw;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/bo;->HS:Lo/bw;

    invoke-interface {v0}, Lo/bw;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v0, Lo/di;

    invoke-direct {v0, v1}, Lo/di;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :goto_0
    return-void
.end method

.method public final ł(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/bo;->HS:Lo/bw;

    invoke-interface {v0, p1}, Lo/bw;->ł(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v0, Lo/di;

    invoke-direct {v0, v1}, Lo/di;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :goto_0
    return-void
.end method

.method public final ˊ(Lcom/google/android/gms/maps/model/MarkerOptions;)Lo/dh;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/bo;->HS:Lo/bw;

    invoke-interface {v0, p1}, Lo/bw;->ˋ(Lcom/google/android/gms/maps/model/MarkerOptions;)Lo/dt;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lo/dh;

    invoke-direct {v0, v1}, Lo/dh;-><init>(Lo/dt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v0, Lo/di;

    invoke-direct {v0, v1}, Lo/di;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final ˊ(Lo/bm;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lo/bo;->HS:Lo/bw;

    invoke-virtual {p1}, Lo/bm;->п()Lo/ﱟ;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/bw;->ˋ(Lo/ﱟ;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v0, Lo/di;

    invoke-direct {v0, v2}, Lo/di;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :goto_0
    return-void
.end method

.method public final ˊ(Lo/bo$if;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/bo;->HS:Lo/bw;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/bw;->ˊ(Lo/cu;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/bo;->HS:Lo/bw;

    new-instance v1, Lo/bp;

    invoke-direct {v1, p0, p1}, Lo/bp;-><init>(Lo/bo;Lo/bo$if;)V

    invoke-interface {v0, v1}, Lo/bw;->ˊ(Lo/cu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v0, Lo/di;

    invoke-direct {v0, v2}, Lo/di;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :goto_1
    return-void
.end method

.method public final Ғ()Lo/bu;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lo/bo;->HT:Lo/bu;

    if-nez v0, :cond_0

    new-instance v0, Lo/bu;

    iget-object v1, p0, Lo/bo;->HS:Lo/bw;

    invoke-interface {v1}, Lo/bw;->อ()Lo/ce;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/bu;-><init>(Lo/ce;)V

    iput-object v0, p0, Lo/bo;->HT:Lo/bu;

    :cond_0
    iget-object v0, p0, Lo/bo;->HT:Lo/bu;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    new-instance v0, Lo/di;

    invoke-direct {v0, v2}, Lo/di;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
