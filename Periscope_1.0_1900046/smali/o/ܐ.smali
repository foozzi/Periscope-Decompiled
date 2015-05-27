.class public final Lo/ܐ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final AY:[B

.field private static final AZ:[I

.field private static final Ba:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lo/ܐ;->AY:[B

    .line 32
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lo/ܐ;->AZ:[I

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lo/ܐ;->Ba:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
    .end array-data
.end method

.method public static ʿ(III)[B
    .locals 4

    .line 71
    const/4 v0, 0x2

    new-array v3, v0, [B

    .line 72
    shl-int/lit8 v0, p0, 0x3

    and-int/lit16 v0, v0, 0xf8

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v3, v1

    .line 73
    shl-int/lit8 v0, p1, 0x7

    and-int/lit16 v0, v0, 0x80

    shl-int/lit8 v1, p2, 0x3

    and-int/lit8 v1, v1, 0x78

    or-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, v3, v1

    .line 74
    return-object v3
.end method

.method public static ͺ([BII)[B
    .locals 5

    .line 113
    sget-object v0, Lo/ܐ;->AY:[B

    array-length v0, v0

    add-int/2addr v0, p2

    new-array v4, v0, [B

    .line 114
    sget-object v0, Lo/ܐ;->AY:[B

    sget-object v1, Lo/ܐ;->AY:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    sget-object v0, Lo/ܐ;->AY:[B

    array-length v0, v0

    invoke-static {p0, p1, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    return-object v4
.end method

.method public static ι([B)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v3, v0, 0x1f

    .line 52
    const/4 v0, 0x5

    if-eq v3, v0, :cond_0

    const/16 v0, 0x1d

    if-ne v3, v0, :cond_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 53
    :goto_0
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v4, 0x1

    aget-byte v1, p0, v1

    shr-int/lit8 v1, v1, 0x7

    and-int/lit8 v1, v1, 0x1

    or-int v5, v0, v1

    .line 55
    const/16 v0, 0xd

    if-ge v5, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 56
    sget-object v0, Lo/ܐ;->AZ:[I

    aget v6, v0, v5

    .line 57
    add-int/lit8 v0, v4, 0x1

    aget-byte v0, p0, v0

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v7, v0, 0xf

    .line 58
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
