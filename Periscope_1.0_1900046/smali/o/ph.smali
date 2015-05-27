.class Lo/ph;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UI:Lo/pg$ˊ;

.field final synthetic UJ:Lo/pg$if;


# direct methods
.method constructor <init>(Lo/pg$if;Lo/pg$ˊ;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lo/ph;->UJ:Lo/pg$if;

    iput-object p2, p0, Lo/ph;->UI:Lo/pg$ˊ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lo/ph;->UI:Lo/pg$ˊ;

    invoke-virtual {v0, p1, p2}, Lo/pg$ˊ;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lo/ph;->UI:Lo/pg$ˊ;

    invoke-virtual {v0, p1}, Lo/pg$ˊ;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 121
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lo/ph;->UI:Lo/pg$ˊ;

    invoke-virtual {v0, p1}, Lo/pg$ˊ;->onActivityPaused(Landroid/app/Activity;)V

    .line 105
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lo/ph;->UI:Lo/pg$ˊ;

    invoke-virtual {v0, p1}, Lo/pg$ˊ;->onActivityResumed(Landroid/app/Activity;)V

    .line 100
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lo/ph;->UI:Lo/pg$ˊ;

    invoke-virtual {v0, p1, p2}, Lo/pg$ˊ;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 116
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lo/ph;->UI:Lo/pg$ˊ;

    invoke-virtual {v0, p1}, Lo/pg$ˊ;->onActivityStarted(Landroid/app/Activity;)V

    .line 95
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lo/ph;->UI:Lo/pg$ˊ;

    invoke-virtual {v0, p1}, Lo/pg$ˊ;->onActivityStopped(Landroid/app/Activity;)V

    .line 110
    return-void
.end method
