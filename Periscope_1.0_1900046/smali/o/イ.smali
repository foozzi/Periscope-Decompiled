.class public final Lo/イ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ٺ$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/イ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u067a$if<Lo/\u309e;>;"
    }
.end annotation


# static fields
.field private static final yA:Ljava/util/regex/Pattern;

.field private static final yB:Ljava/util/regex/Pattern;

.field private static final yC:Ljava/util/regex/Pattern;

.field private static final yD:Ljava/util/regex/Pattern;

.field private static final yE:Ljava/util/regex/Pattern;

.field private static final yF:Ljava/util/regex/Pattern;

.field private static final yG:Ljava/util/regex/Pattern;

.field private static final yH:Ljava/util/regex/Pattern;

.field private static final yI:Ljava/util/regex/Pattern;

.field private static final yt:Ljava/util/regex/Pattern;

.field private static final yu:Ljava/util/regex/Pattern;

.field private static final yv:Ljava/util/regex/Pattern;

.field private static final yw:Ljava/util/regex/Pattern;

.field private static final yx:Ljava/util/regex/Pattern;

.field private static final yy:Ljava/util/regex/Pattern;

.field private static final yz:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-string v0, "BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yt:Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "CODECS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yu:Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yv:Ljava/util/regex/Pattern;

    .line 76
    const-string v0, "#EXTINF:([\\d.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yw:Ljava/util/regex/Pattern;

    .line 78
    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yx:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yy:Ljava/util/regex/Pattern;

    .line 82
    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yz:Ljava/util/regex/Pattern;

    .line 84
    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yA:Ljava/util/regex/Pattern;

    .line 87
    const-string v0, "METHOD=(NONE|AES-128)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yB:Ljava/util/regex/Pattern;

    .line 89
    const-string v0, "URI=\"(.+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yC:Ljava/util/regex/Pattern;

    .line 91
    const-string v0, "IV=([^,.*]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yD:Ljava/util/regex/Pattern;

    .line 93
    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yE:Ljava/util/regex/Pattern;

    .line 96
    const-string v0, "LANGUAGE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yF:Ljava/util/regex/Pattern;

    .line 98
    const-string v0, "NAME=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yG:Ljava/util/regex/Pattern;

    .line 100
    const-string v0, "AUTOSELECT"

    invoke-static {v0}, Lo/ℓ;->ᵔ(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yH:Ljava/util/regex/Pattern;

    .line 102
    const-string v0, "DEFAULT"

    invoke-static {v0}, Lo/ℓ;->ᵔ(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/イ;->yI:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    return-void
.end method

.method private static ˊ(Lo/イ$if;Ljava/lang/String;)Lo/ἷ;
    .locals 21

    .line 140
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 142
    const/4 v9, 0x0

    .line 143
    const/4 v10, 0x0

    .line 144
    const/4 v11, -0x1

    .line 145
    const/4 v12, -0x1

    .line 147
    const/4 v13, 0x0

    .line 149
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/イ$if;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 150
    invoke-virtual/range {p0 .. p0}, Lo/イ$if;->next()Ljava/lang/String;

    move-result-object v14

    .line 151
    const-string v0, "#EXT-X-MEDIA"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    sget-object v0, Lo/イ;->yE:Ljava/util/regex/Pattern;

    const-string v1, "TYPE"

    invoke-static {v14, v0, v1}, Lo/ℓ;->ˊ(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 153
    const-string v0, "SUBTITLES"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lo/イ;->yG:Ljava/util/regex/Pattern;

    const-string v1, "NAME"

    invoke-static {v14, v0, v1}, Lo/ℓ;->ˊ(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 156
    sget-object v0, Lo/イ;->yC:Ljava/util/regex/Pattern;

    const-string v1, "URI"

    invoke-static {v14, v0, v1}, Lo/ℓ;->ˊ(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 157
    sget-object v0, Lo/イ;->yF:Ljava/util/regex/Pattern;

    invoke-static {v14, v0}, Lo/ℓ;->ˊ(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v18

    .line 158
    sget-object v0, Lo/イ;->yI:Ljava/util/regex/Pattern;

    invoke-static {v14, v0}, Lo/ℓ;->ˋ(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v19

    .line 159
    sget-object v0, Lo/イ;->yH:Ljava/util/regex/Pattern;

    invoke-static {v14, v0}, Lo/ℓ;->ˋ(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v20

    .line 160
    new-instance v0, Lo/ﻡ;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lo/ﻡ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    goto :goto_0

    :cond_2
    const-string v0, "#EXT-X-STREAM-INF"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 165
    sget-object v0, Lo/イ;->yt:Ljava/util/regex/Pattern;

    const-string v1, "BANDWIDTH"

    invoke-static {v14, v0, v1}, Lo/ℓ;->ˋ(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v9

    .line 166
    sget-object v0, Lo/イ;->yu:Ljava/util/regex/Pattern;

    invoke-static {v14, v0}, Lo/ℓ;->ˊ(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v10

    .line 167
    sget-object v0, Lo/イ;->yv:Ljava/util/regex/Pattern;

    invoke-static {v14, v0}, Lo/ℓ;->ˊ(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v15

    .line 169
    if-eqz v15, :cond_5

    .line 170
    const-string v0, "x"

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 171
    const/4 v0, 0x0

    aget-object v0, v16, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 172
    if-gtz v11, :cond_3

    .line 174
    const/4 v11, -0x1

    .line 176
    :cond_3
    const/4 v0, 0x1

    aget-object v0, v16, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 177
    if-gtz v12, :cond_4

    .line 179
    const/4 v12, -0x1

    .line 181
    :cond_4
    goto :goto_1

    .line 182
    :cond_5
    const/4 v11, -0x1

    .line 183
    const/4 v12, -0x1

    .line 185
    :goto_1
    const/4 v13, 0x1

    .line 186
    goto/16 :goto_0

    :cond_6
    const-string v0, "#"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v13, :cond_0

    .line 187
    new-instance v0, Lo/ｚ;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object v2, v14

    move v3, v9

    move-object v4, v10

    move v5, v11

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lo/ｚ;-><init>(ILjava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const/4 v9, 0x0

    .line 189
    const/4 v10, 0x0

    .line 190
    const/4 v11, -0x1

    .line 191
    const/4 v12, -0x1

    .line 192
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 195
    :cond_7
    new-instance v0, Lo/ἷ;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v1, v2}, Lo/ἷ;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private static ˋ(Lo/イ$if;Ljava/lang/String;)Lo/ῗ;
    .locals 31

    .line 201
    const/4 v12, 0x0

    .line 202
    const/4 v13, 0x0

    .line 203
    const/4 v14, 0x1

    .line 204
    const/4 v15, 0x1

    .line 205
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 207
    const-wide/16 v17, 0x0

    .line 208
    const/16 v19, 0x0

    .line 209
    const-wide/16 v20, 0x0

    .line 210
    const/16 v22, 0x0

    .line 211
    const/16 v23, -0x1

    .line 212
    const/16 v24, 0x0

    .line 214
    const/16 v25, 0x0

    .line 215
    const/16 v26, 0x0

    .line 216
    const/16 v27, 0x0

    .line 219
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/イ$if;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 220
    invoke-virtual/range {p0 .. p0}, Lo/イ$if;->next()Ljava/lang/String;

    move-result-object v28

    .line 221
    const-string v0, "#EXT-X-TARGETDURATION"

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    sget-object v0, Lo/イ;->yy:Ljava/util/regex/Pattern;

    const-string v1, "#EXT-X-TARGETDURATION"

    move-object/from16 v2, v28

    invoke-static {v2, v0, v1}, Lo/ℓ;->ˋ(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v13

    goto :goto_0

    .line 224
    :cond_1
    const-string v0, "#EXT-X-MEDIA-SEQUENCE"

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    sget-object v0, Lo/イ;->yx:Ljava/util/regex/Pattern;

    const-string v1, "#EXT-X-MEDIA-SEQUENCE"

    move-object/from16 v2, v28

    invoke-static {v2, v0, v1}, Lo/ℓ;->ˋ(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v12

    .line 226
    move/from16 v24, v12

    goto :goto_0

    .line 227
    :cond_2
    const-string v0, "#EXT-X-VERSION"

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    sget-object v0, Lo/イ;->yz:Ljava/util/regex/Pattern;

    const-string v1, "#EXT-X-VERSION"

    move-object/from16 v2, v28

    invoke-static {v2, v0, v1}, Lo/ℓ;->ˋ(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v14

    goto :goto_0

    .line 229
    :cond_3
    const-string v0, "#EXTINF"

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    sget-object v0, Lo/イ;->yw:Ljava/util/regex/Pattern;

    const-string v1, "#EXTINF"

    move-object/from16 v2, v28

    invoke-static {v2, v0, v1}, Lo/ℓ;->ˎ(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)D

    move-result-wide v17

    goto :goto_0

    .line 232
    :cond_4
    const-string v0, "#EXT-X-KEY"

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    sget-object v0, Lo/イ;->yB:Ljava/util/regex/Pattern;

    const-string v1, "METHOD"

    move-object/from16 v2, v28

    invoke-static {v2, v0, v1}, Lo/ℓ;->ˊ(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 234
    const-string v0, "AES-128"

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 235
    if-eqz v25, :cond_5

    .line 236
    sget-object v0, Lo/イ;->yC:Ljava/util/regex/Pattern;

    const-string v1, "URI"

    move-object/from16 v2, v28

    invoke-static {v2, v0, v1}, Lo/ℓ;->ˊ(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 237
    sget-object v0, Lo/イ;->yD:Ljava/util/regex/Pattern;

    move-object/from16 v1, v28

    invoke-static {v1, v0}, Lo/ℓ;->ˊ(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v27

    goto :goto_1

    .line 239
    :cond_5
    const/16 v26, 0x0

    .line 240
    const/16 v27, 0x0

    .line 242
    :goto_1
    goto/16 :goto_0

    :cond_6
    const-string v0, "#EXT-X-BYTERANGE"

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 243
    sget-object v0, Lo/イ;->yA:Ljava/util/regex/Pattern;

    const-string v1, "#EXT-X-BYTERANGE"

    move-object/from16 v2, v28

    invoke-static {v2, v0, v1}, Lo/ℓ;->ˊ(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 244
    const-string v0, "@"

    move-object/from16 v1, v29

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 245
    const/4 v0, 0x0

    aget-object v0, v30, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 246
    move-object/from16 v0, v30

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    .line 247
    const/4 v0, 0x1

    aget-object v0, v30, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 249
    :cond_7
    goto/16 :goto_0

    :cond_8
    const-string v0, "#EXT-X-DISCONTINUITY"

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 250
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 251
    :cond_9
    const-string v0, "#"

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 253
    if-nez v25, :cond_a

    .line 254
    const/16 v29, 0x0

    goto :goto_2

    .line 255
    :cond_a
    if-eqz v27, :cond_b

    .line 256
    move-object/from16 v29, v27

    goto :goto_2

    .line 258
    :cond_b
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v29

    .line 260
    :goto_2
    add-int/lit8 v24, v24, 0x1

    .line 261
    move/from16 v0, v23

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 262
    const/16 v22, 0x0

    .line 264
    :cond_c
    new-instance v0, Lo/ῗ$if;

    move-object/from16 v1, v28

    move-wide/from16 v2, v17

    move/from16 v4, v19

    move-wide/from16 v5, v20

    move/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v29

    move/from16 v10, v22

    move/from16 v11, v23

    invoke-direct/range {v0 .. v11}, Lo/ῗ$if;-><init>(Ljava/lang/String;DZJZLjava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double v0, v0, v17

    double-to-long v0, v0

    add-long v20, v20, v0

    .line 268
    const/16 v19, 0x0

    .line 269
    const-wide/16 v17, 0x0

    .line 270
    move/from16 v0, v23

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 271
    add-int v22, v22, v23

    .line 273
    :cond_d
    const/16 v23, -0x1

    .line 274
    goto/16 :goto_0

    :cond_e
    const-string v0, "#EXT-X-ENDLIST"

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v15, 0x0

    .line 276
    .line 279
    :cond_f
    new-instance v0, Lo/ῗ;

    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-direct/range {v0 .. v6}, Lo/ῗ;-><init>(Ljava/lang/String;IIIZLjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public ˊ(Ljava/lang/String;Ljava/io/InputStream;)Lo/ゞ;
    .locals 7

    .line 108
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 109
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 112
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 113
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    const-string v0, "#EXT-X-STREAM-INF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Lo/イ$if;

    invoke-direct {v0, v3, v2}, Lo/イ$if;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-static {v0, p1}, Lo/イ;->ˊ(Lo/イ$if;Ljava/lang/String;)Lo/ἷ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 133
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return-object v5

    .line 119
    :cond_1
    const-string v0, "#EXT-X-TARGETDURATION"

    :try_start_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "#EXTINF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "#EXT-X-KEY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "#EXT-X-BYTERANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "#EXT-X-ENDLIST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v0, Lo/イ$if;

    invoke-direct {v0, v3, v2}, Lo/イ$if;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-static {v0, p1}, Lo/イ;->ˋ(Lo/イ$if;Ljava/lang/String;)Lo/ῗ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 133
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return-object v5

    .line 129
    :cond_3
    :try_start_2
    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 133
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 134
    goto :goto_1

    .line 133
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v6

    .line 135
    :goto_1
    new-instance v0, Lo/ٵ;

    const-string v1, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {v0, v1}, Lo/ٵ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic ˋ(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0, p1, p2}, Lo/イ;->ˊ(Ljava/lang/String;Ljava/io/InputStream;)Lo/ゞ;

    move-result-object v0

    return-object v0
.end method
