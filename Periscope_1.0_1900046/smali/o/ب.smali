.class public Lo/ب;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private hY:I

.field public final height:I

.field private maxHeight:I

.field private maxWidth:I

.field public final mimeType:Ljava/lang/String;

.field public final re:J

.field public final sC:I

.field public final sD:F

.field public final sE:I

.field public final sF:I

.field public final sG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<[B>;"
        }
    .end annotation
.end field

.field private sH:Landroid/media/MediaFormat;

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IJIIFIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;IJIIFIILjava/util/List<[B>;)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lo/ب;->mimeType:Ljava/lang/String;

    .line 142
    iput p2, p0, Lo/ب;->sC:I

    .line 143
    iput-wide p3, p0, Lo/ب;->re:J

    .line 144
    iput p5, p0, Lo/ب;->width:I

    .line 145
    iput p6, p0, Lo/ب;->height:I

    .line 146
    iput p7, p0, Lo/ب;->sD:F

    .line 147
    iput p8, p0, Lo/ب;->sE:I

    .line 148
    iput p9, p0, Lo/ب;->sF:I

    .line 149
    if-nez p10, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p10

    :goto_0
    iput-object v0, p0, Lo/ب;->sG:Ljava/util/List;

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lo/ب;->maxWidth:I

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lo/ب;->maxHeight:I

    .line 153
    return-void
.end method

.method public static ˊ(Ljava/lang/String;IIILjava/util/List;)Lo/ب;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;IIILjava/util/List<[B>;)Lo/\u0628;"
        }
    .end annotation

    .line 69
    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    const-wide/16 v2, -0x1

    invoke-static/range {v0 .. v6}, Lo/ب;->ˊ(Ljava/lang/String;IJIILjava/util/List;)Lo/ب;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Ljava/lang/String;IJIIFLjava/util/List;)Lo/ب;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;IJIIFLjava/util/List<[B>;)Lo/\u0628;"
        }
    .end annotation

    .line 81
    new-instance v0, Lo/ب;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lo/ب;-><init>(Ljava/lang/String;IJIIFIILjava/util/List;)V

    return-object v0
.end method

.method public static ˊ(Ljava/lang/String;IJIILjava/util/List;)Lo/ب;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;IJIILjava/util/List<[B>;)Lo/\u0628;"
        }
    .end annotation

    .line 75
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v7, p6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v7}, Lo/ب;->ˊ(Ljava/lang/String;IJIIFLjava/util/List;)Lo/ب;

    move-result-object v0

    return-object v0
.end method

