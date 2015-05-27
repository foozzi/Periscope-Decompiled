.class public Lo/ᒣ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ი;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᒣ$1;,
        Lo/ᒣ$ˊ;,
        Lo/ᒣ$if;
    }
.end annotation


# static fields
.field private static final iy:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final iA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;"
        }
    .end annotation
.end field

.field private final iB:I

.field private final iC:Lo/ᒣ$if;

.field private iD:I

.field private iE:I

.field private iF:I

.field private iG:I

.field private iH:I

.field private final iz:Lo/ᒥ;

.field private ᴾ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lo/ᒣ;->iy:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 52
    invoke-static {}, Lo/ᒣ;->ᴳ()Lo/ᒥ;

    move-result-object v0

    invoke-static {}, Lo/ᒣ;->ᴼ()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lo/ᒣ;-><init>(ILo/ᒥ;Ljava/util/Set;)V

    .line 53
    return-void
.end method

.method constructor <init>(ILo/ᒥ;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILo/\u14a5;Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lo/ᒣ;->iB:I

    .line 40
    iput p1, p0, Lo/ᒣ;->ᴾ:I

    .line 41
    iput-object p2, p0, Lo/ᒣ;->iz:Lo/ᒥ;

    .line 42
    iput-object p3, p0, Lo/ᒣ;->iA:Ljava/util/Set;

    .line 43
    new-instance v0, Lo/ᒣ$ˊ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ᒣ$ˊ;-><init>(Lo/ᒣ$1;)V

    iput-object v0, p0, Lo/ᒣ;->iC:Lo/ᒣ$if;

    .line 44
    return-void
.end method

.method private dump()V
    .locals 2

    .line 198
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lo/ᒣ;->ᴮ()V

    .line 201
    :cond_0
    return-void
.end method

.method private declared-synchronized trimToSize(I)V
    .locals 4

    monitor-enter p0

    .line 174
    :goto_0
    :try_start_0
    iget v0, p0, Lo/ᒣ;->iD:I

    if-le v0, p1, :cond_3

    .line 175
    iget-object v0, p0, Lo/ᒣ;->iz:Lo/ᒥ;

    invoke-interface {v0}, Lo/ᒥ;->ᒨ()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 177
    if-nez v3, :cond_1

    .line 178
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "LruBitmapPool"

    const-string v1, "Size mismatch, resetting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lo/ᒣ;->ᴮ()V

    .line 182
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒣ;->iD:I

    .line 183
    monitor-exit p0

    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lo/ᒣ;->iC:Lo/ᒣ$if;

    invoke-interface {v0, v3}, Lo/ᒣ$if;->ι(Landroid/graphics/Bitmap;)V

    .line 187
    iget v0, p0, Lo/ᒣ;->iD:I

    iget-object v1, p0, Lo/ᒣ;->iz:Lo/ᒥ;

    invoke-interface {v1, v3}, Lo/ᒥ;->ʻ(Landroid/graphics/Bitmap;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lo/ᒣ;->iD:I

    .line 188
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    iget v0, p0, Lo/ᒣ;->iH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ᒣ;->iH:I

    .line 190
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evicting bitmap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ᒣ;->iz:Lo/ᒥ;

    invoke-interface {v2, v3}, Lo/ᒥ;->ᐝ(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2
    invoke-direct {p0}, Lo/ᒣ;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    goto/16 :goto_0

    .line 195
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private ᴧ()V
    .locals 1

    .line 109
    iget v0, p0, Lo/ᒣ;->ᴾ:I

    invoke-direct {p0, v0}, Lo/ᒣ;->trimToSize(I)V

    .line 110
    return-void
.end method

.method private ᴮ()V
    .locals 3

    .line 204
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/ᒣ;->iE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", misses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/ᒣ;->iF:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", puts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/ᒣ;->iG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", evictions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/ᒣ;->iH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/ᒣ;->iD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/ᒣ;->ᴾ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ᒣ;->iz:Lo/ᒥ;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method private static ᴳ()Lo/ᒥ;
    .locals 3

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 216
    new-instance v2, Lo/ᒪ;

    invoke-direct {v2}, Lo/ᒪ;-><init>()V

    goto :goto_0

    .line 218
    :cond_0
    new-instance v2, Lo/ܢ;

    invoke-direct {v2}, Lo/ܢ;-><init>()V

    .line 220
    :goto_0
    return-object v2
.end method

.method private static ᴼ()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;"
        }
    .end annotation

    .line 224
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 225
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 227
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized ʽ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lo/ᒣ;->iz:Lo/ᒥ;

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    sget-object v1, Lo/ᒣ;->iy:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-interface {v0, p1, p2, v1}, Lo/ᒥ;->ˋ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 131
    if-nez v3, :cond_2

    .line 132
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing bitmap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ᒣ;->iz:Lo/ᒥ;

    invoke-interface {v2, p1, p2, p3}, Lo/ᒥ;->ˎ(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1
    iget v0, p0, Lo/ᒣ;->iF:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ᒣ;->iF:I

    goto :goto_1

    .line 137
    :cond_2
    iget v0, p0, Lo/ᒣ;->iE:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ᒣ;->iE:I

    .line 138
    iget v0, p0, Lo/ᒣ;->iD:I

    iget-object v1, p0, Lo/ᒣ;->iz:Lo/ᒥ;

    invoke-interface {v1, v3}, Lo/ᒥ;->ʻ(Landroid/graphics/Bitmap;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lo/ᒣ;->iD:I

    .line 139
    iget-object v0, p0, Lo/ᒣ;->iC:Lo/ᒣ$if;

    invoke-interface {v0, v3}, Lo/ᒣ$if;->ι(Landroid/graphics/Bitmap;)V

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    .line 141
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 144
    :cond_3
    :goto_1
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get bitmap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ᒣ;->iz:Lo/ᒥ;

    invoke-interface {v2, p1, p2, p3}, Lo/ᒥ;->ˎ(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_4
    invoke-direct {p0}, Lo/ᒣ;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ʽ(Landroid/graphics/Bitmap;)Z
    .locals 5

    monitor-enter p0

    .line 79
    if-nez p1, :cond_0

    .line 80
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ᒣ;->iz:Lo/ᒥ;

    invoke-interface {v0, p1}, Lo/ᒥ;->ʻ(Landroid/graphics/Bitmap;)I

    move-result v0

    iget v1, p0, Lo/ᒣ;->ᴾ:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lo/ᒣ;->iA:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    :cond_1
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject bitmap from pool, bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ᒣ;->iz:Lo/ᒥ;

    invoke-interface {v2, p1}, Lo/ᒥ;->ᐝ(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is mutable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is allowed config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ᒣ;->iA:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 92
    :cond_3
    iget-object v0, p0, Lo/ᒣ;->iz:Lo/ᒥ;

    invoke-interface {v0, p1}, Lo/ᒥ;->ʻ(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 93
    iget-object v0, p0, Lo/ᒣ;->iz:Lo/ᒥ;

    invoke-interface {v0, p1}, Lo/ᒥ;->ˏ(Landroid/graphics/Bitmap;)V

    .line 94
    iget-object v0, p0, Lo/ᒣ;->iC:Lo/ᒣ$if;

    invoke-interface {v0, p1}, Lo/ᒣ$if;->ͺ(Landroid/graphics/Bitmap;)V

    .line 96
    iget v0, p0, Lo/ᒣ;->iG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ᒣ;->iG:I

    .line 97
    iget v0, p0, Lo/ᒣ;->iD:I

    add-int/2addr v0, v4

    iput v0, p0, Lo/ᒣ;->iD:I

    .line 99
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Put bitmap in pool="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ᒣ;->iz:Lo/ᒥ;

    invoke-interface {v2, p1}, Lo/ᒥ;->ᐝ(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_4
    invoke-direct {p0}, Lo/ᒣ;->dump()V

    .line 104
    invoke-direct {p0}, Lo/ᒣ;->ᴧ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ˋ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lo/ᒣ;->ʽ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ᒪ()V
    .locals 2

    .line 154
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "LruBitmapPool"

    const-string v1, "clearMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ᒣ;->trimToSize(I)V

    .line 158
    return-void
.end method

.method public ﹼ(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 163
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimMemory, level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lo/ᒣ;->ᒪ()V

    goto :goto_0

    .line 168
    :cond_1
    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    .line 169
    iget v0, p0, Lo/ᒣ;->ᴾ:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lo/ᒣ;->trimToSize(I)V

    .line 171
    :cond_2
    :goto_0
    return-void
.end method
