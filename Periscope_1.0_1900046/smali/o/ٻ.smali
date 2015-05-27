.class public final Lo/ٻ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final AU:[I

.field private static final AV:[I

.field private static final AW:[I

.field private static final AX:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/ٻ;->AU:[I

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lo/ٻ;->AV:[I

    .line 32
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lo/ٻ;->AW:[I

    .line 35
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lo/ٻ;->AX:[I

    return-void

    :array_0
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_2
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_3
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static ʼ(Lo/প;)Lo/ب;
    .locals 11

    .line 44
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v7, v0, 0x6

    .line 45
    sget-object v0, Lo/ٻ;->AU:[I

    aget v8, v0, v7

    .line 46
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v9

    .line 48
    sget-object v0, Lo/ٻ;->AV:[I

    and-int/lit8 v1, v9, 0x38

    shr-int/lit8 v1, v1, 0x3

    aget v10, v0, v1

    .line 50
    and-int/lit8 v0, v9, 0x4

    if-eqz v0, :cond_0

    .line 51
    add-int/lit8 v10, v10, 0x1

    .line 53
    :cond_0
    const-string v0, "audio/ac3"

    move v4, v10

    move v5, v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-static/range {v0 .. v6}, Lo/ب;->ˋ(Ljava/lang/String;IJIILjava/util/List;)Lo/ب;

    move-result-object v0

    return-object v0
.end method

.method public static ʽ(Lo/প;)Lo/ب;
    .locals 7

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 67
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v3, v0, 0x6

    .line 68
    sget-object v0, Lo/ٻ;->AU:[I

    aget v4, v0, v3

    .line 69
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v5

    .line 71
    sget-object v0, Lo/ٻ;->AV:[I

    and-int/lit8 v1, v5, 0xe

    shr-int/lit8 v1, v1, 0x1

    aget v6, v0, v1

    .line 73
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_0

    .line 74
    add-int/lit8 v6, v6, 0x1

    .line 76
    :cond_0
    const-string v0, "audio/eac3"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v2, v6, v4, v1}, Lo/ب;->ˋ(Ljava/lang/String;IIILjava/util/List;)Lo/ب;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Lo/ন;)Lo/ب;
    .locals 10

    .line 89
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lo/ন;->ɪ(I)V

    .line 91
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/ন;->ɾ(I)I

    move-result v7

    .line 92
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lo/ন;->ɪ(I)V

    .line 93
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lo/ন;->ɾ(I)I

    move-result v8

    .line 94
    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq v8, v0, :cond_0

    .line 95
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/ন;->ɪ(I)V

    .line 97
    :cond_0
    and-int/lit8 v0, v8, 0x4

    if-eqz v0, :cond_1

    .line 98
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/ন;->ɪ(I)V

    .line 100
    :cond_1
    const/4 v0, 0x2

    if-ne v8, v0, :cond_2

    .line 101
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/ন;->ɪ(I)V

    .line 103
    :cond_2
    invoke-virtual {p0}, Lo/ন;->ʎ()Z

    move-result v9

    .line 104
    const-string v0, "audio/ac3"

    sget-object v1, Lo/ٻ;->AV:[I

    aget v1, v1, v8

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    add-int v4, v1, v2

    sget-object v1, Lo/ٻ;->AU:[I

    aget v5, v1, v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-static/range {v0 .. v6}, Lo/ب;->ˋ(Ljava/lang/String;IJIILjava/util/List;)Lo/ب;

    move-result-object v0

    return-object v0
.end method

.method public static ˋ(Lo/ন;)I
    .locals 6

    .line 118
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lo/ন;->ɪ(I)V

    .line 120
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/ন;->ɾ(I)I

    move-result v2

    .line 121
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lo/ন;->ɾ(I)I

    move-result v3

    .line 122
    sget-object v0, Lo/ٻ;->AU:[I

    aget v4, v0, v2

    .line 123
    sget-object v0, Lo/ٻ;->AW:[I

    div-int/lit8 v1, v3, 0x2

    aget v5, v0, v1

    .line 124
    const/16 v0, 0x7d00

    if-ne v4, v0, :cond_0

    .line 125
    mul-int/lit8 v0, v5, 0x6

    return v0

    .line 126
    :cond_0
    const v0, 0xac44

    if-ne v4, v0, :cond_1

    .line 127
    sget-object v0, Lo/ٻ;->AX:[I

    div-int/lit8 v1, v3, 0x2

    aget v0, v0, v1

    rem-int/lit8 v1, v3, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0

    .line 129
    :cond_1
    mul-int/lit8 v0, v5, 0x4

    return v0
.end method

.method public static เ(II)I
    .locals 3

    .line 143
    mul-int/lit8 v0, p0, 0x8

    mul-int v1, v0, p1

    .line 144
    const v2, 0x177000

    .line 145
    const v0, 0xbb800

    add-int/2addr v0, v1

    div-int/2addr v0, v2

    return v0
.end method
