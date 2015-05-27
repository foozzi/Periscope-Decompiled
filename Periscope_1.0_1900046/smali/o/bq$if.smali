.class Lo/bq$if;
.super Ljava/lang/Object;

# interfaces
.implements Lo/cf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final Ij:Landroid/view/ViewGroup;

.field private final Ik:Lo/bz;

.field private Il:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/bz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bz;

    iput-object v0, p0, Lo/bq$if;->Ik:Lo/bz;

    invoke-static {p1}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lo/bq$if;->Ij:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lo/bq$if;->Ik:Lo/bz;

    invoke-interface {v0, p1}, Lo/bz;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lo/bq$if;->Ik:Lo/bz;

    invoke-interface {v0}, Lo/bz;->ᐱ()Lo/ﱟ;

    move-result-object v0

    invoke-static {v0}, Lo/ﱡ;->ˊ(Lo/ﱟ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lo/bq$if;->Il:Landroid/view/View;

    iget-object v0, p0, Lo/bq$if;->Ij:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lo/bq$if;->Ij:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/bq$if;->Il:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
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

.method public onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/bq$if;->Ik:Lo/bz;

    invoke-interface {v0}, Lo/bz;->onDestroy()V
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

.method public onLowMemory()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/bq$if;->Ik:Lo/bz;

    invoke-interface {v0}, Lo/bz;->onLowMemory()V
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

.method public onPause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/bq$if;->Ik:Lo/bz;

    invoke-interface {v0}, Lo/bz;->onPause()V
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

.method public onResume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/bq$if;->Ik:Lo/bz;

    invoke-interface {v0}, Lo/bz;->onResume()V
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

.method public ˊ(Lo/bt;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lo/bq$if;->Ik:Lo/bz;

    new-instance v1, Lo/br;

    invoke-direct {v1, p0, p1}, Lo/br;-><init>(Lo/bq$if;Lo/bt;)V

    invoke-interface {v0, v1}, Lo/bz;->ˊ(Lo/ct;)V
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
