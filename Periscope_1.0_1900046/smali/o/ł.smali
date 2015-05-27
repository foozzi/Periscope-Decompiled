.class public Lo/ł;
.super Lo/ﺫ;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ł$if;
    }
.end annotation


# instance fields
.field private ও:Lo/ł$if;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lo/ﺫ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public setActionModeForChildListener(Lo/ł$if;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lo/ł;->ও:Lo/ł$if;

    .line 40
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/ł;->ও:Lo/ł$if;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lo/ł;->ও:Lo/ł$if;

    invoke-interface {v0, p1, p2}, Lo/ł$if;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    invoke-super {p0, p1, p2}, Lo/ﺫ;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