.method private final ˊ(Landroid/media/MediaFormat;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 267
    const-string v0, "max-width"

    iget v1, p0, Lo/ب;->maxWidth:I

    invoke-static {p1, v0, v1}, Lo/ب;->ˊ(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 268
    const-string v0, "max-height"

    iget v1, p0, Lo/ب;->maxHeight:I

    invoke-static {p1, v0, v1}, Lo/ب;->ˊ(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 269
    return-void
.end method

.method private static final ˊ(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 282
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 285
    :cond_0
    return-void
.end method

.method private static final ˊ(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 274
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 275
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 277
    :cond_0
    return-void
.end method

.method public static ˋ(Ljava/lang/String;IIILjava/util/List;)Lo/ب;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;IIILjava/util/List<[B>;)Lo/\u0628;"
        }
    .end annotation

    .line 87
    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    const-wide/16 v2, -0x1

    invoke-static/range {v0 .. v6}, Lo/ب;->ˋ(Ljava/lang/String;IJIILjava/util/List;)Lo/ب;

    move-result-object v0

    return-object v0
.end method

.method public static ˋ(Ljava/lang/String;IJIILjava/util/List;)Lo/ب;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;IJIILjava/util/List<[B>;)Lo/\u0628;"
        }
    .end annotation

    .line 93
    new-instance v0, Lo/ب;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    move v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lo/ب;-><init>(Ljava/lang/String;IJIIFIILjava/util/List;)V

    return-object v0
.end method

.method private ˋ(Lo/ب;Z)Z
    .locals 3

    .line 215
    iget v0, p0, Lo/ب;->sC:I

    iget v1, p1, Lo/ب;->sC:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/ب;->width:I

    iget v1, p1, Lo/ب;->width:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/ب;->height:I

    iget v1, p1, Lo/ب;->height:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/ب;->sD:F

    iget v1, p1, Lo/ب;->sD:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p0, Lo/ب;->maxWidth:I

    iget v1, p1, Lo/ب;->maxWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/ب;->maxHeight:I

    iget v1, p1, Lo/ب;->maxHeight:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lo/ب;->sE:I

    iget v1, p1, Lo/ب;->sE:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/ب;->sF:I

    iget v1, p1, Lo/ب;->sF:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/ب;->mimeType:Ljava/lang/String;

    iget-object v1, p1, Lo/ب;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/ผ;->ʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ب;->sG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lo/ب;->sG:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 221
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lo/ب;->sG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 224
    iget-object v0, p0, Lo/ب;->sG:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p1, Lo/ب;->sG:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 225
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static Һ()Lo/ب;
    .locals 1

    .line 98
    const-string v0, "application/id3"

    invoke-static {v0}, Lo/ب;->ᵎ(Ljava/lang/String;)Lo/ب;

    move-result-object v0

    return-object v0
.end method

.method public static ӌ()Lo/ب;
    .locals 1

    .line 102
    const-string v0, "application/eia-608"

    invoke-static {v0}, Lo/ب;->ᵎ(Ljava/lang/String;)Lo/ب;

    move-result-object v0

    return-object v0
.end method

.method public static ԁ()Lo/ب;
    .locals 1

    .line 106
    const-string v0, "application/ttml+xml"

    invoke-static {v0}, Lo/ب;->ᵎ(Ljava/lang/String;)Lo/ب;

    move-result-object v0

    return-object v0
.end method

.method public static ᵎ(Ljava/lang/String;)Lo/ب;
    .locals 11

    .line 110
    new-instance v0, Lo/ب;

    move-object v1, p0

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lo/ب;-><init>(Ljava/lang/String;IJIIFIILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 195
    if-ne p0, p1, :cond_0

    .line 196
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 199
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 201
    :cond_2
    move-object v0, p1

    check-cast v0, Lo/ب;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/ب;->ˋ(Lo/ب;Z)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 173
    iget v0, p0, Lo/ب;->hY:I

    if-nez v0, :cond_2

    .line 174
    const/16 v3, 0x11

    .line 175
    iget-object v0, p0, Lo/ب;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ب;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v3, v0, 0x20f

    .line 176
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lo/ب;->sC:I

    add-int v3, v0, v1

    .line 177
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lo/ب;->width:I

    add-int v3, v0, v1

    .line 178
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lo/ب;->height:I

    add-int v3, v0, v1

    .line 179
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lo/ب;->sD:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int v3, v0, v1

    .line 180
    mul-int/lit8 v0, v3, 0x1f

    iget-wide v1, p0, Lo/ب;->re:J

    long-to-int v1, v1

    add-int v3, v0, v1

    .line 181
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lo/ب;->maxWidth:I

    add-int v3, v0, v1

    .line 182
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lo/ب;->maxHeight:I

    add-int v3, v0, v1

    .line 183
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lo/ب;->sE:I

    add-int v3, v0, v1

    .line 184
    mul-int/lit8 v0, v3, 0x1f

    iget v1, p0, Lo/ب;->sF:I

    add-int v3, v0, v1

    .line 185
    const/4 v4, 0x0

    :goto_1
    iget-object v0, p0, Lo/ب;->sG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 186
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lo/ب;->sG:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int v3, v0, v1

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 188
    :cond_1
    iput v3, p0, Lo/ب;->hY:I

    .line 190
    :cond_2
    iget v0, p0, Lo/ب;->hY:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaFormat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ب;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ب;->sC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ب;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ب;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ب;->sD:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ب;->sE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ب;->sF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lo/ب;->re:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ب;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ب;->maxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/ب;Z)Z
    .locals 1

    .line 205
    if-ne p0, p1, :cond_0

    .line 206
    const/4 v0, 0x1

    return v0

    .line 208
    :cond_0
    if-nez p1, :cond_1

    .line 209
    const/4 v0, 0x0

    return v0

    .line 211
    :cond_1
    invoke-direct {p0, p1, p2}, Lo/ب;->ˋ(Lo/ب;Z)Z

    move-result v0

    return v0
.end method

.method public final ԅ()Landroid/media/MediaFormat;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 243
    iget-object v0, p0, Lo/ب;->sH:Landroid/media/MediaFormat;

    if-nez v0, :cond_2

    .line 244
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    .line 245
    const-string v0, "mime"

    iget-object v1, p0, Lo/ب;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v0, "max-input-size"

    iget v1, p0, Lo/ب;->sC:I

    invoke-static {v4, v0, v1}, Lo/ب;->ˊ(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 247
    const-string v0, "width"

    iget v1, p0, Lo/ب;->width:I

    invoke-static {v4, v0, v1}, Lo/ب;->ˊ(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 248
    const-string v0, "height"

    iget v1, p0, Lo/ب;->height:I

    invoke-static {v4, v0, v1}, Lo/ب;->ˊ(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 249
    const-string v0, "channel-count"

    iget v1, p0, Lo/ب;->sE:I

    invoke-static {v4, v0, v1}, Lo/ب;->ˊ(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 250
    const-string v0, "sample-rate"

    iget v1, p0, Lo/ب;->sF:I

    invoke-static {v4, v0, v1}, Lo/ب;->ˊ(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 251
    const-string v0, "com.google.android.videos.pixelWidthHeightRatio"

    iget v1, p0, Lo/ب;->sD:F

    invoke-static {v4, v0, v1}, Lo/ب;->ˊ(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 252
    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lo/ب;->sG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "csd-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/ب;->sG:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 252
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 255
    :cond_0
    iget-wide v0, p0, Lo/ب;->re:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 256
    const-string v0, "durationUs"

    iget-wide v1, p0, Lo/ب;->re:J

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 258
    :cond_1
    invoke-direct {p0, v4}, Lo/ب;->ˊ(Landroid/media/MediaFormat;)V

    .line 259
    iput-object v4, p0, Lo/ب;->sH:Landroid/media/MediaFormat;

    .line 261
    :cond_2
    iget-object v0, p0, Lo/ب;->sH:Landroid/media/MediaFormat;

    return-object v0
.end method
