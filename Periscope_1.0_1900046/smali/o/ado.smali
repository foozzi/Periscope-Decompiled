.class public abstract Lo/ado;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ado$1;,
        Lo/ado$if;
    }
.end annotation


# instance fields
.field private final byJ:Lo/ado$if;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    new-instance v0, Lo/ado$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ado$if;-><init>(Lo/ado;Lo/ado$1;)V

    iput-object v0, p0, Lo/ado;->byJ:Lo/ado$if;

    .line 75
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lo/ado;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "e_from_push"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    sget-object v0, Lo/vi$if;->bnb:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lo/ado;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0}, Lo/vn;->tQ()V

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lo/ado;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0}, Lo/vn;->tR()V

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 68
    return-void
.end method

.method public onEventMainThread(Lo/aaj;)V
    .locals 0

    .line 73
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 49
    invoke-virtual {p0}, Lo/ado;->xa()Lo/ot;

    move-result-object v1

    .line 50
    iget-object v0, p0, Lo/ado;->byJ:Lo/ado$if;

    invoke-virtual {v1, v0}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v1, p0}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lo/ado;->xa()Lo/ot;

    move-result-object v1

    .line 57
    invoke-virtual {v1, p0}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lo/ado;->byJ:Lo/ado$if;

    invoke-virtual {v1, v0}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 61
    return-void
.end method

.method public wZ()Lo/vn;
    .locals 1

    .line 26
    invoke-static {p0}, Lo/vn;->ᵋ(Landroid/content/Context;)Lo/vn;

    move-result-object v0

    return-object v0
.end method

.method public xa()Lo/ot;
    .locals 1

    .line 30
    invoke-static {}, Lo/vf;->tH()Lo/ot;

    move-result-object v0

    return-object v0
.end method
