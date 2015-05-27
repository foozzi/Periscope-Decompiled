.class abstract Lo/ᵪ;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᵪ$if;
    }
.end annotation


# static fields
.field private static final Ἲ:Landroid/view/animation/Interpolator;


# instance fields
.field protected final Ἳ:Lo/ᵪ$if;

.field protected final Ἴ:Landroid/content/Context;

.field protected Ἵ:Lo/ᖦ;

.field protected ⅈ:Lo/ᓴ;

.field protected 冖:Landroid/view/ViewGroup;

.field protected הּ:Z

.field protected כֿ:Z

.field protected ﮈ:I

.field protected ﺓ:Lo/ᵘ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lo/ᵪ;->Ἲ:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Lo/ᵪ$if;

    invoke-direct {v0, p0}, Lo/ᵪ$if;-><init>(Lo/ᵪ;)V

    iput-object v0, p0, Lo/ᵪ;->Ἳ:Lo/ᵪ$if;

    .line 67
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lo/ڊ$if;->actionBarPopupTheme:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lo/ᵪ;->Ἴ:Landroid/content/Context;

    goto :goto_0

    .line 72
    :cond_0
    iput-object p1, p0, Lo/ᵪ;->Ἴ:Landroid/content/Context;

    .line 74
    :goto_0
    return-void
.end method

.method protected static ˊ(IIZ)I
    .locals 1

    .line 238
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    goto :goto_0

    :cond_0
    add-int v0, p0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 79
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lo/ᵪ;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/ڊ$ʽ;->ActionBar:[I

    sget v2, Lo/ڊ$if;->actionBarStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 86
    sget v0, Lo/ڊ$ʽ;->ActionBar_height:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ᵪ;->setContentHeight(I)V

    .line 87
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    iget-object v0, p0, Lo/ᵪ;->ⅈ:Lo/ᓴ;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lo/ᵪ;->ⅈ:Lo/ᓴ;

    invoke-virtual {v0, p1}, Lo/ᓴ;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    :cond_1
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 111
    iput p1, p0, Lo/ᵪ;->ﮈ:I

    .line 112
    invoke-virtual {p0}, Lo/ᵪ;->requestLayout()V

    .line 113
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lo/ᵪ;->הּ:Z

    .line 100
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lo/ᵪ;->冖:Landroid/view/ViewGroup;

    .line 121
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lo/ᵪ;->כֿ:Z

    .line 108
    return-void
.end method

.method protected ˊ(Landroid/view/View;III)I
    .locals 1

    .line 228
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 232
    sub-int/2addr p2, p4

    .line 234
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected ˊ(Landroid/view/View;IIIZ)I
    .locals 5

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 244
    sub-int v0, p4, v3

    div-int/lit8 v0, v0, 0x2

    add-int v4, p3, v0

    .line 246
    if-eqz p5, :cond_0

    .line 247
    sub-int v0, p2, v2

    add-int v1, v4, v3

    invoke-virtual {p1, v0, v4, p2, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 249
    :cond_0
    add-int v0, p2, v2

    add-int v1, v4, v3

    invoke-virtual {p1, p2, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 252
    :goto_0
    if-eqz p5, :cond_1

    neg-int v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    return v0
.end method
