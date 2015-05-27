.class public Lo/alx;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field private bMB:Z

.field private bMC:Landroid/graphics/drawable/Drawable;

.field private bMD:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    move-object v0, p0

    move-object v1, p1

    invoke-virtual {p0}, Lo/alx;->BG()I

    move-result v2

    invoke-virtual {p0}, Lo/alx;->BH()I

    move-result v3

    invoke-virtual {p0}, Lo/alx;->BI()I

    move-result v4

    invoke-virtual {p0}, Lo/alx;->BJ()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lo/alx;->ˊ(Landroid/content/Context;IIII)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1, p2}, Lo/alx;->ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0, p1, p2}, Lo/alx;->ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private tQ()V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lo/alx;->bMB:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lo/alx;->bMC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/alx;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lo/alx;->bMD:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/alx;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :goto_0
    return-void
.end method

.method private ˊ(Landroid/content/Context;IIII)V
    .locals 3

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/alx;->bMC:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v0, p0, Lo/alx;->bMC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 73
    if-lez p4, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/alx;->bMD:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v0, p0, Lo/alx;->bMD:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 77
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/alx;->bMD:Landroid/graphics/drawable/Drawable;

    .line 80
    :goto_0
    invoke-direct {p0}, Lo/alx;->tQ()V

    .line 81
    return-void
.end method

.method private ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .line 51
    sget-object v0, Lo/vh$if;->PsCheckButton:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lo/alx;->BG()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 56
    invoke-virtual {p0}, Lo/alx;->BH()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 58
    invoke-virtual {p0}, Lo/alx;->BI()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 60
    invoke-virtual {p0}, Lo/alx;->BJ()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 62
    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lo/alx;->ˊ(Landroid/content/Context;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v11

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v11

    .line 66
    :goto_0
    return-void
.end method


# virtual methods
.method protected BG()I
    .locals 1

    .line 25
    const v0, 0x7f02006d

    return v0
.end method

.method protected BH()I
    .locals 1

    .line 29
    const v0, 0x7f09002a

    return v0
.end method

.method protected BI()I
    .locals 1

    .line 33
    const v0, 0x7f0200a2

    return v0
.end method

.method protected BJ()I
    .locals 1

    .line 37
    const v0, 0x7f090016

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lo/alx;->bMB:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lo/alx;->bMB:Z

    .line 93
    invoke-direct {p0}, Lo/alx;->tQ()V

    .line 94
    return-void
.end method
