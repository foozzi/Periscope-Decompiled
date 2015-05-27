.class public final Lo/dh;
.super Ljava/lang/Object;


# instance fields
.field private final Jg:Lo/dt;


# direct methods
.method public constructor <init>(Lo/dt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dt;

    iput-object v0, p0, Lo/dh;->Jg:Lo/dt;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lo/dh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/dh;->Jg:Lo/dt;

    move-object v1, p1

    check-cast v1, Lo/dh;

    iget-object v1, v1, Lo/dh;->Jg:Lo/dt;

    invoke-interface {v0, v1}, Lo/dt;->ʽ(Lo/dt;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v2

    new-instance v0, Lo/di;

    invoke-direct {v0, v2}, Lo/di;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/dh;->Jg:Lo/dt;

    invoke-interface {v0}, Lo/dt;->ﮐ()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v1

    new-instance v0, Lo/di;

    invoke-direct {v0, v1}, Lo/di;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
