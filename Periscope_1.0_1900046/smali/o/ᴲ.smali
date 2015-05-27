.class public final Lo/ᴲ;
.super Landroid/widget/ListView;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lo/ᵁ$ˊ;
.implements Lo/ᵊ;


# static fields
.field private static final Ľ:[I


# instance fields
.field private ｼ:Lo/ᵁ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/ᴲ;->Ľ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010129
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lo/ᴲ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-virtual {p0, p0}, Lo/ᴲ;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    sget-object v0, Lo/ᴲ;->Ľ:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lo/ๅ;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lo/ๅ;

    move-result-object v2

    .line 59
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lo/ๅ;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ᴲ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lo/ๅ;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ᴲ;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_1
    invoke-virtual {v2}, Lo/ๅ;->recycle()V

    .line 66
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ᴲ;->setChildrenDrawingCacheEnabled(Z)V

    .line 79
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lo/ᴲ;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵃ;

    invoke-virtual {p0, v0}, Lo/ᴲ;->ˊ(Lo/ᵃ;)Z

    .line 90
    return-void
.end method

.method public ˊ(Lo/ᵁ;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lo/ᴲ;->ｼ:Lo/ᵁ;

    .line 71
    return-void
.end method

.method public ˊ(Lo/ᵃ;)Z
    .locals 2

    .line 83
    iget-object v0, p0, Lo/ᴲ;->ｼ:Lo/ᵁ;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lo/ᵁ;->ˊ(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method
