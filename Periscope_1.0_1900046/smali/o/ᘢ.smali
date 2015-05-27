.class Lo/ᘢ;
.super Lo/ᚁ;
.source ""


# instance fields
.field private sJ:J

.field private state:I

.field private wO:I

.field private wQ:J

.field private final wV:Lo/ন;

.field private wW:Z

.field private wX:Z

.field private wY:Z

.field private ww:I


# direct methods
.method public constructor <init>(Lo/ᒳ;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1}, Lo/ᚁ;-><init>(Lo/ᒳ;)V

    .line 61
    new-instance v0, Lo/ন;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lo/ন;-><init>([B)V

    iput-object v0, p0, Lo/ᘢ;->wV:Lo/ন;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lo/ᘢ;->state:I

    .line 63
    return-void
.end method

.method private ˊ(Lo/প;[BI)Z
    .locals 3

    .line 123
    invoke-virtual {p1}, Lo/প;->ϋ()I

    move-result v0

    iget v1, p0, Lo/ᘢ;->wO:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 124
    iget v0, p0, Lo/ᘢ;->wO:I

    invoke-virtual {p1, p2, v0, v2}, Lo/প;->ι([BII)V

    .line 125
    iget v0, p0, Lo/ᘢ;->wO:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/ᘢ;->wO:I

    .line 126
    iget v0, p0, Lo/ᘢ;->wO:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ᐝ(Lo/প;)Z
    .locals 8

    .line 137
    iget-object v2, p1, Lo/প;->fw:[B

    .line 138
    invoke-virtual {p1}, Lo/প;->getPosition()I

    move-result v3

    .line 139
    invoke-virtual {p1}, Lo/প;->limit()I

    move-result v4

    .line 140
    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_4

    .line 141
    aget-byte v0, v2, v5

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 142
    :goto_1
    iget-boolean v0, p0, Lo/ᘢ;->wW:Z

    if-eqz v0, :cond_1

    if-nez v6, :cond_1

    aget-byte v0, v2, v5

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 143
    :goto_2
    iput-boolean v6, p0, Lo/ᘢ;->wW:Z

    .line 144
    if-eqz v7, :cond_3

    .line 145
    aget-byte v0, v2, v5

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lo/ᘢ;->wX:Z

    .line 146
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p1, v0}, Lo/প;->setPosition(I)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᘢ;->wW:Z

    .line 149
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 152
    :cond_4
    invoke-virtual {p1, v4}, Lo/প;->setPosition(I)V

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method private Ḻ()V
    .locals 11

    .line 160
    iget-object v0, p0, Lo/ᘢ;->wV:Lo/ন;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ন;->setPosition(I)V

    .line 162
    iget-boolean v0, p0, Lo/ᘢ;->wY:Z

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lo/ᘢ;->wV:Lo/ন;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 164
    iget-object v0, p0, Lo/ᘢ;->wV:Lo/ন;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v6

    .line 165
    iget-object v0, p0, Lo/ᘢ;->wV:Lo/ন;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 166
    iget-object v0, p0, Lo/ᘢ;->wV:Lo/ন;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v7

    .line 168
    invoke-static {v5, v6, v7}, Lo/ܐ;->ʿ(III)[B

    move-result-object v8

    .line 170
    invoke-static {v8}, Lo/ܐ;->ι([B)Landroid/util/Pair;

    move-result-object v9

    .line 173
    const-string v0, "audio/mp4a-latm"

    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v0, v4, v1, v2, v3}, Lo/ب;->ˋ(Ljava/lang/String;IIILjava/util/List;)Lo/ب;

    move-result-object v10

    .line 176
    iget v0, v10, Lo/ب;->sF:I

    int-to-long v0, v0

    const-wide/32 v2, 0x3d090000

    div-long v0, v2, v0

    iput-wide v0, p0, Lo/ᘢ;->wQ:J

    .line 177
    iget-object v0, p0, Lo/ᘢ;->wZ:Lo/ᒳ;

    invoke-interface {v0, v10}, Lo/ᒳ;->ˊ(Lo/ب;)V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᘢ;->wY:Z

    .line 179
    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lo/ᘢ;->wV:Lo/ন;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 183
    :goto_0
    iget-object v0, p0, Lo/ᘢ;->wV:Lo/ন;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 184
    iget-object v0, p0, Lo/ᘢ;->wV:Lo/ন;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lo/ᘢ;->ww:I

    .line 185
    iget-boolean v0, p0, Lo/ᘢ;->wX:Z

    if-eqz v0, :cond_1

    .line 186
    iget v0, p0, Lo/ᘢ;->ww:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lo/ᘢ;->ww:I

    .line 188
    :cond_1
    return-void
.end method


# virtual methods
.method public ˊ(Lo/প;JZ)V
    .locals 9

    .line 74
    if-eqz p4, :cond_0

    .line 75
    iput-wide p2, p0, Lo/ᘢ;->sJ:J

    .line 77
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lo/প;->ϋ()I

    move-result v0

    if-lez v0, :cond_3

    .line 78
    iget v0, p0, Lo/ᘢ;->state:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 80
    :pswitch_0
    invoke-direct {p0, p1}, Lo/ᘢ;->ᐝ(Lo/প;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lo/ᘢ;->wO:I

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lo/ᘢ;->state:I

    goto/16 :goto_2

    .line 86
    :pswitch_1
    iget-boolean v0, p0, Lo/ᘢ;->wX:Z

    if-eqz v0, :cond_1

    const/4 v7, 0x7

    goto :goto_1

    :cond_1
    const/4 v7, 0x5

    .line 87
    :goto_1
    iget-object v0, p0, Lo/ᘢ;->wV:Lo/ন;

    iget-object v0, v0, Lo/ন;->fw:[B

    invoke-direct {p0, p1, v0, v7}, Lo/ᘢ;->ˊ(Lo/প;[BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-direct {p0}, Lo/ᘢ;->Ḻ()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lo/ᘢ;->wO:I

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lo/ᘢ;->state:I

    goto :goto_2

    .line 94
    :pswitch_2
    invoke-virtual {p1}, Lo/প;->ϋ()I

    move-result v0

    iget v1, p0, Lo/ᘢ;->ww:I

    iget v2, p0, Lo/ᘢ;->wO:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 95
    iget-object v0, p0, Lo/ᘢ;->wZ:Lo/ᒳ;

    invoke-interface {v0, p1, v8}, Lo/ᒳ;->ˊ(Lo/প;I)V

    .line 96
    iget v0, p0, Lo/ᘢ;->wO:I

    add-int/2addr v0, v8

    iput v0, p0, Lo/ᘢ;->wO:I

    .line 97
    iget v0, p0, Lo/ᘢ;->wO:I

    iget v1, p0, Lo/ᘢ;->ww:I

    if-ne v0, v1, :cond_2

    .line 98
    iget-object v0, p0, Lo/ᘢ;->wZ:Lo/ᒳ;

    iget-wide v1, p0, Lo/ᘢ;->sJ:J

    iget v4, p0, Lo/ᘢ;->ww:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lo/ᒳ;->ˊ(JIII[B)V

    .line 99
    iget-wide v0, p0, Lo/ᘢ;->sJ:J

    iget-wide v2, p0, Lo/ᘢ;->wQ:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᘢ;->sJ:J

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lo/ᘢ;->wO:I

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lo/ᘢ;->state:I

    .line 103
    :cond_2
    :goto_2
    goto/16 :goto_0

    .line 106
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ᒮ()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lo/ᘢ;->state:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lo/ᘢ;->wO:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᘢ;->wW:Z

    .line 70
    return-void
.end method

.method public ᴫ()V
    .locals 0

    .line 111
    return-void
.end method
