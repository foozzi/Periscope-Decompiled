.class public final Lo/ᒺ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᒎ;
.implements Lo/ᒲ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᒺ$if;
    }
.end annotation


# instance fields
.field private wA:[Lo/ᒺ$if;

.field private final wm:Lo/প;

.field private final wn:Lo/প;

.field private final wo:Lo/প;

.field private final wp:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<Lo/\u14b6$if;>;"
        }
    .end annotation
.end field

.field private wq:I

.field private wr:J

.field private ws:I

.field private wt:J

.field private wu:I

.field private wv:Lo/প;

.field private ww:I

.field private wx:I

.field private wy:I

.field private wz:Lo/ᒬ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lo/প;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lo/প;-><init>(I)V

    iput-object v0, p0, Lo/ᒺ;->wo:Lo/প;

    .line 74
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lo/ᒺ;->wp:Ljava/util/Stack;

    .line 75
    new-instance v0, Lo/প;

    sget-object v1, Lo/ܫ;->AY:[B

    invoke-direct {v0, v1}, Lo/প;-><init>([B)V

    iput-object v0, p0, Lo/ᒺ;->wm:Lo/প;

    .line 76
    new-instance v0, Lo/প;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lo/প;-><init>(I)V

    iput-object v0, p0, Lo/ᒺ;->wn:Lo/প;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒺ;->wq:I

    .line 78
    return-void
.end method

.method private ˊ(Lo/ᒑ;)Z
    .locals 7

    .line 142
    iget-object v0, p0, Lo/ᒺ;->wo:Lo/প;

    iget-object v0, v0, Lo/প;->fw:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lo/ᒑ;->ˊ([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lo/ᒺ;->wo:Lo/প;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/প;->setPosition(I)V

    .line 147
    iget-object v0, p0, Lo/ᒺ;->wo:Lo/প;

    invoke-virtual {v0}, Lo/প;->ϒ()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ᒺ;->wt:J

    .line 148
    iget-object v0, p0, Lo/ᒺ;->wo:Lo/প;

    invoke-virtual {v0}, Lo/প;->readInt()I

    move-result v0

    iput v0, p0, Lo/ᒺ;->ws:I

    .line 149
    iget-wide v0, p0, Lo/ᒺ;->wt:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lo/ᒺ;->wo:Lo/প;

    iget-object v0, v0, Lo/প;->fw:[B

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-interface {p1, v0, v1, v2}, Lo/ᒑ;->readFully([BII)V

    .line 152
    iget-object v0, p0, Lo/ᒺ;->wo:Lo/প;

    invoke-virtual {v0}, Lo/প;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ᒺ;->wt:J

    .line 153
    iget-wide v0, p0, Lo/ᒺ;->wr:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᒺ;->wr:J

    .line 154
    const/16 v0, 0x10

    iput v0, p0, Lo/ᒺ;->wu:I

    goto :goto_0

    .line 156
    :cond_1
    iget-wide v0, p0, Lo/ᒺ;->wr:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᒺ;->wr:J

    .line 157
    const/16 v0, 0x8

    iput v0, p0, Lo/ᒺ;->wu:I

    .line 160
    :goto_0
    iget v0, p0, Lo/ᒺ;->ws:I

    invoke-static {v0}, Lo/ᒺ;->ᒃ(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget-wide v0, p0, Lo/ᒺ;->wt:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Lo/ᒺ;->wp:Ljava/util/Stack;

    new-instance v1, Lo/ᒶ$if;

    iget v2, p0, Lo/ᒺ;->ws:I

    iget-wide v3, p0, Lo/ᒺ;->wr:J

    iget-wide v5, p0, Lo/ᒺ;->wt:J

    add-long/2addr v3, v5

    iget v5, p0, Lo/ᒺ;->wu:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-direct {v1, v2, v3, v4}, Lo/ᒶ$if;-><init>(IJ)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    :cond_2
    iget-object v0, p0, Lo/ᒺ;->wp:Ljava/util/Stack;

    new-instance v1, Lo/ᒶ$if;

    iget v2, p0, Lo/ᒺ;->ws:I

    iget-wide v3, p0, Lo/ᒺ;->wr:J

    iget-wide v5, p0, Lo/ᒺ;->wt:J

    add-long/2addr v3, v5

    iget v5, p0, Lo/ᒺ;->wu:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-direct {v1, v2, v3, v4}, Lo/ᒶ$if;-><init>(IJ)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 168
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒺ;->wq:I

    goto :goto_3

    .line 169
    :cond_3
    iget v0, p0, Lo/ᒺ;->ws:I

    invoke-static {v0}, Lo/ᒺ;->ᐥ(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    iget-wide v0, p0, Lo/ᒺ;->wt:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 171
    new-instance v0, Lo/প;

    iget-wide v1, p0, Lo/ᒺ;->wt:J

    long-to-int v1, v1

    invoke-direct {v0, v1}, Lo/প;-><init>(I)V

    iput-object v0, p0, Lo/ᒺ;->wv:Lo/প;

    .line 172
    iget-object v0, p0, Lo/ᒺ;->wo:Lo/প;

    iget-object v0, v0, Lo/প;->fw:[B

    iget-object v1, p0, Lo/ᒺ;->wv:Lo/প;

    iget-object v1, v1, Lo/প;->fw:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    const/4 v0, 0x1

    iput v0, p0, Lo/ᒺ;->wq:I

    goto :goto_3

    .line 175
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᒺ;->wv:Lo/প;

    .line 176
    const/4 v0, 0x1

    iput v0, p0, Lo/ᒺ;->wq:I

    .line 179
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method private ˋ(Lo/ᒶ$if;)V
    .locals 13

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 220
    const-wide v3, 0x7fffffffffffffffL

    .line 221
    const/4 v5, 0x0

    :goto_0
    iget-object v0, p1, Lo/ᒶ$if;->wh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 222
    iget-object v0, p1, Lo/ᒶ$if;->wh:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒶ$if;

    move-object v6, v0

    .line 223
    iget v0, v6, Lo/ᒶ$if;->type:I

    sget v1, Lo/ᒶ;->vw:I

    if-eq v0, v1, :cond_0

    .line 224
    goto/16 :goto_1

    .line 227
    :cond_0
    sget v0, Lo/ᒶ;->vv:I

    invoke-virtual {p1, v0}, Lo/ᒶ$if;->ܝ(I)Lo/ᒶ$ˊ;

    move-result-object v0

    invoke-static {v6, v0}, Lo/ᒷ;->ˊ(Lo/ᒶ$if;Lo/ᒶ$ˊ;)Lo/ᓖ;

    move-result-object v7

    .line 228
    if-eqz v7, :cond_3

    iget v0, v7, Lo/ᓖ;->type:I

    const v1, 0x736f756e

    if-eq v0, v1, :cond_1

    iget v0, v7, Lo/ᓖ;->type:I

    const v1, 0x76696465

    if-eq v0, v1, :cond_1

    .line 229
    goto :goto_1

    .line 232
    :cond_1
    sget v0, Lo/ᒶ;->vx:I

    invoke-virtual {v6, v0}, Lo/ᒶ$if;->า(I)Lo/ᒶ$if;

    move-result-object v0

    sget v1, Lo/ᒶ;->vy:I

    invoke-virtual {v0, v1}, Lo/ᒶ$if;->า(I)Lo/ᒶ$if;

    move-result-object v0

    sget v1, Lo/ᒶ;->vz:I

    invoke-virtual {v0, v1}, Lo/ᒶ$if;->า(I)Lo/ᒶ$if;

    move-result-object v8

    .line 234
    invoke-static {v7, v8}, Lo/ᒷ;->ˊ(Lo/ᓖ;Lo/ᒶ$if;)Lo/ᓛ;

    move-result-object v9

    .line 235
    iget v0, v9, Lo/ᓛ;->wK:I

    if-nez v0, :cond_2

    .line 236
    goto :goto_1

    .line 239
    :cond_2
    new-instance v10, Lo/ᒺ$if;

    iget-object v0, p0, Lo/ᒺ;->wz:Lo/ᒬ;

    invoke-interface {v0, v5}, Lo/ᒬ;->ר(I)Lo/ᒳ;

    move-result-object v0

    invoke-direct {v10, v7, v9, v0}, Lo/ᒺ$if;-><init>(Lo/ᓖ;Lo/ᓛ;Lo/ᒳ;)V

    .line 240
    iget-object v0, v10, Lo/ᒺ$if;->wD:Lo/ᒳ;

    iget-object v1, v7, Lo/ᓖ;->wk:Lo/ب;

    invoke-interface {v0, v1}, Lo/ᒳ;->ˊ(Lo/ب;)V

    .line 241
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, v9, Lo/ᓛ;->uV:[J

    const/4 v1, 0x0

    aget-wide v11, v0, v1

    .line 244
    cmp-long v0, v11, v3

    if-gez v0, :cond_3

    .line 245
    move-wide v3, v11

    .line 221
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 248
    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Lo/ᒺ$if;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ᒺ$if;

    iput-object v0, p0, Lo/ᒺ;->wA:[Lo/ᒺ$if;

    .line 249
    iget-object v0, p0, Lo/ᒺ;->wz:Lo/ᒬ;

    invoke-interface {v0}, Lo/ᒬ;->ᒯ()V

    .line 250
    iget-object v0, p0, Lo/ᒺ;->wz:Lo/ᒬ;

    invoke-interface {v0, p0}, Lo/ᒬ;->ˊ(Lo/ᒲ;)V

    .line 251
    const/4 v0, 0x2

    iput v0, p0, Lo/ᒺ;->wq:I

    .line 252
    return-void
.end method

.method private ˋ(Lo/ᒑ;Lo/ᒮ;)Z
    .locals 10

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒺ;->wq:I

    .line 190
    iget-wide v0, p0, Lo/ᒺ;->wr:J

    iget-wide v2, p0, Lo/ᒺ;->wt:J

    iget v4, p0, Lo/ᒺ;->wu:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᒺ;->wr:J

    .line 191
    iget-wide v0, p0, Lo/ᒺ;->wt:J

    iget v2, p0, Lo/ᒺ;->wu:I

    int-to-long v2, v2

    sub-long v6, v0, v2

    .line 192
    iget-object v0, p0, Lo/ᒺ;->wv:Lo/প;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lo/ᒺ;->wt:J

    const-wide/32 v2, 0x40000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lo/ᒺ;->wt:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 194
    :goto_0
    if-eqz v8, :cond_2

    .line 195
    iget-wide v0, p0, Lo/ᒺ;->wr:J

    iput-wide v0, p2, Lo/ᒮ;->tU:J

    goto :goto_1

    .line 196
    :cond_2
    iget-object v0, p0, Lo/ᒺ;->wv:Lo/প;

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lo/ᒺ;->wv:Lo/প;

    iget-object v0, v0, Lo/প;->fw:[B

    iget v1, p0, Lo/ᒺ;->wu:I

    long-to-int v2, v6

    invoke-interface {p1, v0, v1, v2}, Lo/ᒑ;->readFully([BII)V

    .line 198
    iget-object v0, p0, Lo/ᒺ;->wp:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 199
    iget-object v0, p0, Lo/ᒺ;->wp:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒶ$if;

    new-instance v1, Lo/ᒶ$ˊ;

    iget v2, p0, Lo/ᒺ;->ws:I

    iget-object v3, p0, Lo/ᒺ;->wv:Lo/প;

    invoke-direct {v1, v2, v3}, Lo/ᒶ$ˊ;-><init>(ILo/প;)V

    invoke-virtual {v0, v1}, Lo/ᒶ$if;->ˊ(Lo/ᒶ$ˊ;)V

    goto :goto_1

    .line 202
    :cond_3
    long-to-int v0, v6

    invoke-interface {p1, v0}, Lo/ᒑ;->נ(I)V

    .line 205
    :cond_4
    :goto_1
    iget-object v0, p0, Lo/ᒺ;->wp:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/ᒺ;->wp:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒶ$if;

    iget-wide v0, v0, Lo/ᒶ$if;->wf:J

    iget-wide v2, p0, Lo/ᒺ;->wr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 206
    iget-object v0, p0, Lo/ᒺ;->wp:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒶ$if;

    move-object v9, v0

    .line 207
    iget v0, v9, Lo/ᒶ$if;->type:I

    sget v1, Lo/ᒶ;->vu:I

    if-ne v0, v1, :cond_5

    .line 208
    invoke-direct {p0, v9}, Lo/ᒺ;->ˋ(Lo/ᒶ$if;)V

    goto :goto_2

    .line 209
    :cond_5
    iget-object v0, p0, Lo/ᒺ;->wp:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 210
    iget-object v0, p0, Lo/ᒺ;->wp:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒶ$if;

    invoke-virtual {v0, v9}, Lo/ᒶ$if;->ˊ(Lo/ᒶ$if;)V

    .line 212
    :cond_6
    :goto_2
    goto :goto_1

    .line 214
    :cond_7
    return v8
.end method

.method private ˎ(Lo/ᒑ;Lo/ᒮ;)I
    .locals 18

    .line 272
    invoke-direct/range {p0 .. p0}, Lo/ᒺ;->ᴒ()I

    move-result v7

    .line 273
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 274
    const/4 v0, -0x1

    return v0

    .line 276
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒺ;->wA:[Lo/ᒺ$if;

    aget-object v8, v0, v7

    .line 277
    iget v9, v8, Lo/ᒺ$if;->wE:I

    .line 278
    iget-object v0, v8, Lo/ᒺ$if;->wC:Lo/ᓛ;

    iget-object v0, v0, Lo/ᓛ;->uV:[J

    aget-wide v10, v0, v9

    .line 279
    invoke-interface/range {p1 .. p1}, Lo/ᒑ;->getPosition()J

    move-result-wide v0

    sub-long v0, v10, v0

    move-object/from16 v2, p0

    iget v2, v2, Lo/ᒺ;->wx:I

    int-to-long v2, v2

    add-long v12, v0, v2

    .line 280
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0x40000

    cmp-long v0, v12, v0

    if-ltz v0, :cond_2

    .line 281
    :cond_1
    move-object/from16 v0, p2

    iput-wide v10, v0, Lo/ᒮ;->tU:J

    .line 282
    const/4 v0, 0x1

    return v0

    .line 284
    :cond_2
    long-to-int v0, v12

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lo/ᒑ;->נ(I)V

    .line 285
    iget-object v0, v8, Lo/ᒺ$if;->wC:Lo/ᓛ;

    iget-object v0, v0, Lo/ᓛ;->uW:[I

    aget v0, v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᒺ;->ww:I

    .line 286
    iget-object v0, v8, Lo/ᒺ$if;->wB:Lo/ᓖ;

    iget v0, v0, Lo/ᓖ;->wl:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒺ;->wn:Lo/প;

    iget-object v14, v0, Lo/প;->fw:[B

    .line 290
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-byte v0, v14, v1

    .line 291
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-byte v0, v14, v1

    .line 292
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput-byte v0, v14, v1

    .line 293
    iget-object v0, v8, Lo/ᒺ$if;->wB:Lo/ᓖ;

    iget v15, v0, Lo/ᓖ;->wl:I

    .line 294
    iget-object v0, v8, Lo/ᒺ$if;->wB:Lo/ᓖ;

    iget v0, v0, Lo/ᓖ;->wl:I

    rsub-int/lit8 v16, v0, 0x4

    .line 298
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᒺ;->wx:I

    move-object/from16 v1, p0

    iget v1, v1, Lo/ᒺ;->ww:I

    if-ge v0, v1, :cond_4

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᒺ;->wy:I

    if-nez v0, :cond_3

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒺ;->wn:Lo/প;

    iget-object v0, v0, Lo/প;->fw:[B

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-interface {v1, v0, v2, v15}, Lo/ᒑ;->readFully([BII)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒺ;->wn:Lo/প;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/প;->setPosition(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒺ;->wn:Lo/প;

    invoke-virtual {v0}, Lo/প;->ѕ()I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᒺ;->wy:I

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒺ;->wm:Lo/প;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/প;->setPosition(I)V

    .line 306
    iget-object v0, v8, Lo/ᒺ$if;->wD:Lo/ᒳ;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/ᒺ;->wm:Lo/প;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lo/ᒳ;->ˊ(Lo/প;I)V

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᒺ;->wx:I

    add-int/lit8 v0, v0, 0x4

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᒺ;->wx:I

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᒺ;->ww:I

    add-int v0, v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᒺ;->ww:I

    goto :goto_0

    .line 311
    :cond_3
    iget-object v0, v8, Lo/ᒺ$if;->wD:Lo/ᒳ;

    move-object/from16 v1, p0

    iget v1, v1, Lo/ᒺ;->wy:I

    move-object/from16 v2, p1

    invoke-interface {v0, v2, v1}, Lo/ᒳ;->ˊ(Lo/ᒑ;I)I

    move-result v17

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᒺ;->wx:I

    add-int v0, v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᒺ;->wx:I

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᒺ;->wy:I

    sub-int v0, v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᒺ;->wy:I

    .line 314
    goto/16 :goto_0

    .line 316
    :cond_4
    goto :goto_2

    .line 317
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᒺ;->wx:I

    move-object/from16 v1, p0

    iget v1, v1, Lo/ᒺ;->ww:I

    if-ge v0, v1, :cond_6

    .line 318
    iget-object v0, v8, Lo/ᒺ$if;->wD:Lo/ᒳ;

    move-object/from16 v1, p0

    iget v1, v1, Lo/ᒺ;->ww:I

    move-object/from16 v2, p0

    iget v2, v2, Lo/ᒺ;->wx:I

    sub-int/2addr v1, v2

    move-object/from16 v2, p1

    invoke-interface {v0, v2, v1}, Lo/ᒳ;->ˊ(Lo/ᒑ;I)I

    move-result v14

    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᒺ;->wx:I

    add-int/2addr v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᒺ;->wx:I

    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᒺ;->wy:I

    sub-int/2addr v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᒺ;->wy:I

    .line 321
    goto :goto_1

    .line 323
    :cond_6
    :goto_2
    iget-object v0, v8, Lo/ᒺ$if;->wD:Lo/ᒳ;

    iget-object v1, v8, Lo/ᒺ$if;->wC:Lo/ᓛ;

    iget-object v1, v1, Lo/ᓛ;->wL:[J

    aget-wide v1, v1, v9

    iget-object v3, v8, Lo/ᒺ$if;->wC:Lo/ᓛ;

    iget-object v3, v3, Lo/ᓛ;->uX:[I

    aget v3, v3, v9

    move-object/from16 v4, p0

    iget v4, v4, Lo/ᒺ;->ww:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lo/ᒳ;->ˊ(JIII[B)V

    .line 325
    iget v0, v8, Lo/ᒺ$if;->wE:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lo/ᒺ$if;->wE:I

    .line 326
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᒺ;->wx:I

    .line 327
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᒺ;->wy:I

    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method private static ᐥ(I)Z
    .locals 1

    .line 357
    sget v0, Lo/ᒶ;->vF:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vv:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vG:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vV:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vW:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vH:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vg:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vA:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vk:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vi:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vY:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vZ:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->wa:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->wb:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->wc:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->wd:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->we:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vE:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static ᒃ(I)Z
    .locals 1

    .line 367
    sget v0, Lo/ᒶ;->vu:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vw:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vx:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vy:I

    if-eq p0, v0, :cond_0

    sget v0, Lo/ᒶ;->vz:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ᴒ()I
    .locals 10

    .line 336
    const/4 v2, -0x1

    .line 337
    const-wide v3, 0x7fffffffffffffffL

    .line 338
    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lo/ᒺ;->wA:[Lo/ᒺ$if;

    array-length v0, v0

    if-ge v5, v0, :cond_2

    .line 339
    iget-object v0, p0, Lo/ᒺ;->wA:[Lo/ᒺ$if;

    aget-object v6, v0, v5

    .line 340
    iget v7, v6, Lo/ᒺ$if;->wE:I

    .line 341
    iget-object v0, v6, Lo/ᒺ$if;->wC:Lo/ᓛ;

    iget v0, v0, Lo/ᓛ;->wK:I

    if-ne v7, v0, :cond_0

    .line 342
    goto :goto_1

    .line 345
    :cond_0
    iget-object v0, v6, Lo/ᒺ$if;->wC:Lo/ᓛ;

    iget-object v0, v0, Lo/ᓛ;->uV:[J

    aget-wide v8, v0, v7

    .line 346
    cmp-long v0, v8, v3

    if-gez v0, :cond_1

    .line 347
    move-wide v3, v8

    .line 348
    move v2, v5

    .line 338
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 352
    :cond_2
    return v2
.end method


# virtual methods
.method public ˊ(Lo/ᒑ;Lo/ᒮ;)I
    .locals 1

    .line 96
    :cond_0
    iget v0, p0, Lo/ᒺ;->wq:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 98
    :sswitch_0
    invoke-direct {p0, p1}, Lo/ᒺ;->ˊ(Lo/ᒑ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/4 v0, -0x1

    return v0

    .line 103
    :sswitch_1
    invoke-direct {p0, p1, p2}, Lo/ᒺ;->ˋ(Lo/ᒑ;Lo/ᒮ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    return v0

    .line 108
    :goto_0
    invoke-direct {p0, p1, p2}, Lo/ᒺ;->ˎ(Lo/ᒑ;Lo/ᒮ;)I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public ˊ(Lo/ᒬ;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lo/ᒺ;->wz:Lo/ᒬ;

    .line 83
    return-void
.end method

.method public ᒮ()V
    .locals 2

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ᒺ;->wr:J

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒺ;->wx:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒺ;->wy:I

    .line 90
    return-void
.end method

.method public ᚆ()Z
    .locals 1

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public ｰ(J)J
    .locals 9

    .line 122
    const-wide v2, 0x7fffffffffffffffL

    .line 123
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lo/ᒺ;->wA:[Lo/ᒺ$if;

    array-length v0, v0

    if-ge v4, v0, :cond_2

    .line 124
    iget-object v0, p0, Lo/ᒺ;->wA:[Lo/ᒺ$if;

    aget-object v0, v0, v4

    iget-object v5, v0, Lo/ᒺ$if;->wC:Lo/ᓛ;

    .line 125
    invoke-virtual {v5, p1, p2}, Lo/ᓛ;->ʳ(J)I

    move-result v6

    .line 126
    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    .line 127
    invoke-virtual {v5, p1, p2}, Lo/ᓛ;->ʴ(J)I

    move-result v6

    .line 129
    :cond_0
    iget-object v0, p0, Lo/ᒺ;->wA:[Lo/ᒺ$if;

    aget-object v0, v0, v4

    iput v6, v0, Lo/ᒺ$if;->wE:I

    .line 131
    iget-object v0, v5, Lo/ᓛ;->uV:[J

    iget-object v1, p0, Lo/ᒺ;->wA:[Lo/ᒺ$if;

    aget-object v1, v1, v4

    iget v1, v1, Lo/ᒺ$if;->wE:I

    aget-wide v7, v0, v1

    .line 132
    cmp-long v0, v7, v2

    if-gez v0, :cond_1

    .line 133
    move-wide v2, v7

    .line 123
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    :cond_2
    return-wide v2
.end method
