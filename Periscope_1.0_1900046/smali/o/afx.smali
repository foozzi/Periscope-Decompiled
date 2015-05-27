.class abstract Lo/afx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field bCT:Z

.field public bCU:Z

.field view:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract xo()Z
.end method

.method abstract xp()Z
.end method

.method ʇ(I)Z
    .locals 1

    .line 17
    if-gez p1, :cond_1

    .line 18
    iget-boolean v0, p0, Lo/afx;->bCT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/afx;->xo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lo/afx;->xp()Z

    move-result v0

    return v0
.end method
