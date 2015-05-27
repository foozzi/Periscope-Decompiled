.class public abstract Lo/ˤ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ˤ$if;
    }
.end annotation


# instance fields
.field private ŀ:Lo/ˤ$if;


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lo/ˤ;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 0

    .line 208
    return-void
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Lo/ˤ$if;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lo/ˤ;->ŀ:Lo/ˤ$if;

    .line 227
    return-void
.end method

.method public ˎ(Z)V
    .locals 1

    .line 217
    iget-object v0, p0, Lo/ˤ;->ŀ:Lo/ˤ$if;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lo/ˤ;->ŀ:Lo/ˤ$if;

    invoke-interface {v0, p1}, Lo/ˤ$if;->ˏ(Z)V

    .line 220
    :cond_0
    return-void
.end method
