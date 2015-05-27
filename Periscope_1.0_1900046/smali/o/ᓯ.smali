.class public Lo/ᓯ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ﺕ:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 44
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "computeFitSystemWindows"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/graphics/Rect;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lo/ᓯ;->ﺕ:Ljava/lang/reflect/Method;

    .line 46
    sget-object v0, Lo/ᓯ;->ﺕ:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lo/ᓯ;->ﺕ:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    goto :goto_0

    .line 49
    :catch_0
    move-exception v5

    .line 50
    const-string v0, "ViewUtils"

    const-string v1, "Could not find method computeFitSystemWindows. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .locals 1

    .line 70
    or-int v0, p0, p1

    return v0
.end method

.method public static ˊ(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .locals 5

    .line 116
    sget-object v0, Lo/ڊ$ʽ;->View:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 117
    const/4 v4, 0x0

    .line 118
    if-eqz p2, :cond_0

    .line 120
    sget v0, Lo/ڊ$ʽ;->View_android_theme:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 122
    :cond_0
    if-eqz p3, :cond_1

    if-nez v4, :cond_1

    .line 124
    sget v0, Lo/ڊ$ʽ;->View_theme:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 126
    if-eqz v4, :cond_1

    .line 127
    const-string v0, "ViewUtils"

    const-string v1, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    if-eqz v4, :cond_3

    instance-of v0, p0, Lo/ᒼ;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lo/ᒼ;

    invoke-virtual {v0}, Lo/ᒼ;->ﹻ()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 136
    :cond_2
    new-instance v0, Lo/ᒼ;

    invoke-direct {v0, p0, v4}, Lo/ᒼ;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    .line 138
    :cond_3
    return-object p0
.end method

.method public static ˊ(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .line 78
    sget-object v0, Lo/ᓯ;->ﺕ:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    sget-object v0, Lo/ᓯ;->ﺕ:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v3

    .line 82
    const-string v0, "ViewUtils"

    const-string v1, "Could not invoke computeFitSystemWindows"

    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :cond_0
    :goto_0
    return-void
.end method

.method public static ᐩ(Landroid/view/View;)Z
    .locals 2

    .line 58
    invoke-static {p0}, Lo/ﺑ;->ˌ(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
