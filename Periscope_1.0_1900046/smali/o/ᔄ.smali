.class public final Lo/ᔄ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᔨ;
.implements Lo/ᘆ;
.implements Lo/丿;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᔄ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:Ljava/lang/Object;T:Ljava/lang/Object;Z:Ljava/lang/Object;R:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u1528;Lo/\u4e3f;Lo/\u1606;"
    }
.end annotation


# static fields
.field private static final me:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<Lo/\u1504<****>;>;"
        }
    .end annotation
.end field


# instance fields
.field private dV:Landroid/content/Context;

.field private dX:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<TR;>;"
        }
    .end annotation
.end field

.field private eC:Lo/ʷ;

.field private eb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private ec:Lo/ﮆ;

.field private eg:Lo/ᖕ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u1595<-TA;TR;>;"
        }
    .end annotation
.end field

.field private ek:Landroid/graphics/drawable/Drawable;

.field private em:Lo/ᔿ;

.field private eo:Lo/ḹ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u1e39<TR;>;"
        }
    .end annotation
.end field

.field private ep:I

.field private eq:I

.field private er:Lo/ʖ;

.field private es:Lo/ﺭ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufead<TZ;>;"
        }
    .end annotation
.end field

.field private ev:Landroid/graphics/drawable/Drawable;

.field private hL:Lo/ڔ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u0694<*>;"
        }
    .end annotation
.end field

.field private mf:I

.field private mg:I

.field private mh:I

.field private mi:Lo/ᔁ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u1501<TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private mj:Lo/ᔭ;

.field private mk:Z

.field private ml:Lo/ﭩ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufb69<TR;>;"
        }
    .end annotation
.end field

.field private mm:F

.field private mn:Landroid/graphics/drawable/Drawable;

.field private mo:Z

.field private mp:Lo/ʷ$ˋ;

.field private mq:Lo/ᔄ$if;

