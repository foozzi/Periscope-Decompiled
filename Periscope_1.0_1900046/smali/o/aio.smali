.class public Lo/aio;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private bGv:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public canScrollVertically(I)Z
    .locals 1

    .line 35
    iget-object v0, p0, Lo/aio;->bGv:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 30
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lo/aio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/aio;->bGv:Landroid/view/View;

    .line 31
    return-void
.end method
