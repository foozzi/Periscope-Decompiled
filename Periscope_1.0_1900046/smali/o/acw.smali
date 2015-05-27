.class public Lo/acw;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/acw$if;
    }
.end annotation


# instance fields
.field private byb:Ljava/util/concurrent/Executor;

.field private final byc:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 15
    new-instance v0, Lo/acw$if;

    invoke-direct {v0, p0}, Lo/acw$if;-><init>(Lo/acw;)V

    iput-object v0, p0, Lo/acw;->byc:Landroid/os/IBinder;

    .line 32
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lo/acw;->byb:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/acw;->byc:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 19
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 20
    invoke-static {}, Lo/vf;->tM()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lo/acw;->byb:Ljava/util/concurrent/Executor;

    .line 21
    return-void
.end method
