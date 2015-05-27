.class public Lo/ﹿ;
.super Landroid/widget/PopupWindow;
.source ""


# instance fields
.field private final ӭ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget-object v0, Lo/ڊ$ʽ;->PopupWindow:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lo/ๅ;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lo/ๅ;

    move-result-object v2

    .line 46
    sget v0, Lo/ڊ$ʽ;->PopupWindow_overlapAnchor:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lo/ๅ;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/ﹿ;->ӭ:Z

    .line 48
    sget v0, Lo/ڊ$ʽ;->PopupWindow_android_popupBackground:I

    invoke-virtual {v2, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ﹿ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {v2}, Lo/ๅ;->recycle()V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 54
    invoke-static {p0}, Lo/ﹿ;->ˊ(Landroid/widget/PopupWindow;)V

    .line 56
    :cond_0
    return-void
.end method

.method private static ˊ(Landroid/widget/PopupWindow;)V
    .locals 5

    .line 88
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mAnchor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 89
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mOnScrollChangedListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 93
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 95
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-object v4, v0

    .line 100
    new-instance v0, Lo/ﺘ;

    invoke-direct {v0, v2, p0, v4}, Lo/ﺘ;-><init>(Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 116
    const-string v0, "AppCompatPopupWindow"

    const-string v1, "Exception while installing workaround OnScrollChangedListener"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :goto_0
    return-void
.end method


# virtual methods
.method public showAsDropDown(Landroid/view/View;II)V
    .locals 2

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lo/ﹿ;->ӭ:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 64
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 65
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lo/ﹿ;->ӭ:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 74
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 75
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 2

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lo/ﹿ;->ӭ:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 83
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 84
    return-void
.end method
