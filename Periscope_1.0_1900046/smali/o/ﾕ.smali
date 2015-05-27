.class public final Lo/ﾕ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﾕ$1;
    }
.end annotation


# static fields
.field private static final nk:[C

.field private static final nl:[C

.field private static final nm:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lo/ﾕ;->nk:[C

    .line 22
    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, Lo/ﾕ;->nl:[C

    .line 24
    const/16 v0, 0x28

    new-array v0, v0, [C

    sput-object v0, Lo/ﾕ;->nm:[C

    return-void
.end method

.method public static ˉ(Landroid/graphics/Bitmap;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 82
    :catch_0
    move-exception v2

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private static ˊ([B[C)Ljava/lang/String;
    .locals 5

    .line 52
    const/4 v4, 0x0

    :goto_0
    array-length v0, p0

    if-ge v4, v0, :cond_0

    .line 53
    aget-byte v0, p0, v4

    and-int/lit16 v3, v0, 0xff

    .line 54
    mul-int/lit8 v0, v4, 0x2

    sget-object v1, Lo/ﾕ;->nk:[C

    ushr-int/lit8 v2, v3, 0x4

    aget-char v1, v1, v2

    aput-char v1, p1, v0

    .line 55
    mul-int/lit8 v0, v4, 0x2

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lo/ﾕ;->nk:[C

    and-int/lit8 v2, v3, 0xf

    aget-char v1, v1, v2

    aput-char v1, p1, v0

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static ˊ(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/util/Collection<TT;>;)Ljava/util/List<TT;>;"
        }
    .end annotation

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 180
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_0
    return-object v1
.end method

.method private static ˎ(Landroid/graphics/Bitmap$Config;)I
    .locals 3

    .line 99
    if-nez p0, :cond_0

    .line 100
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 104
    :cond_0
    sget-object v0, Lo/ﾕ$1;->iO:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    const/4 v2, 0x1

    .line 107
    goto :goto_1

    .line 110
    :pswitch_1
    const/4 v2, 0x2

    .line 111
    goto :goto_1

    .line 114
    :goto_0
    :pswitch_2
    const/4 v2, 0x4

    .line 116
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static ͺ(IILandroid/graphics/Bitmap$Config;)I
    .locals 2

    .line 94
    mul-int v0, p0, p1

    invoke-static {p2}, Lo/ﾕ;->ˎ(Landroid/graphics/Bitmap$Config;)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static ᐝ([B)Ljava/lang/String;
    .locals 3

    .line 34
    sget-object v1, Lo/ﾕ;->nl:[C

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lo/ﾕ;->nl:[C

    invoke-static {p0, v0}, Lo/ﾕ;->ˊ([B[C)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static ᵀ(II)Z
    .locals 1

    .line 123
    invoke-static {p0}, Lo/ﾕ;->ᵒ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lo/ﾕ;->ᵒ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static ᵒ(I)Z
    .locals 1

    .line 127
    if-gtz p0, :cond_0

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ᵘ(I)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(I)Ljava/util/Queue<TT;>;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque;-><init>(I)V

    return-object v0
.end method

.method public static בּ()V
    .locals 2

    .line 134
    invoke-static {}, Lo/ﾕ;->ﭩ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call this method on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    return-void
.end method

.method public static ﭩ()Z
    .locals 2

    .line 152
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ﮇ()Z
    .locals 1

    .line 159
    invoke-static {}, Lo/ﾕ;->ﭩ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
