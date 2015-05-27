.class public Lo/ᒪ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᒥ;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᒪ$1;,
        Lo/ᒪ$if;,
        Lo/ᒪ$ˊ;
    }
.end annotation


# static fields
.field private static final iI:[Landroid/graphics/Bitmap$Config;

.field private static final iJ:[Landroid/graphics/Bitmap$Config;

.field private static final iK:[Landroid/graphics/Bitmap$Config;

.field private static final iL:[Landroid/graphics/Bitmap$Config;


# instance fields
.field private final iM:Lo/ᒪ$ˊ;

.field private final iN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Landroid/graphics/Bitmap$Config;Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
        }
    .end annotation
.end field

.field private final im:Lo/Ꮮ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u13de<Lo/\u14aa$if;Landroid/graphics/Bitmap;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lo/ᒪ;->iI:[Landroid/graphics/Bitmap$Config;

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/ᒪ;->iJ:[Landroid/graphics/Bitmap$Config;

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/ᒪ;->iK:[Landroid/graphics/Bitmap$Config;

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/ᒪ;->iL:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lo/ᒪ$ˊ;

    invoke-direct {v0}, Lo/ᒪ$ˊ;-><init>()V

    iput-object v0, p0, Lo/ᒪ;->iM:Lo/ᒪ$ˊ;

    .line 46
    new-instance v0, Lo/Ꮮ;

    invoke-direct {v0}, Lo/Ꮮ;-><init>()V

    iput-object v0, p0, Lo/ᒪ;->im:Lo/Ꮮ;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ᒪ;->iN:Ljava/util/Map;

    .line 172
    return-void
.end method

.method private static ˊ(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lo/ᒪ;->iN:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    move-object v1, v0

    .line 117
    if-nez v1, :cond_0

    .line 118
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 119
    iget-object v0, p0, Lo/ᒪ;->iN:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    return-object v1
.end method

.method private ˊ(Lo/ᒪ$if;ILandroid/graphics/Bitmap$Config;)Lo/ᒪ$if;
    .locals 9

    .line 79
    move-object v2, p1

    .line 80
    invoke-static {p3}, Lo/ᒪ;->ˋ(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 81
    invoke-direct {p0, v6}, Lo/ᒪ;->ˊ(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v7

    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0

    .line 83
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v1, p2, 0x8

    if-gt v0, v1, :cond_2

    .line 84
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1

    if-nez v6, :cond_0

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_0
    invoke-virtual {v6, p3}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    :cond_1
    :goto_1
    iget-object v0, p0, Lo/ᒪ;->iM:Lo/ᒪ$ˊ;

    invoke-virtual {v0, p1}, Lo/ᒪ$ˊ;->ˊ(Lo/ᒧ;)V

    .line 87
    iget-object v0, p0, Lo/ᒪ;->iM:Lo/ᒪ$ˊ;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lo/ᒪ$ˊ;->ˏ(ILandroid/graphics/Bitmap$Config;)Lo/ᒪ$if;

    move-result-object v2

    goto :goto_2

    .line 80
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 92
    :cond_3
    :goto_2
    return-object v2
.end method

.method private ˊ(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V
    .locals 4

    .line 106
    invoke-direct {p0, p2}, Lo/ᒪ;->ˊ(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v2

    .line 107
    invoke-interface {v2, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 108
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 109
    invoke-interface {v2, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :goto_0
    return-void
.end method

.method static synthetic ˋ(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 1

    .line 26
    invoke-static {p0, p1}, Lo/ᒪ;->ˊ(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ˋ(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;
    .locals 2

    .line 225
    sget-object v0, Lo/ᒪ$1;->iO:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    sget-object v0, Lo/ᒪ;->iI:[Landroid/graphics/Bitmap$Config;

    return-object v0

    .line 229
    :pswitch_1
    sget-object v0, Lo/ᒪ;->iJ:[Landroid/graphics/Bitmap$Config;

    return-object v0

    .line 231
    :pswitch_2
    sget-object v0, Lo/ᒪ;->iK:[Landroid/graphics/Bitmap$Config;

    return-object v0

    .line 233
    :pswitch_3
    sget-object v0, Lo/ᒪ;->iL:[Landroid/graphics/Bitmap$Config;

    return-object v0

    .line 235
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeConfigStrategy{groupedMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ᒪ;->im:Lo/Ꮮ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sortedSizes=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 147
    iget-object v0, p0, Lo/ᒪ;->iN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v5, v0

    .line 148
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lo/ᒪ;->iN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v3, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_1
    const-string v0, ")}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʻ(Landroid/graphics/Bitmap;)I
    .locals 1

    .line 138
    invoke-static {p1}, Lo/ﾕ;->ˉ(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public ˋ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6

    .line 64
    invoke-static {p1, p2, p3}, Lo/ﾕ;->ͺ(IILandroid/graphics/Bitmap$Config;)I

    move-result v2

    .line 65
    iget-object v0, p0, Lo/ᒪ;->iM:Lo/ᒪ$ˊ;

    invoke-virtual {v0, v2, p3}, Lo/ᒪ$ˊ;->ˏ(ILandroid/graphics/Bitmap$Config;)Lo/ᒪ$if;

    move-result-object v3

    .line 66
    invoke-direct {p0, v3, v2, p3}, Lo/ᒪ;->ˊ(Lo/ᒪ$if;ILandroid/graphics/Bitmap$Config;)Lo/ᒪ$if;

    move-result-object v4

    .line 68
    iget-object v0, p0, Lo/ᒪ;->im:Lo/Ꮮ;

    invoke-virtual {v0, v4}, Lo/Ꮮ;->ˋ(Lo/ᒧ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v5, v0

    .line 69
    if-eqz v5, :cond_1

    .line 71
    invoke-static {v5}, Lo/ﾕ;->ˉ(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/ᒪ;->ˊ(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V

    .line 72
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-virtual {v5, p1, p2, v0}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 75
    :cond_1
    return-object v5
.end method

.method public ˎ(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    .line 132
    invoke-static {p1, p2, p3}, Lo/ﾕ;->ͺ(IILandroid/graphics/Bitmap$Config;)I

    move-result v1

    .line 133
    invoke-static {v1, p3}, Lo/ᒪ;->ˊ(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˏ(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 52
    invoke-static {p1}, Lo/ﾕ;->ˉ(Landroid/graphics/Bitmap;)I

    move-result v3

    .line 53
    iget-object v0, p0, Lo/ᒪ;->iM:Lo/ᒪ$ˊ;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lo/ᒪ$ˊ;->ˏ(ILandroid/graphics/Bitmap$Config;)Lo/ᒪ$if;

    move-result-object v4

    .line 55
    iget-object v0, p0, Lo/ᒪ;->im:Lo/Ꮮ;

    invoke-virtual {v0, v4, p1}, Lo/Ꮮ;->ˊ(Lo/ᒧ;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ᒪ;->ˊ(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v5

    .line 58
    invoke-static {v4}, Lo/ᒪ$if;->ˊ(Lo/ᒪ$if;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0

    .line 59
    invoke-static {v4}, Lo/ᒪ$if;->ˊ(Lo/ᒪ$if;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public ᐝ(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    .line 126
    invoke-static {p1}, Lo/ﾕ;->ˉ(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ᒪ;->ˊ(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᒨ()Landroid/graphics/Bitmap;
    .locals 4

    .line 97
    iget-object v0, p0, Lo/ᒪ;->im:Lo/Ꮮ;

    invoke-virtual {v0}, Lo/Ꮮ;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v2, v0

    .line 98
    if-eqz v2, :cond_0

    .line 99
    invoke-static {v2}, Lo/ﾕ;->ˉ(Landroid/graphics/Bitmap;)I

    move-result v3

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/ᒪ;->ˊ(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V

    .line 102
    :cond_0
    return-object v2
.end method
