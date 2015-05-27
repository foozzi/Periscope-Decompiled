.class public Lo/ƫ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zA:[I

.field private static final zB:[I

.field private static final zC:[I

.field private static final zz:[I


# instance fields
.field private final zD:Lo/ন;

.field private final zE:Ljava/lang/StringBuilder;

.field private final zF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u010d;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/ƫ;->zz:[I

    .line 66
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lo/ƫ;->zA:[I

    .line 86
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lo/ƫ;->zB:[I

    .line 96
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lo/ƫ;->zC:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0xe1
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0xe9
        0x5d
        0xed
        0xf3
        0xfa
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xe7
        0xf7
        0xd1
        0xf1
        0x25a0
    .end array-data

    :array_1
    .array-data 4
        0xae
        0xb0
        0xbd
        0xbf
        0x2122
        0xa2
        0xa3
        0x266a
        0xe0
        0x20
        0xe8
        0xe2
        0xea
        0xee
        0xf4
        0xfb
    .end array-data

    :array_2
    .array-data 4
        0xc1
        0xc9
        0xd3
        0xda
        0xdc
        0xfc
        0x2018
        0xa1
        0x2a
        0x27
        0x2014
        0xa9
        0x2120
        0x2022
        0x201c
        0x201d
        0xc0
        0xc2
        0xc7
        0xc8
        0xca
        0xcb
        0xeb
        0xce
        0xcf
        0xef
        0xd4
        0xd9
        0xf9
        0xdb
        0xab
        0xbb
    .end array-data

    :array_3
    .array-data 4
        0xc3
        0xe3
        0xcd
        0xcc
        0xec
        0xd2
        0xf2
        0xd5
        0xf5
        0x7b
        0x7d
        0x5c
        0x5e
        0x5f
        0x7c
        0x7e
        0xc4
        0xe4
        0xd6
        0xf6
        0xdf
        0xa5
        0xa4
        0x2502
        0xc5
        0xe5
        0xd8
        0xf8
        0x250c
        0x2510
        0x2514
        0x2518
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lo/ন;

    invoke-direct {v0}, Lo/ন;-><init>()V

    iput-object v0, p0, Lo/ƫ;->zD:Lo/ন;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lo/ƫ;->zE:Ljava/lang/StringBuilder;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ƫ;->zF:Ljava/util/ArrayList;

    .line 113
    return-void
.end method

.method private ˊ(BB)V
    .locals 2

    .line 234
    invoke-direct {p0}, Lo/ƫ;->ﮋ()V

    .line 235
    iget-object v0, p0, Lo/ƫ;->zF:Ljava/util/ArrayList;

    new-instance v1, Lo/Ŷ;

    invoke-direct {v1, p1, p2}, Lo/Ŷ;-><init>(BB)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public static ˊ(IILo/প;)Z
    .locals 6

    .line 254
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/16 v0, 0x8

    if-ge p1, v0, :cond_1

    .line 255
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 257
    :cond_1
    invoke-virtual {p2}, Lo/প;->getPosition()I

    move-result v1

    .line 258
    invoke-virtual {p2}, Lo/প;->readUnsignedByte()I

    move-result v2

    .line 259
    invoke-virtual {p2}, Lo/প;->readUnsignedShort()I

    move-result v3

    .line 260
    invoke-virtual {p2}, Lo/প;->readInt()I

    move-result v4

    .line 261
    invoke-virtual {p2}, Lo/প;->readUnsignedByte()I

    move-result v5

    .line 262
    invoke-virtual {p2, v1}, Lo/প;->setPosition(I)V

    .line 263
    const/16 v0, 0xb5

    if-ne v2, v0, :cond_2

    const/16 v0, 0x31

    if-ne v3, v0, :cond_2

    const v0, 0x47413934

    if-ne v4, v0, :cond_2

    const/4 v0, 0x3

    if-ne v5, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static ˋ(B)C
    .locals 3

    .line 207
    and-int/lit8 v0, p0, 0x7f

    add-int/lit8 v2, v0, -0x20

    .line 208
    sget-object v0, Lo/ƫ;->zz:[I

    aget v0, v0, v2

    int-to-char v0, v0

    return v0
.end method

.method private static ˎ(B)C
    .locals 2

    .line 212
    and-int/lit8 v1, p0, 0xf

    .line 213
    sget-object v0, Lo/ƫ;->zA:[I

    aget v0, v0, v1

    int-to-char v0, v0

    return v0
.end method

.method private static ˏ(B)C
    .locals 2

    .line 217
    and-int/lit8 v1, p0, 0x1f

    .line 218
    sget-object v0, Lo/ƫ;->zB:[I

    aget v0, v0, v1

    int-to-char v0, v0

    return v0
.end method

.method private static ᐝ(B)C
    .locals 2

    .line 222
    and-int/lit8 v1, p0, 0x1f

    .line 223
    sget-object v0, Lo/ƫ;->zC:[I

    aget v0, v0, v1

    int-to-char v0, v0

    return v0
.end method

.method private ﮋ()V
    .locals 3

    .line 227
    iget-object v0, p0, Lo/ƫ;->zE:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 228
    iget-object v0, p0, Lo/ƫ;->zF:Ljava/util/ArrayList;

    new-instance v1, Lo/ƨ;

    iget-object v2, p0, Lo/ƫ;->zE:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ƨ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lo/ƫ;->zE:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 231
    :cond_0
    return-void
.end method

.method private ﺏ()V
    .locals 2

    .line 239
    const/16 v0, 0x14

    const/16 v1, 0x21

    invoke-direct {p0, v0, v1}, Lo/ƫ;->ˊ(BB)V

    .line 240
    return-void
.end method


# virtual methods
.method ˏ(Lo/ڋ;)Lo/ż;
    .locals 10

    .line 120
    iget v0, p1, Lo/ڋ;->size:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lo/ƫ;->zF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    iget-object v0, p0, Lo/ƫ;->zE:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 126
    iget-object v0, p0, Lo/ƫ;->zD:Lo/ন;

    iget-object v1, p1, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ন;->ʾ([B)V

    .line 130
    iget-object v0, p0, Lo/ƫ;->zD:Lo/ন;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 131
    iget-object v0, p0, Lo/ƫ;->zD:Lo/ন;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v4

    .line 132
    iget-object v0, p0, Lo/ƫ;->zD:Lo/ন;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 134
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_c

    .line 135
    iget-object v0, p0, Lo/ƫ;->zD:Lo/ন;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 136
    iget-object v0, p0, Lo/ƫ;->zD:Lo/ন;

    invoke-virtual {v0}, Lo/ন;->ʎ()Z

    move-result v6

    .line 137
    if-nez v6, :cond_1

    .line 138
    iget-object v0, p0, Lo/ƫ;->zD:Lo/ন;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 139
    goto/16 :goto_1

    .line 141
    :cond_1
    iget-object v0, p0, Lo/ƫ;->zD:Lo/ন;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v7

    .line 142
    if-eqz v7, :cond_2

    .line 143
    iget-object v0, p0, Lo/ƫ;->zD:Lo/ন;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 144
    goto/16 :goto_1

    .line 146
    :cond_2
    iget-object v0, p0, Lo/ƫ;->zD:Lo/ন;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 147
    iget-object v0, p0, Lo/ƫ;->zD:Lo/ন;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v0

    int-to-byte v8, v0

    .line 148
    iget-object v0, p0, Lo/ƫ;->zD:Lo/ন;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 149
    iget-object v0, p0, Lo/ƫ;->zD:Lo/ন;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v0

    int-to-byte v9, v0

    .line 152
    if-nez v8, :cond_3

    if-nez v9, :cond_3

    .line 153
    goto/16 :goto_1

    .line 158
    :cond_3
    const/16 v0, 0x11

    if-eq v8, v0, :cond_4

    const/16 v0, 0x19

    if-ne v8, v0, :cond_5

    :cond_4
    and-int/lit8 v0, v9, 0x70

    const/16 v1, 0x30

    if-ne v0, v1, :cond_5

    .line 160
    iget-object v0, p0, Lo/ƫ;->zE:Ljava/lang/StringBuilder;

    invoke-static {v9}, Lo/ƫ;->ˎ(B)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    goto/16 :goto_1

    .line 166
    :cond_5
    const/16 v0, 0x12

    if-eq v8, v0, :cond_6

    const/16 v0, 0x1a

    if-ne v8, v0, :cond_7

    :cond_6
    and-int/lit8 v0, v9, 0x60

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    .line 168
    invoke-direct {p0}, Lo/ƫ;->ﺏ()V

    .line 169
    iget-object v0, p0, Lo/ƫ;->zE:Ljava/lang/StringBuilder;

    invoke-static {v9}, Lo/ƫ;->ˏ(B)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    goto :goto_1

    .line 175
    :cond_7
    const/16 v0, 0x13

    if-eq v8, v0, :cond_8

    const/16 v0, 0x1b

    if-ne v8, v0, :cond_9

    :cond_8
    and-int/lit8 v0, v9, 0x60

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 177
    invoke-direct {p0}, Lo/ƫ;->ﺏ()V

    .line 178
    iget-object v0, p0, Lo/ƫ;->zE:Ljava/lang/StringBuilder;

    invoke-static {v9}, Lo/ƫ;->ᐝ(B)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    goto :goto_1

    .line 183
    :cond_9
    const/16 v0, 0x20

    if-ge v8, v0, :cond_a

    .line 184
    invoke-direct {p0, v8, v9}, Lo/ƫ;->ˊ(BB)V

    .line 185
    goto :goto_1

    .line 189
    :cond_a
    iget-object v0, p0, Lo/ƫ;->zE:Ljava/lang/StringBuilder;

    invoke-static {v8}, Lo/ƫ;->ˋ(B)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    const/16 v0, 0x20

    if-lt v9, v0, :cond_b

    .line 191
    iget-object v0, p0, Lo/ƫ;->zE:Ljava/lang/StringBuilder;

    invoke-static {v9}, Lo/ƫ;->ˋ(B)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    :cond_b
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 195
    :cond_c
    invoke-direct {p0}, Lo/ƫ;->ﮋ()V

    .line 197
    iget-object v0, p0, Lo/ƫ;->zF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_d
    iget-object v0, p0, Lo/ƫ;->zF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Lo/č;

    .line 202
    iget-object v0, p0, Lo/ƫ;->zF:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 203
    new-instance v0, Lo/ż;

    iget-wide v1, p1, Lo/ڋ;->sJ:J

    invoke-virtual {p1}, Lo/ڋ;->ח()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3, v5}, Lo/ż;-><init>(JZ[Lo/č;)V

    return-object v0
.end method

.method ᵢ(Ljava/lang/String;)Z
    .locals 1

    .line 116
    const-string v0, "application/eia-608"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
