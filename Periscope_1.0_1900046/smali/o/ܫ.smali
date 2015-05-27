.class public final Lo/ܫ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lo/ܫ;->AY:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public static ˊ([BII[Z)I
    .locals 5

    .line 90
    sub-int v2, p2, p1

    .line 92
    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 93
    if-nez v2, :cond_1

    .line 94
    return p2

    .line 97
    :cond_1
    if-eqz p3, :cond_4

    .line 98
    const/4 v0, 0x0

    aget-boolean v0, p3, v0

    if-eqz v0, :cond_2

    .line 99
    invoke-static {p3}, Lo/ܫ;->ˊ([Z)V

    .line 100
    add-int/lit8 v0, p1, -0x3

    return v0

    .line 101
    :cond_2
    const/4 v0, 0x1

    if-le v2, v0, :cond_3

    const/4 v0, 0x1

    aget-boolean v0, p3, v0

    if-eqz v0, :cond_3

    aget-byte v0, p0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 102
    invoke-static {p3}, Lo/ܫ;->ˊ([Z)V

    .line 103
    add-int/lit8 v0, p1, -0x2

    return v0

    .line 104
    :cond_3
    const/4 v0, 0x2

    if-le v2, v0, :cond_4

    const/4 v0, 0x2

    aget-boolean v0, p3, v0

    if-eqz v0, :cond_4

    aget-byte v0, p0, p1

    if-nez v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 106
    invoke-static {p3}, Lo/ܫ;->ˊ([Z)V

    .line 107
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 111
    :cond_4
    add-int/lit8 v3, p2, -0x1

    .line 115
    add-int/lit8 v4, p1, 0x2

    :goto_1
    if-ge v4, v3, :cond_8

    .line 116
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xfe

    if-eqz v0, :cond_5

    goto :goto_2

    .line 119
    :cond_5
    add-int/lit8 v0, v4, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_7

    add-int/lit8 v0, v4, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_7

    aget-byte v0, p0, v4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 120
    if-eqz p3, :cond_6

    .line 121
    invoke-static {p3}, Lo/ܫ;->ˊ([Z)V

    .line 123
    :cond_6
    add-int/lit8 v0, v4, -0x2

    return v0

    .line 127
    :cond_7
    add-int/lit8 v4, v4, -0x2

    .line 115
    :goto_2
    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 131
    :cond_8
    if-eqz p3, :cond_12

    .line 133
    const/4 v0, 0x2

    if-le v2, v0, :cond_a

    add-int/lit8 v0, p2, -0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_9

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_9

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    const/4 v0, 0x2

    if-ne v2, v0, :cond_c

    const/4 v0, 0x2

    aget-boolean v0, p3, v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_b

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    goto :goto_3

    :cond_c
    const/4 v0, 0x1

    aget-boolean v0, p3, v0

    if-eqz v0, :cond_d

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x0

    aput-boolean v0, p3, v1

    .line 138
    const/4 v0, 0x1

    if-le v2, v0, :cond_f

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_e

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    goto :goto_4

    :cond_f
    const/4 v0, 0x2

    aget-boolean v0, p3, v0

    if-eqz v0, :cond_10

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_4

    :cond_10
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x1

    aput-boolean v0, p3, v1

    .line 141
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    :goto_5
    const/4 v1, 0x2

    aput-boolean v0, p3, v1

    .line 144
    :cond_12
    return p2
.end method

.method public static ˊ([Z)V
    .locals 2

    .line 153
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-boolean v0, p0, v1

    .line 154
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    .line 155
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    .line 156
    return-void
.end method

.method public static ͺ(Lo/প;)[B
    .locals 3

    .line 49
    invoke-virtual {p0}, Lo/প;->readUnsignedShort()I

    move-result v1

    .line 50
    invoke-virtual {p0}, Lo/প;->getPosition()I

    move-result v2

    .line 51
    invoke-virtual {p0, v1}, Lo/প;->ʰ(I)V

    .line 52
    iget-object v0, p0, Lo/প;->fw:[B

    invoke-static {v0, v2, v1}, Lo/ܐ;->ͺ([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static ᐝ([BI)I
    .locals 2

    .line 64
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method
