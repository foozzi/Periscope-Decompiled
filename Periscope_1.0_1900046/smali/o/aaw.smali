.class public Lo/aaw;
.super Lo/aav;
.source ""


# static fields
.field private static final bvb:[B

.field public static final bvg:Ljava/util/UUID;


# instance fields
.field private bvc:Lo/ب;

.field private bvd:I

.field private bve:I

.field private bvf:Lo/aat$if;

.field private γ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lo/aaw;->bvb:[B

    .line 35
    const-string v0, "62100F9A-A411-4E11-9141-482A1368BFD3"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lo/aaw;->bvg:Ljava/util/UUID;

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

.method public constructor <init>(ILjava/lang/String;IILo/aat$if;)V
    .locals 1

    .line 39
    const-string v0, "video/avc"

    invoke-direct {p0, p1, v0, p2}, Lo/aav;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aaw;->bvc:Lo/ب;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lo/aaw;->bve:I

    .line 40
    iput p3, p0, Lo/aaw;->bvd:I

    .line 41
    iput p4, p0, Lo/aaw;->γ:I

    .line 42
    iput-object p5, p0, Lo/aaw;->bvf:Lo/aat$if;

    .line 43
    return-void
.end method

.method private ʴ([B[B)Lo/ب;
    .locals 5

    .line 136
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v0, "video/avc"

    iget v1, p0, Lo/aaw;->bvd:I

    iget v2, p0, Lo/aaw;->γ:I

    const/4 v3, -0x1

    invoke-static {v0, v3, v1, v2, v4}, Lo/ب;->ˊ(Ljava/lang/String;IIILjava/util/List;)Lo/ب;

    move-result-object v0

    return-object v0
.end method

.method private ˊ([BIIJ)V
    .locals 18

    .line 144
    move/from16 v4, p2

    .line 145
    const/16 p2, 0x1

    .line 146
    const/4 v5, 0x0

    .line 147
    :goto_0
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    add-int v0, v4, p2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 149
    add-int/lit16 v5, v5, 0xff

    .line 150
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    add-int v0, v4, p2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v5, v0

    .line 153
    add-int/lit8 p2, p2, 0x1

    .line 154
    const/4 v6, 0x0

    .line 155
    :goto_1
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    add-int v0, v4, p2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 157
    add-int/lit16 v6, v6, 0xff

    .line 158
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 160
    :cond_1
    add-int v0, v4, p2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v6, v0

    .line 161
    add-int/lit8 p2, p2, 0x1

    .line 162
    const/4 v0, 0x5

    if-ne v5, v0, :cond_6

    const/16 v0, 0x10

    if-le v6, v0, :cond_6

    sub-int v0, p3, p2

    if-gt v6, v0, :cond_6

    .line 164
    add-int v0, v4, p2

    move-object/from16 v1, p1

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 165
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    .line 166
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    .line 167
    new-instance v12, Ljava/util/UUID;

    invoke-direct {v12, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .line 168
    sget-object v0, Lo/aaw;->bvg:Ljava/util/UUID;

    invoke-virtual {v12, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    add-int/lit8 p2, p2, 0x10

    .line 171
    add-int/lit8 v6, v6, -0x10

    .line 172
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 173
    const/4 v14, 0x0

    .line 174
    const/4 v15, 0x0

    :goto_2
    if-ge v15, v6, :cond_5

    .line 176
    add-int v0, v4, p2

    add-int/2addr v0, v15

    aget-byte v16, p1, v0

    .line 177
    const/4 v0, 0x2

    if-ne v14, v0, :cond_3

    .line 179
    move/from16 v0, v16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 182
    return-void

    .line 184
    :cond_2
    const/4 v14, 0x0

    goto :goto_4

    .line 188
    :cond_3
    if-nez v16, :cond_4

    .line 190
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 194
    :cond_4
    const/4 v14, 0x0

    .line 196
    :goto_3
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 174
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 199
    :cond_5
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v15, v0, [B

    .line 200
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 201
    invoke-virtual {v13, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 202
    invoke-static {v15}, Lo/akt;->ᓪ([B)[Ljava/lang/Object;

    move-result-object v16

    .line 203
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 205
    const/4 v0, 0x0

    aget-object v0, v16, v0

    check-cast v0, Ljava/util/Map;

    move-object/from16 v17, v0

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aaw;->bvf:Lo/aat$if;

    move-object/from16 v1, v17

    move-wide/from16 v2, p4

    invoke-interface {v0, v1, v2, v3}, Lo/aat$if;->ˊ(Ljava/util/Map;J)V

    .line 210
    :cond_6
    return-void
.end method

.method public static ᕀ([BII)J
    .locals 7

    .line 214
    const-wide/16 v4, 0x0

    .line 215
    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_0

    .line 217
    const/16 v0, 0x8

    shl-long v0, v4, v0

    add-int v2, p1, v6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long v4, v0, v2

    .line 215
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return-wide v4
.end method


# virtual methods
.method public ˊ(IJLo/م;Lo/ڋ;Z)I
    .locals 13

    .line 48
    if-eqz p6, :cond_0

    .line 50
    const/4 v0, -0x2

    return v0

    .line 53
    :cond_0
    iget-object v0, p0, Lo/aaw;->bvc:Lo/ب;

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lo/aaw;->buW:Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 56
    iget-object v0, p0, Lo/aaw;->buW:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 57
    iget-object v0, p0, Lo/aaw;->buW:Ljava/lang/String;

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 58
    const/4 v0, 0x0

    invoke-static {v7, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    .line 59
    const/4 v0, 0x0

    invoke-static {v8, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    .line 60
    array-length v0, v9

    sget-object v1, Lo/aaw;->bvb:[B

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v11, v0, [B

    .line 61
    sget-object v0, Lo/aaw;->bvb:[B

    sget-object v1, Lo/aaw;->bvb:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v11, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    sget-object v0, Lo/aaw;->bvb:[B

    array-length v0, v0

    array-length v1, v9

    const/4 v2, 0x0

    invoke-static {v9, v2, v11, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    array-length v0, v10

    sget-object v1, Lo/aaw;->bvb:[B

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v12, v0, [B

    .line 64
    sget-object v0, Lo/aaw;->bvb:[B

    sget-object v1, Lo/aaw;->bvb:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v12, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    sget-object v0, Lo/aaw;->bvb:[B

    array-length v0, v0

    array-length v1, v10

    const/4 v2, 0x0

    invoke-static {v10, v2, v12, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    invoke-direct {p0, v11, v12}, Lo/aaw;->ʴ([B[B)Lo/ب;

    move-result-object v0

    iput-object v0, p0, Lo/aaw;->bvc:Lo/ب;

    .line 69
    iget-object v0, p0, Lo/aaw;->bvc:Lo/ب;

    move-object/from16 v1, p4

    iput-object v0, v1, Lo/م;->ry:Lo/ب;

    .line 70
    const/4 v0, -0x4

    return v0

    .line 73
    :cond_1
    const/4 v6, 0x0

    .line 74
    const/4 v7, 0x0

    .line 77
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lo/aaw;->vM()Lo/alc;

    move-result-object v6

    .line 78
    if-nez v6, :cond_3

    .line 80
    const/4 v0, -0x2

    return v0

    .line 82
    :cond_3
    invoke-virtual {v6}, Lo/alc;->Br()Lo/akz;

    move-result-object v0

    iget-object v7, v0, Lo/akz;->buffer:[B

    .line 83
    const/4 v0, 0x1

    aget-byte v0, v7, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 85
    goto :goto_1

    .line 87
    :cond_4
    const/4 v0, 0x1

    aget-byte v0, v7, v0

    if-nez v0, :cond_2

    .line 89
    iget v0, p0, Lo/aaw;->bve:I

    if-nez v0, :cond_5

    .line 91
    const/16 v0, 0x9

    aget-byte v0, v7, v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/aaw;->bve:I

    .line 93
    :cond_5
    iget-object v0, p0, Lo/aaw;->buM:Lo/akw;

    invoke-virtual {v0, v6}, Lo/akw;->ˎ(Lo/alc;)V

    goto :goto_0

    .line 97
    :goto_1
    invoke-virtual {v6}, Lo/alc;->Br()Lo/akz;

    move-result-object v0

    iget v8, v0, Lo/akz;->length:I

    .line 98
    move-object/from16 v0, p5

    iget-object v0, v0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v8, :cond_6

    .line 100
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Lo/ڋ;->ʶ(I)Z

    .line 102
    :cond_6
    const/4 v9, 0x5

    .line 103
    const/4 v10, 0x0

    .line 104
    :goto_2
    add-int/lit8 v0, v8, -0x4

    if-ge v9, v0, :cond_8

    .line 106
    iget v0, p0, Lo/aaw;->bve:I

    invoke-static {v7, v9, v0}, Lo/aaw;->ᕀ([BII)J

    move-result-wide v0

    long-to-int v11, v0

    .line 107
    iget v0, p0, Lo/aaw;->bve:I

    add-int/2addr v9, v0

    .line 108
    add-int v0, v9, v11

    if-gt v0, v8, :cond_7

    .line 110
    aget-byte v12, v7, v9

    .line 111
    and-int/lit8 v0, v12, 0x1f

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    .line 114
    :sswitch_0
    const/4 v10, 0x1

    .line 115
    goto :goto_3

    .line 118
    :sswitch_1
    move-object v0, p0

    move-object v1, v7

    move v2, v9

    move v3, v11

    invoke-virtual {v6}, Lo/alc;->getTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lo/aaw;->ˊ([BIIJ)V

    .line 122
    :goto_3
    move-object/from16 v0, p5

    iget-object v0, v0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    sget-object v1, Lo/aaw;->bvb:[B

    sget-object v2, Lo/aaw;->bvb:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 123
    move-object/from16 v0, p5

    iget-object v0, v0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v7, v9, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 124
    add-int/2addr v9, v11

    .line 126
    :cond_7
    goto/16 :goto_2

    .line 127
    :cond_8
    if-eqz v10, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    move-object/from16 v1, p5

    iput v0, v1, Lo/ڋ;->flags:I

    .line 128
    move-object/from16 v0, p5

    iput v8, v0, Lo/ڋ;->size:I

    .line 129
    invoke-virtual {v6}, Lo/alc;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    move-object/from16 v2, p5

    iput-wide v0, v2, Lo/ڋ;->sJ:J

    .line 130
    iget-object v0, p0, Lo/aaw;->buM:Lo/akw;

    invoke-virtual {v0, v6}, Lo/akw;->ˎ(Lo/alc;)V

    .line 131
    const/4 v0, -0x3

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method
