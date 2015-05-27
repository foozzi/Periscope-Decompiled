.class public Lo/ڌ;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final EMPTY_STATE_SET:[I

.field static final FOCUSED_STATE_SET:[I

.field static final PRESSED_STATE_SET:[I

.field static final SELECTED_STATE_SET:[I

.field private static final ᖽ:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<Landroid/util/TypedValue;>;"
        }
    .end annotation
.end field

.field static final ᖾ:[I

.field static final ᖿ:[I

.field static final ᗁ:[I

.field static final ᘅ:[I

.field private static final ᘣ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lo/ڌ;->ᖽ:Ljava/lang/ThreadLocal;

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/ڌ;->ᖾ:[I

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lo/ڌ;->FOCUSED_STATE_SET:[I

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lo/ڌ;->ᖿ:[I

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lo/ڌ;->PRESSED_STATE_SET:[I

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lo/ڌ;->ᗁ:[I

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lo/ڌ;->SELECTED_STATE_SET:[I

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lo/ڌ;->ᘅ:[I

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lo/ڌ;->EMPTY_STATE_SET:[I

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lo/ڌ;->ᘣ:[I

    return-void

    :array_0
    .array-data 4
        -0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009c
    .end array-data

    :array_2
    .array-data 4
        0x10102fe
    .end array-data

    :array_3
    .array-data 4
        0x10100a7
    .end array-data

    :array_4
    .array-data 4
        0x10100a0
    .end array-data

    :array_5
    .array-data 4
        0x10100a1
    .end array-data

    :array_6
    .array-data 4
        -0x10100a7
        -0x101009c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ˊ(Landroid/content/Context;IF)I
    .locals 3

    .line 112
    invoke-static {p0, p1}, Lo/ڌ;->ˋ(Landroid/content/Context;I)I

    move-result v1

    .line 113
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 114
    int-to-float v0, v2

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Lo/ᐡ;->ˎ(II)I

    move-result v0

    return v0
.end method

.method public static ˋ(Landroid/content/Context;I)I
    .locals 5

    .line 66
    sget-object v0, Lo/ڌ;->ᘣ:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 67
    sget-object v0, Lo/ڌ;->ᘣ:[I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 71
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return v3

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v4
.end method

.method public static ˎ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    .line 76
    sget-object v0, Lo/ڌ;->ᘣ:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 77
    sget-object v0, Lo/ڌ;->ᘣ:[I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 79
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 81
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v4
.end method

.method public static ˏ(Landroid/content/Context;I)I
    .locals 6

    .line 86
    invoke-static {p0, p1}, Lo/ڌ;->ˎ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 87
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lo/ڌ;->ᖾ:[I

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 93
    :cond_0
    invoke-static {}, Lo/ڌ;->ị()Landroid/util/TypedValue;

    move-result-object v4

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010033

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 96
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    .line 98
    invoke-static {p0, p1, v5}, Lo/ڌ;->ˊ(Landroid/content/Context;IF)I

    move-result v0

    return v0
.end method

.method private static ị()Landroid/util/TypedValue;
    .locals 2

    .line 103
    sget-object v0, Lo/ڌ;->ᖽ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    move-object v1, v0

    .line 104
    if-nez v1, :cond_0

    .line 105
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 106
    sget-object v0, Lo/ڌ;->ᖽ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 108
    :cond_0
    return-object v1
.end method
