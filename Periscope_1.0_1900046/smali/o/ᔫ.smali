.class final Lo/ᔫ;
.super Lo/ᚁ;
.source ""


# instance fields
.field private sJ:J

.field private state:I

.field private tH:I

.field private final wM:Lo/ন;

.field private final wN:Lo/প;

.field private wO:I

.field private wP:Z

.field private wQ:J

.field private wk:Lo/ب;

.field private ww:I


# direct methods
.method public constructor <init>(Lo/ᒳ;)V
    .locals 2

    .line 55
    invoke-direct {p0, p1}, Lo/ᚁ;-><init>(Lo/ᒳ;)V

    .line 56
    new-instance v0, Lo/ন;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lo/ন;-><init>([B)V

    iput-object v0, p0, Lo/ᔫ;->wM:Lo/ন;

    .line 57
    new-instance v0, Lo/প;

    iget-object v1, p0, Lo/ᔫ;->wM:Lo/ন;

    iget-object v1, v1, Lo/ন;->fw:[B

    invoke-direct {v0, v1}, Lo/প;-><init>([B)V

    iput-object v0, p0, Lo/ᔫ;->wN:Lo/প;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lo/ᔫ;->state:I

    .line 59
    return-void
.end method

.method private ˊ(Lo/প;[BI)Z
    .locals 3

    .line 120
    invoke-virtual {p1}, Lo/প;->ϋ()I

    move-result v0

    iget v1, p0, Lo/ᔫ;->wO:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 121
    iget v0, p0, Lo/ᔫ;->wO:I

    invoke-virtual {p1, p2, v0, v2}, Lo/প;->ι([BII)V

    .line 122
    iget v0, p0, Lo/ᔫ;->wO:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/ᔫ;->wO:I

    .line 123
    iget v0, p0, Lo/ᔫ;->wO:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ᐝ(Lo/প;)Z
    .locals 3

    .line 134
    :goto_0
    invoke-virtual {p1}, Lo/প;->ϋ()I

    move-result v0

    if-lez v0, :cond_4

    .line 135
    iget-boolean v0, p0, Lo/ᔫ;->wP:Z

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p1}, Lo/প;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lo/ᔫ;->wP:Z

    .line 137
    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p1}, Lo/প;->readUnsignedByte()I

    move-result v2

    .line 140
    const/16 v0, 0x77

    if-ne v2, v0, :cond_2

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᔫ;->wP:Z

    .line 142
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_2
    const/16 v0, 0xb

    if-ne v2, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lo/ᔫ;->wP:Z

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private Ḻ()V
    .locals 4

    .line 154
    iget-object v0, p0, Lo/ᔫ;->wM:Lo/ন;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ন;->setPosition(I)V

    .line 155
    iget-object v0, p0, Lo/ᔫ;->wM:Lo/ন;

    invoke-static {v0}, Lo/ٻ;->ˋ(Lo/ন;)I

    move-result v0

    iput v0, p0, Lo/ᔫ;->ww:I

    .line 156
    iget-object v0, p0, Lo/ᔫ;->wk:Lo/ب;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lo/ᔫ;->wM:Lo/ন;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ন;->setPosition(I)V

    .line 158
    iget-object v0, p0, Lo/ᔫ;->wM:Lo/ন;

    invoke-static {v0}, Lo/ٻ;->ˊ(Lo/ন;)Lo/ب;

    move-result-object v0

    iput-object v0, p0, Lo/ᔫ;->wk:Lo/ب;

    .line 159
    iget-object v0, p0, Lo/ᔫ;->wZ:Lo/ᒳ;

    iget-object v1, p0, Lo/ᔫ;->wk:Lo/ب;

    invoke-interface {v0, v1}, Lo/ᒳ;->ˊ(Lo/ب;)V

    .line 160
    iget v0, p0, Lo/ᔫ;->ww:I

    iget-object v1, p0, Lo/ᔫ;->wk:Lo/ب;

    iget v1, v1, Lo/ب;->sF:I

    invoke-static {v0, v1}, Lo/ٻ;->เ(II)I

    move-result v0

    iput v0, p0, Lo/ᔫ;->tH:I

    .line 162
    :cond_0
    iget v0, p0, Lo/ᔫ;->ww:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1f40

    mul-long/2addr v0, v2

    iget v2, p0, Lo/ᔫ;->tH:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lo/ᔫ;->wQ:J

    .line 163
    return-void
.end method


# virtual methods
.method public ˊ(Lo/প;JZ)V
    .locals 8

    .line 70
    if-eqz p4, :cond_0

    .line 71
    iput-wide p2, p0, Lo/ᔫ;->sJ:J

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lo/প;->ϋ()I

    move-result v0

    if-lez v0, :cond_2

    .line 74
    iget v0, p0, Lo/ᔫ;->state:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 76
    :pswitch_0
    invoke-direct {p0, p1}, Lo/ᔫ;->ᐝ(Lo/প;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lo/ᔫ;->state:I

    .line 78
    iget-object v0, p0, Lo/ᔫ;->wN:Lo/প;

    iget-object v0, v0, Lo/প;->fw:[B

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 79
    iget-object v0, p0, Lo/ᔫ;->wN:Lo/প;

    iget-object v0, v0, Lo/প;->fw:[B

    const/16 v1, 0x77

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lo/ᔫ;->wO:I

    goto/16 :goto_1

    .line 84
    :pswitch_1
    iget-object v0, p0, Lo/ᔫ;->wN:Lo/প;

    iget-object v0, v0, Lo/প;->fw:[B

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lo/ᔫ;->ˊ(Lo/প;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-direct {p0}, Lo/ᔫ;->Ḻ()V

    .line 86
    iget-object v0, p0, Lo/ᔫ;->wN:Lo/প;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/প;->setPosition(I)V

    .line 87
    iget-object v0, p0, Lo/ᔫ;->wZ:Lo/ᒳ;

    iget-object v1, p0, Lo/ᔫ;->wN:Lo/প;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Lo/ᒳ;->ˊ(Lo/প;I)V

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lo/ᔫ;->state:I

    goto :goto_1

    .line 92
    :pswitch_2
    invoke-virtual {p1}, Lo/প;->ϋ()I

    move-result v0

    iget v1, p0, Lo/ᔫ;->ww:I

    iget v2, p0, Lo/ᔫ;->wO:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 93
    iget-object v0, p0, Lo/ᔫ;->wZ:Lo/ᒳ;

    invoke-interface {v0, p1, v7}, Lo/ᒳ;->ˊ(Lo/প;I)V

    .line 94
    iget v0, p0, Lo/ᔫ;->wO:I

    add-int/2addr v0, v7

    iput v0, p0, Lo/ᔫ;->wO:I

    .line 95
    iget v0, p0, Lo/ᔫ;->wO:I

    iget v1, p0, Lo/ᔫ;->ww:I

    if-ne v0, v1, :cond_1

    .line 96
    iget-object v0, p0, Lo/ᔫ;->wZ:Lo/ᒳ;

    iget-wide v1, p0, Lo/ᔫ;->sJ:J

    iget v4, p0, Lo/ᔫ;->ww:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lo/ᒳ;->ˊ(JIII[B)V

    .line 97
    iget-wide v0, p0, Lo/ᔫ;->sJ:J

    iget-wide v2, p0, Lo/ᔫ;->wQ:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᔫ;->sJ:J

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lo/ᔫ;->state:I

    .line 100
    :cond_1
    :goto_1
    goto/16 :goto_0

    .line 103
    :cond_2
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

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lo/ᔫ;->state:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lo/ᔫ;->wO:I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᔫ;->wP:Z

    .line 66
    return-void
.end method

.method public ᴫ()V
    .locals 0

    .line 108
    return-void
.end method
