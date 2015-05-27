.class public Lo/amf;
.super Landroid/support/v7/widget/RecyclerView;
.source ""


# instance fields
.field private bMY:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/amf;->bMY:Z

    .line 14
    invoke-direct {p0}, Lo/amf;->init()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/amf;->bMY:Z

    .line 19
    invoke-direct {p0}, Lo/amf;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/amf;->bMY:Z

    .line 24
    invoke-direct {p0}, Lo/amf;->init()V

    .line 25
    return-void
.end method

.method private init()V
    .locals 1

    .line 28
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/amf;->setOverScrollMode(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 37
    iget-boolean v0, p0, Lo/amf;->bMY:Z

    if-nez v0, :cond_0

    .line 38
    invoke-static {p1}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;)I

    move-result v1

    .line 39
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 41
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lo/amf;->bMY:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAllowScroll(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lo/amf;->bMY:Z

    .line 33
    return-void
.end method