.field private startTime:J

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lo/ﾕ;->ᵘ(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lo/ᔄ;->me:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ᔄ;->tag:Ljava/lang/String;

    .line 149
    return-void
.end method

.method private ʾ(Lo/ڔ;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lo/ᔄ;->eC:Lo/ʷ;

    invoke-virtual {v0, p1}, Lo/ʷ;->ᐝ(Lo/ڔ;)V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔄ;->hL:Lo/ڔ;

    .line 343
    return-void
.end method

.method private ʿ(Ljava/lang/String;)V
    .locals 3

    .line 553
    const-string v0, "GenericRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ᔄ;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method public static ˊ(Lo/ᔁ;Ljava/lang/Object;Lo/ﮆ;Landroid/content/Context;Lo/ᔿ;Lo/ﭩ;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILo/ᖕ;Lo/ᔭ;Lo/ʷ;Lo/ﺭ;Ljava/lang/Class;ZLo/ḹ;IILo/ʖ;)Lo/ᔄ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:Ljava/lang/Object;T:Ljava/lang/Object;Z:Ljava/lang/Object;R:Ljava/lang/Object;>(Lo/\u1501<TA;TT;TZ;TR;>;TA;Lo/\ufb86;Landroid/content/Context;Lo/\u153f;Lo/\ufb69<TR;>;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILo/\u1595<-TA;TR;>;Lo/\u152d;Lo/\u02b7;Lo/\ufead<TZ;>;Ljava/lang/Class<TR;>;ZLo/\u1e39<TR;>;IILo/\u0296;)Lo/\u1504<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 117
    sget-object v0, Lo/ᔄ;->me:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᔄ;

    move-object v1, v0

    .line 118
    if-nez v1, :cond_0

    .line 119
    new-instance v0, Lo/ᔄ;

    invoke-direct {v0}, Lo/ᔄ;-><init>()V

    move-object v1, v0

    .line 121
    :cond_0
    invoke-direct/range {v1 .. v24}, Lo/ᔄ;->ˋ(Lo/ᔁ;Ljava/lang/Object;Lo/ﮆ;Landroid/content/Context;Lo/ᔿ;Lo/ﭩ;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILo/ᖕ;Lo/ᔭ;Lo/ʷ;Lo/ﺭ;Ljava/lang/Class;ZLo/ḹ;IILo/ʖ;)V

    .line 144
    return-object v1
.end method

.method private static ˊ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 246
    if-nez p1, :cond_1

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    const-string v0, " must not be null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    if-eqz p2, :cond_0

    .line 250
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    return-void
.end method

.method private ˊ(Lo/ڔ;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<*>;TR;)V"
        }
    .end annotation

    .line 518
    invoke-direct {p0}, Lo/ᔄ;->ᔁ()Z

    move-result v6

    .line 519
    sget-object v0, Lo/ᔄ$if;->mu:Lo/ᔄ$if;

    iput-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    .line 520
    iput-object p1, p0, Lo/ᔄ;->hL:Lo/ڔ;

    .line 522
    iget-object v0, p0, Lo/ᔄ;->eg:Lo/ᖕ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᔄ;->eg:Lo/ᖕ;

    move-object v1, p2

    iget-object v2, p0, Lo/ᔄ;->eb:Ljava/lang/Object;

    iget-object v3, p0, Lo/ᔄ;->ml:Lo/ﭩ;

    iget-boolean v4, p0, Lo/ᔄ;->mo:Z

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lo/ᖕ;->ˊ(Ljava/lang/Object;Ljava/lang/Object;Lo/ﭩ;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    :cond_0
    iget-object v0, p0, Lo/ᔄ;->eo:Lo/ḹ;

    iget-boolean v1, p0, Lo/ᔄ;->mo:Z

    invoke-interface {v0, v1, v6}, Lo/ḹ;->ᐝ(ZZ)Lo/ḟ;

    move-result-object v7

    .line 525
    iget-object v0, p0, Lo/ᔄ;->ml:Lo/ﭩ;

    invoke-interface {v0, p2, v7}, Lo/ﭩ;->ˊ(Ljava/lang/Object;Lo/ḟ;)V

    .line 528
    :cond_1
    invoke-direct {p0}, Lo/ᔄ;->ᔄ()V

    .line 530
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource ready in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lo/ᔄ;->startTime:J

    invoke-static {v1, v2}, Lo/ｯ;->ˎ(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lo/ڔ;->getSize()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3eb0000000000000L    # 9.5367431640625E-7

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fromCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lo/ᔄ;->mo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ᔄ;->ʿ(Ljava/lang/String;)V

    .line 534
    :cond_2
    return-void
.end method

.method private ˋ(Lo/ᔁ;Ljava/lang/Object;Lo/ﮆ;Landroid/content/Context;Lo/ᔿ;Lo/ﭩ;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILo/ᖕ;Lo/ᔭ;Lo/ʷ;Lo/ﺭ;Ljava/lang/Class;ZLo/ḹ;IILo/ʖ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u1501<TA;TT;TZ;TR;>;TA;Lo/\ufb86;Landroid/content/Context;Lo/\u153f;Lo/\ufb69<TR;>;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILo/\u1595<-TA;TR;>;Lo/\u152d;Lo/\u02b7;Lo/\ufead<TZ;>;Ljava/lang/Class<TR;>;ZLo/\u1e39<TR;>;IILo/\u0296;)V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lo/ᔄ;->mi:Lo/ᔁ;

    .line 194
    iput-object p2, p0, Lo/ᔄ;->eb:Ljava/lang/Object;

    .line 195
    iput-object p3, p0, Lo/ᔄ;->ec:Lo/ﮆ;

    .line 196
    iput-object p12, p0, Lo/ᔄ;->ev:Landroid/graphics/drawable/Drawable;

    .line 197
    move/from16 v0, p13

    iput v0, p0, Lo/ᔄ;->mf:I

    .line 198
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/ᔄ;->dV:Landroid/content/Context;

    .line 199
    iput-object p5, p0, Lo/ᔄ;->em:Lo/ᔿ;

    .line 200
    iput-object p6, p0, Lo/ᔄ;->ml:Lo/ﭩ;

    .line 201
    iput p7, p0, Lo/ᔄ;->mm:F

    .line 202
    iput-object p8, p0, Lo/ᔄ;->ek:Landroid/graphics/drawable/Drawable;

    .line 203
    iput p9, p0, Lo/ᔄ;->mg:I

    .line 204
    iput-object p10, p0, Lo/ᔄ;->mn:Landroid/graphics/drawable/Drawable;

    .line 205
    iput p11, p0, Lo/ᔄ;->mh:I

    .line 206
    move-object/from16 v0, p14

    iput-object v0, p0, Lo/ᔄ;->eg:Lo/ᖕ;

    .line 207
    move-object/from16 v0, p15

    iput-object v0, p0, Lo/ᔄ;->mj:Lo/ᔭ;

    .line 208
    move-object/from16 v0, p16

    iput-object v0, p0, Lo/ᔄ;->eC:Lo/ʷ;

    .line 209
    move-object/from16 v0, p17

    iput-object v0, p0, Lo/ᔄ;->es:Lo/ﺭ;

    .line 210
    move-object/from16 v0, p18

    iput-object v0, p0, Lo/ᔄ;->dX:Ljava/lang/Class;

    .line 211
    move/from16 v0, p19

    iput-boolean v0, p0, Lo/ᔄ;->mk:Z

    .line 212
    move-object/from16 v0, p20

    iput-object v0, p0, Lo/ᔄ;->eo:Lo/ḹ;

    .line 213
    move/from16 v0, p21

    iput v0, p0, Lo/ᔄ;->eq:I

    .line 214
    move/from16 v0, p22

    iput v0, p0, Lo/ᔄ;->ep:I

    .line 215
    move-object/from16 v0, p23

    iput-object v0, p0, Lo/ᔄ;->er:Lo/ʖ;

    .line 216
    sget-object v0, Lo/ᔄ$if;->mr:Lo/ᔄ$if;

    iput-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    .line 220
    if-eqz p2, :cond_3

    .line 221
    const-string v0, "ModelLoader"

    invoke-interface {p1}, Lo/ᔁ;->Ꮠ()Lo/ɽ;

    move-result-object v1

    const-string v2, "try .using(ModelLoader)"

    invoke-static {v0, v1, v2}, Lo/ᔄ;->ˊ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    const-string v0, "Transcoder"

    invoke-interface {p1}, Lo/ᔁ;->ᐜ()Lo/ғ;

    move-result-object v1

    const-string v2, "try .as*(Class).transcode(ResourceTranscoder)"

    invoke-static {v0, v1, v2}, Lo/ᔄ;->ˊ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    const-string v0, "Transformation"

    const-string v1, "try .transform(UnitTransformation.get())"

    move-object/from16 v2, p17

    invoke-static {v0, v2, v1}, Lo/ᔄ;->ˊ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p23 .. p23}, Lo/ʖ;->ە()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "SourceEncoder"

    invoke-interface {p1}, Lo/ᔁ;->ｩ()Lo/ﭥ;

    move-result-object v1

    const-string v2, "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)"

    invoke-static {v0, v1, v2}, Lo/ᔄ;->ˊ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_0
    const-string v0, "SourceDecoder"

    invoke-interface {p1}, Lo/ᔁ;->ｃ()Lo/ﺀ;

    move-result-object v1

    const-string v2, "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)"

    invoke-static {v0, v1, v2}, Lo/ᔄ;->ˊ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    :goto_0
    invoke-virtual/range {p23 .. p23}, Lo/ʖ;->ە()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p23 .. p23}, Lo/ʖ;->ܕ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    :cond_1
    const-string v0, "CacheDecoder"

    invoke-interface {p1}, Lo/ᔁ;->ﻩ()Lo/ﺀ;

    move-result-object v1

    const-string v2, "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)"

    invoke-static {v0, v1, v2}, Lo/ᔄ;->ˊ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    :cond_2
    invoke-virtual/range {p23 .. p23}, Lo/ʖ;->ܕ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    const-string v0, "Encoder"

    invoke-interface {p1}, Lo/ᔁ;->ｪ()Lo/ﺪ;

    move-result-object v1

    const-string v2, "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)"

    invoke-static {v0, v1, v2}, Lo/ᔄ;->ˊ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    :cond_3
    return-void
.end method

.method private ˎ(Ljava/lang/Exception;)V
    .locals 2

    .line 393
    invoke-direct {p0}, Lo/ᔄ;->ᔀ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lo/ᔄ;->eb:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo/ᔄ;->ᓸ()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 398
    :goto_0
    if-nez v1, :cond_2

    .line 399
    invoke-direct {p0}, Lo/ᔄ;->ᓹ()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 401
    :cond_2
    if-nez v1, :cond_3

    .line 402
    invoke-direct {p0}, Lo/ᔄ;->ᓼ()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 404
    :cond_3
    iget-object v0, p0, Lo/ᔄ;->ml:Lo/ﭩ;

    invoke-interface {v0, p1, v1}, Lo/ﭩ;->ˊ(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 405
    return-void
.end method

.method private ᓸ()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 386
    iget-object v0, p0, Lo/ᔄ;->ev:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lo/ᔄ;->mf:I

    if-lez v0, :cond_0

    .line 387
    iget-object v0, p0, Lo/ᔄ;->dV:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lo/ᔄ;->mf:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/ᔄ;->ev:Landroid/graphics/drawable/Drawable;

    .line 389
    :cond_0
    iget-object v0, p0, Lo/ᔄ;->ev:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private ᓹ()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 408
    iget-object v0, p0, Lo/ᔄ;->mn:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lo/ᔄ;->mh:I

    if-lez v0, :cond_0

    .line 409
    iget-object v0, p0, Lo/ᔄ;->dV:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lo/ᔄ;->mh:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/ᔄ;->mn:Landroid/graphics/drawable/Drawable;

    .line 411
    :cond_0
    iget-object v0, p0, Lo/ᔄ;->mn:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private ᓼ()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 415
    iget-object v0, p0, Lo/ᔄ;->ek:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lo/ᔄ;->mg:I

    if-lez v0, :cond_0

    .line 416
    iget-object v0, p0, Lo/ᔄ;->dV:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lo/ᔄ;->mg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/ᔄ;->ek:Landroid/graphics/drawable/Drawable;

    .line 418
    :cond_0
    iget-object v0, p0, Lo/ᔄ;->ek:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private ᓽ()Z
    .locals 1

    .line 458
    iget-object v0, p0, Lo/ᔄ;->mj:Lo/ᔭ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᔄ;->mj:Lo/ᔭ;

    invoke-interface {v0, p0}, Lo/ᔭ;->ˎ(Lo/ᔨ;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ᔀ()Z
    .locals 1

    .line 462
    iget-object v0, p0, Lo/ᔄ;->mj:Lo/ᔭ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᔄ;->mj:Lo/ᔭ;

    invoke-interface {v0, p0}, Lo/ᔭ;->ˏ(Lo/ᔨ;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ᔁ()Z
    .locals 1

    .line 466
    iget-object v0, p0, Lo/ᔄ;->mj:Lo/ᔭ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᔄ;->mj:Lo/ᔭ;

    invoke-interface {v0}, Lo/ᔭ;->ᔨ()Z

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

.method private ᔄ()V
    .locals 1

    .line 470
    iget-object v0, p0, Lo/ᔄ;->mj:Lo/ᔭ;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lo/ᔄ;->mj:Lo/ᔭ;

    invoke-interface {v0, p0}, Lo/ᔭ;->ᐝ(Lo/ᔨ;)V

    .line 473
    :cond_0
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 3

    .line 262
    invoke-static {}, Lo/ｯ;->〱()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ᔄ;->startTime:J

    .line 263
    iget-object v0, p0, Lo/ᔄ;->eb:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ᔄ;->ˊ(Ljava/lang/Exception;)V

    .line 265
    return-void

    .line 268
    :cond_0
    sget-object v0, Lo/ᔄ$if;->mt:Lo/ᔄ$if;

    iput-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    .line 269
    iget v0, p0, Lo/ᔄ;->eq:I

    iget v1, p0, Lo/ᔄ;->ep:I

    invoke-static {v0, v1}, Lo/ﾕ;->ᵀ(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget v0, p0, Lo/ᔄ;->eq:I

    iget v1, p0, Lo/ᔄ;->ep:I

    invoke-virtual {p0, v0, v1}, Lo/ᔄ;->ᴶ(II)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lo/ᔄ;->ml:Lo/ﭩ;

    invoke-interface {v0, p0}, Lo/ﭩ;->ˊ(Lo/丿;)V

    .line 275
    :goto_0
    invoke-virtual {p0}, Lo/ᔄ;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lo/ᔄ;->isFailed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lo/ᔄ;->ᔀ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lo/ᔄ;->ml:Lo/ﭩ;

    invoke-direct {p0}, Lo/ᔄ;->ᓼ()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ﭩ;->ι(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :cond_2
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lo/ᔄ;->startTime:J

    invoke-static {v1, v2}, Lo/ｯ;->ˎ(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ᔄ;->ʿ(Ljava/lang/String;)V

    .line 281
    :cond_3
    return-void
.end method

.method cancel()V
    .locals 1

    .line 294
    sget-object v0, Lo/ᔄ$if;->mw:Lo/ᔄ$if;

    iput-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    .line 295
    iget-object v0, p0, Lo/ᔄ;->mp:Lo/ʷ$ˋ;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lo/ᔄ;->mp:Lo/ʷ$ˋ;

    invoke-virtual {v0}, Lo/ʷ$ˋ;->cancel()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔄ;->mp:Lo/ʷ$ˋ;

    .line 299
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 313
    invoke-static {}, Lo/ﾕ;->בּ()V

    .line 314
    iget-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    sget-object v1, Lo/ᔄ$if;->mx:Lo/ᔄ$if;

    if-ne v0, v1, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lo/ᔄ;->cancel()V

    .line 319
    iget-object v0, p0, Lo/ᔄ;->hL:Lo/ڔ;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lo/ᔄ;->hL:Lo/ڔ;

    invoke-direct {p0, v0}, Lo/ᔄ;->ʾ(Lo/ڔ;)V

    .line 322
    :cond_1
    invoke-direct {p0}, Lo/ᔄ;->ᔀ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lo/ᔄ;->ml:Lo/ﭩ;

    invoke-direct {p0}, Lo/ᔄ;->ᓼ()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ﭩ;->ͺ(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_2
    sget-object v0, Lo/ᔄ$if;->mx:Lo/ᔄ$if;

    iput-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    .line 327
    return-void
.end method

.method public isCancelled()Z
    .locals 2

    .line 374
    iget-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    sget-object v1, Lo/ᔄ$if;->mw:Lo/ᔄ$if;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    sget-object v1, Lo/ᔄ$if;->mx:Lo/ᔄ$if;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .line 358
    iget-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    sget-object v1, Lo/ᔄ$if;->mu:Lo/ᔄ$if;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFailed()Z
    .locals 2

    .line 382
    iget-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    sget-object v1, Lo/ᔄ$if;->mv:Lo/ᔄ$if;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 350
    iget-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    sget-object v1, Lo/ᔄ$if;->ms:Lo/ᔄ$if;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    sget-object v1, Lo/ᔄ$if;->mt:Lo/ᔄ$if;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 1

    .line 336
    invoke-virtual {p0}, Lo/ᔄ;->clear()V

    .line 337
    sget-object v0, Lo/ᔄ$if;->my:Lo/ᔄ$if;

    iput-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    .line 338
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔄ;->mi:Lo/ᔁ;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔄ;->eb:Ljava/lang/Object;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔄ;->dV:Landroid/content/Context;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔄ;->ml:Lo/ﭩ;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔄ;->ek:Landroid/graphics/drawable/Drawable;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔄ;->mn:Landroid/graphics/drawable/Drawable;

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔄ;->ev:Landroid/graphics/drawable/Drawable;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔄ;->eg:Lo/ᖕ;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔄ;->mj:Lo/ᔭ;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔄ;->es:Lo/ﺭ;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔄ;->eo:Lo/ḹ;

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᔄ;->mo:Z

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔄ;->mp:Lo/ʷ$ˋ;

    .line 166
    sget-object v0, Lo/ᔄ;->me:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public ʼ(Lo/ڔ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<*>;)V"
        }
    .end annotation

    .line 481
    if-nez p1, :cond_0

    .line 482
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ᔄ;->dX:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inside, but instead got null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/ᔄ;->ˊ(Ljava/lang/Exception;)V

    .line 484
    return-void

    .line 487
    :cond_0
    invoke-interface {p1}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v3

    .line 488
    if-eqz v3, :cond_1

    iget-object v0, p0, Lo/ᔄ;->dX:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 489
    :cond_1
    invoke-direct {p0, p1}, Lo/ᔄ;->ʾ(Lo/ڔ;)V

    .line 490
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ᔄ;->dX:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but instead got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inside Resource{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v3, :cond_3

    const-string v2, ""

    goto :goto_1

    :cond_3
    const-string v2, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/ᔄ;->ˊ(Ljava/lang/Exception;)V

    .line 497
    return-void

    .line 500
    :cond_4
    invoke-direct {p0}, Lo/ᔄ;->ᓽ()Z

    move-result v0

    if-nez v0, :cond_5

    .line 501
    invoke-direct {p0, p1}, Lo/ᔄ;->ʾ(Lo/ڔ;)V

    .line 503
    sget-object v0, Lo/ᔄ$if;->mu:Lo/ᔄ$if;

    iput-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    .line 504
    return-void

    .line 507
    :cond_5
    invoke-direct {p0, p1, v3}, Lo/ᔄ;->ˊ(Lo/ڔ;Ljava/lang/Object;)V

    .line 508
    return-void
.end method

.method public ˊ(Ljava/lang/Exception;)V
    .locals 4

    .line 541
    const-string v0, "GenericRequest"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    const-string v0, "GenericRequest"

    const-string v1, "load failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    :cond_0
    sget-object v0, Lo/ᔄ$if;->mv:Lo/ᔄ$if;

    iput-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    .line 547
    iget-object v0, p0, Lo/ᔄ;->eg:Lo/ᖕ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ᔄ;->eg:Lo/ᖕ;

    iget-object v1, p0, Lo/ᔄ;->eb:Ljava/lang/Object;

    iget-object v2, p0, Lo/ᔄ;->ml:Lo/ﭩ;

    invoke-direct {p0}, Lo/ᔄ;->ᔁ()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lo/ᖕ;->ˊ(Ljava/lang/Exception;Ljava/lang/Object;Lo/ﭩ;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 548
    :cond_1
    invoke-direct {p0, p1}, Lo/ᔄ;->ˎ(Ljava/lang/Exception;)V

    .line 550
    :cond_2
    return-void
.end method

.method public ᓷ()Z
    .locals 1

    .line 366
    invoke-virtual {p0}, Lo/ᔄ;->isComplete()Z

    move-result v0

    return v0
.end method

.method public ᴶ(II)V
    .locals 15

    .line 426
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lo/ᔄ;->startTime:J

    invoke-static {v1, v2}, Lo/ｯ;->ˎ(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ᔄ;->ʿ(Ljava/lang/String;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    sget-object v1, Lo/ᔄ$if;->mt:Lo/ᔄ$if;

    if-eq v0, v1, :cond_1

    .line 430
    return-void

    .line 432
    :cond_1
    sget-object v0, Lo/ᔄ$if;->ms:Lo/ᔄ$if;

    iput-object v0, p0, Lo/ᔄ;->mq:Lo/ᔄ$if;

    .line 434
    iget v0, p0, Lo/ᔄ;->mm:F

    move/from16 v1, p1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 435
    iget v0, p0, Lo/ᔄ;->mm:F

    move/from16 v1, p2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 437
    iget-object v0, p0, Lo/ᔄ;->mi:Lo/ᔁ;

    invoke-interface {v0}, Lo/ᔁ;->Ꮠ()Lo/ɽ;

    move-result-object v12

    .line 438
    iget-object v0, p0, Lo/ᔄ;->eb:Ljava/lang/Object;

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v12, v0, v1, v2}, Lo/ɽ;->ˎ(Ljava/lang/Object;II)Lo/Į;

    move-result-object v13

    .line 440
    if-nez v13, :cond_2

    .line 441
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load model: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ᔄ;->eb:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/ᔄ;->ˊ(Ljava/lang/Exception;)V

    .line 442
    return-void

    .line 444
    :cond_2
    iget-object v0, p0, Lo/ᔄ;->mi:Lo/ᔁ;

    invoke-interface {v0}, Lo/ᔁ;->ᐜ()Lo/ғ;

    move-result-object v14

    .line 445
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lo/ᔄ;->startTime:J

    invoke-static {v1, v2}, Lo/ｯ;->ˎ(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ᔄ;->ʿ(Ljava/lang/String;)V

    .line 448
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᔄ;->mo:Z

    .line 449
    iget-object v0, p0, Lo/ᔄ;->eC:Lo/ʷ;

    iget-object v1, p0, Lo/ᔄ;->ec:Lo/ﮆ;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v13

    iget-object v5, p0, Lo/ᔄ;->mi:Lo/ᔁ;

    iget-object v6, p0, Lo/ᔄ;->es:Lo/ﺭ;

    move-object v7, v14

    iget-object v8, p0, Lo/ᔄ;->em:Lo/ᔿ;

    iget-boolean v9, p0, Lo/ᔄ;->mk:Z

    iget-object v10, p0, Lo/ᔄ;->er:Lo/ʖ;

    move-object v11, p0

    invoke-virtual/range {v0 .. v11}, Lo/ʷ;->ˊ(Lo/ﮆ;IILo/Į;Lo/ᓹ;Lo/ﺭ;Lo/ғ;Lo/ᔿ;ZLo/ʖ;Lo/ᘆ;)Lo/ʷ$ˋ;

    move-result-object v0

    iput-object v0, p0, Lo/ᔄ;->mp:Lo/ʷ$ˋ;

    .line 451
    iget-object v0, p0, Lo/ᔄ;->hL:Lo/ڔ;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/ᔄ;->mo:Z

    .line 452
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lo/ᔄ;->startTime:J

    invoke-static {v1, v2}, Lo/ｯ;->ˎ(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ᔄ;->ʿ(Ljava/lang/String;)V

    .line 455
    :cond_5
    return-void
.end method
