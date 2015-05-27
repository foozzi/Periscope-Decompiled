.class public Lo/aij;
.super Lo/ﺩ;
.source ""

# interfaces
.implements Lo/aik;


# instance fields
.field private bGp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lo/ﺩ;-><init>(Landroid/content/Context;)V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aij;->bGp:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1, p2}, Lo/ﺩ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aij;->bGp:Z

    .line 16
    return-void
.end method


# virtual methods
.method public setRefreshable(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lo/aij;->bGp:Z

    .line 21
    return-void
.end method

.method public ᔋ()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lo/aij;->bGp:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lo/ﺩ;->ᔋ()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
