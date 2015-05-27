.class public Lo/ᒌ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᒳ;


# instance fields
.field private volatile ry:Lo/ب;

.field private final tV:Lo/ᒯ;

.field private final tW:Lo/ڋ;

.field private tX:Z

.field private tY:J

.field private tZ:J

.field private volatile ua:J


# direct methods
.method public constructor <init>(Lo/ʎ;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lo/ᒯ;

    invoke-direct {v0, p1}, Lo/ᒯ;-><init>(Lo/ʎ;)V

    iput-object v0, p0, Lo/ᒌ;->tV:Lo/ᒯ;

    .line 49
    new-instance v0, Lo/ڋ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ڋ;-><init>(I)V

    iput-object v0, p0, Lo/ᒌ;->tW:Lo/ڋ;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒌ;->tX:Z

    .line 51
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/ᒌ;->tY:J

    .line 52
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/ᒌ;->tZ:J

    .line 53
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/ᒌ;->ua:J

    .line 54
    return-void
.end method

.method private ᒭ()Z
    .locals 5

    .line 210
    iget-object v0, p0, Lo/ᒌ;->tV:Lo/ᒯ;

    iget-object v1, p0, Lo/ᒌ;->tW:Lo/ڋ;

    invoke-virtual {v0, v1}, Lo/ᒯ;->ˋ(Lo/ڋ;)Z

    move-result v4

    .line 211
    iget-boolean v0, p0, Lo/ᒌ;->tX:Z

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    if-eqz v4, :cond_0

    iget-object v0, p0, Lo/ᒌ;->tW:Lo/ڋ;

    invoke-virtual {v0}, Lo/ڋ;->צ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lo/ᒌ;->tV:Lo/ᒯ;

    invoke-virtual {v0}, Lo/ᒯ;->ᔫ()V

    .line 214
    iget-object v0, p0, Lo/ᒌ;->tV:Lo/ᒯ;

    iget-object v1, p0, Lo/ᒌ;->tW:Lo/ڋ;

    invoke-virtual {v0, v1}, Lo/ᒯ;->ˋ(Lo/ڋ;)Z

    move-result v4

    goto :goto_0

    .line 217
    :cond_0
    if-nez v4, :cond_1

    .line 218
    const/4 v0, 0x0

    return v0

    .line 220
    :cond_1
    iget-wide v0, p0, Lo/ᒌ;->tZ:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ᒌ;->tW:Lo/ڋ;

    iget-wide v0, v0, Lo/ڋ;->sJ:J

    iget-wide v2, p0, Lo/ᒌ;->tZ:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 62
    iget-object v0, p0, Lo/ᒌ;->tV:Lo/ᒯ;

    invoke-virtual {v0}, Lo/ᒯ;->clear()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒌ;->tX:Z

    .line 64
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/ᒌ;->tY:J

    .line 65
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/ᒌ;->tZ:J

    .line 66
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/ᒌ;->ua:J

    .line 67
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 122
    invoke-direct {p0}, Lo/ᒌ;->ᒭ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˊ(Lo/ᒑ;I)I
    .locals 1

    .line 241
    iget-object v0, p0, Lo/ᒌ;->tV:Lo/ᒯ;

    invoke-virtual {v0, p1, p2}, Lo/ᒯ;->ˋ(Lo/ᒑ;I)I

    move-result v0

    return v0
.end method

.method public ˊ(JIII[B)V
    .locals 8

    .line 251
    iget-wide v0, p0, Lo/ᒌ;->ua:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lo/ᒌ;->ua:J

    .line 252
    iget-object v0, p0, Lo/ᒌ;->tV:Lo/ᒯ;

    move-wide v1, p1

    move v3, p3

    iget-object v4, p0, Lo/ᒌ;->tV:Lo/ᒯ;

    invoke-virtual {v4}, Lo/ᒯ;->ᘂ()J

    move-result-wide v4

    int-to-long v6, p4

    sub-long/2addr v4, v6

    int-to-long v6, p5

    sub-long/2addr v4, v6

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lo/ᒯ;->ˊ(JIJI[B)V

    .line 254
    return-void
.end method

.method public ˊ(Lo/ب;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lo/ᒌ;->ry:Lo/ب;

    .line 237
    return-void
.end method

.method public ˊ(Lo/প;I)V
    .locals 1

    .line 246
    iget-object v0, p0, Lo/ᒌ;->tV:Lo/ᒯ;

    invoke-virtual {v0, p1, p2}, Lo/ᒯ;->ˎ(Lo/প;I)V

    .line 247
    return-void
.end method

.method public ˊ(Lo/ڋ;)Z
    .locals 3

    .line 135
    invoke-direct {p0}, Lo/ᒌ;->ᒭ()Z

    move-result v2

    .line 136
    if-nez v2, :cond_0

    .line 137
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_0
    iget-object v0, p0, Lo/ᒌ;->tV:Lo/ᒯ;

    invoke-virtual {v0, p1}, Lo/ᒯ;->ˎ(Lo/ڋ;)Z

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᒌ;->tX:Z

    .line 142
    iget-wide v0, p1, Lo/ڋ;->sJ:J

    iput-wide v0, p0, Lo/ᒌ;->tY:J

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public ˊ(Lo/ᒌ;)Z
    .locals 7

    .line 177
    iget-wide v0, p0, Lo/ᒌ;->tZ:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Lo/ᒌ;->tV:Lo/ᒯ;

    iget-object v1, p0, Lo/ᒌ;->tW:Lo/ڋ;

    invoke-virtual {v0, v1}, Lo/ᒯ;->ˋ(Lo/ڋ;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lo/ᒌ;->tW:Lo/ڋ;

    iget-wide v4, v0, Lo/ڋ;->sJ:J

    goto :goto_0

    .line 185
    :cond_1
    iget-wide v0, p0, Lo/ᒌ;->tY:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 187
    :goto_0
    iget-object v6, p1, Lo/ᒌ;->tV:Lo/ᒯ;

    .line 189
    :goto_1
    iget-object v0, p0, Lo/ᒌ;->tW:Lo/ڋ;

    invoke-virtual {v6, v0}, Lo/ᒯ;->ˋ(Lo/ڋ;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/ᒌ;->tW:Lo/ڋ;

    iget-wide v0, v0, Lo/ڋ;->sJ:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    iget-object v0, p0, Lo/ᒌ;->tW:Lo/ڋ;

    invoke-virtual {v0}, Lo/ڋ;->צ()Z

    move-result v0

    if-nez v0, :cond_3

    .line 192
    :cond_2
    invoke-virtual {v6}, Lo/ᒯ;->ᔫ()V

    goto :goto_1

    .line 194
    :cond_3
    iget-object v0, p0, Lo/ᒌ;->tW:Lo/ڋ;

    invoke-virtual {v6, v0}, Lo/ᒯ;->ˋ(Lo/ڋ;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lo/ᒌ;->tW:Lo/ڋ;

    iget-wide v0, v0, Lo/ڋ;->sJ:J

    iput-wide v0, p0, Lo/ᒌ;->tZ:J

    .line 198
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public ٴ(J)V
    .locals 2

    .line 152
    :goto_0
    iget-object v0, p0, Lo/ᒌ;->tV:Lo/ᒯ;

    iget-object v1, p0, Lo/ᒌ;->tW:Lo/ڋ;

    invoke-virtual {v0, v1}, Lo/ᒯ;->ˋ(Lo/ڋ;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᒌ;->tW:Lo/ڋ;

    iget-wide v0, v0, Lo/ڋ;->sJ:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 153
    iget-object v0, p0, Lo/ᒌ;->tV:Lo/ᒯ;

    invoke-virtual {v0}, Lo/ᒯ;->ᔫ()V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒌ;->tX:Z

    goto :goto_0

    .line 157
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/ᒌ;->tY:J

    .line 158
    return-void
.end method

.method public ᒎ()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lo/ᒌ;->ry:Lo/ب;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ᒑ()Lo/ب;
    .locals 1

    .line 107
    iget-object v0, p0, Lo/ᒌ;->ry:Lo/ب;

    return-object v0
.end method

.method public ᒬ()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lo/ᒌ;->ua:J

    return-wide v0
.end method

.method public ᴵ(J)Z
    .locals 1

    .line 167
    iget-object v0, p0, Lo/ᒌ;->tV:Lo/ᒯ;

    invoke-virtual {v0, p1, p2}, Lo/ᒯ;->ᴵ(J)Z

    move-result v0

    return v0
.end method
