.class public Lo/adw$ˊ;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/adw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02ca"
.end annotation


# instance fields
.field bzt:F

.field public gravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 687
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 676
    const/4 v0, -0x1

    iput v0, p0, Lo/adw$ˊ;->gravity:I

    .line 688
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 679
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 676
    const/4 v0, -0x1

    iput v0, p0, Lo/adw$ˊ;->gravity:I

    .line 681
    invoke-static {}, Lo/adw;->jL()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 682
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/adw$ˊ;->gravity:I

    .line 683
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 684
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 695
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    const/4 v0, -0x1

    iput v0, p0, Lo/adw$ˊ;->gravity:I

    .line 696
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 699
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 676
    const/4 v0, -0x1

    iput v0, p0, Lo/adw$ˊ;->gravity:I

    .line 700
    return-void
.end method

.method public constructor <init>(Lo/adw$ˊ;)V
    .locals 1

    .line 691
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 676
    const/4 v0, -0x1

    iput v0, p0, Lo/adw$ˊ;->gravity:I

    .line 692
    return-void
.end method
