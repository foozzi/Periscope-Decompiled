.class public abstract Lo/anw;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bIx:Ljava/util/Random;

.field private static final bOv:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lo/anw;->bOv:[C

    .line 11
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lo/anw;->bIx:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 14
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ᐨ(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 18
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ᔨ(I)Ljava/lang/String;
    .locals 5

    .line 22
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 23
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    new-array v3, p0, [C

    .line 27
    const/4 v4, 0x0

    :goto_0
    array-length v0, v3

    if-ge v4, v0, :cond_1

    .line 28
    sget-object v0, Lo/anw;->bOv:[C

    sget-object v1, Lo/anw;->bIx:Ljava/util/Random;

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-char v0, v0, v1

    aput-char v0, v3, v4

    .line 27
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
