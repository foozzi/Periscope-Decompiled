.class public final Lo/bu;
.super Ljava/lang/Object;


# instance fields
.field private final Iz:Lo/ce;


# direct methods
.method constructor <init>(Lo/ce;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/bu;->Iz:Lo/ce;

    return-void
.end method


# virtual methods
.method public ː(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/bu;->Iz:Lo/ce;

    invoke-interface {v0, p1}, Lo/ce;->ː(Z)V
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
