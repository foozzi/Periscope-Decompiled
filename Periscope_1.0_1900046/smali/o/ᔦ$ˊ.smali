.class final Lo/ᔦ$ˊ;
.super Lo/ᔦ$ʻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᔦ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02ca"
.end annotation


# instance fields
.field private final oJ:J

.field private final oK:J

.field private final oL:Ljava/lang/String;

.field private final oM:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/ﾐ;)V
    .locals 2

    .line 362
    const/4 v0, 0x0

    new-array v0, v0, [Lo/ᔦ$ʻ;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lo/ᔦ$ʻ;-><init>(I[Lo/ᔦ$ʻ;)V

    .line 363
    iget-wide v0, p1, Lo/ﾐ;->qr:J

    iput-wide v0, p0, Lo/ᔦ$ˊ;->oJ:J

    .line 364
    iget-wide v0, p1, Lo/ﾐ;->size:J

    iput-wide v0, p0, Lo/ᔦ$ˊ;->oK:J

    .line 365
    iget-object v0, p1, Lo/ﾐ;->qs:Ljava/lang/String;

    iput-object v0, p0, Lo/ᔦ$ˊ;->oL:Ljava/lang/String;

    .line 366
    iget-object v0, p1, Lo/ﾐ;->id:Ljava/lang/String;

    iput-object v0, p0, Lo/ᔦ$ˊ;->oM:Ljava/lang/String;

    .line 367
    return-void
.end method


# virtual methods
.method public ˊ(Lo/ɤ;)V
    .locals 3

    .line 383
    iget-wide v0, p0, Lo/ᔦ$ˊ;->oJ:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lo/ɤ;->ˊ(IJ)V

    .line 384
    iget-wide v0, p0, Lo/ᔦ$ˊ;->oK:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lo/ɤ;->ˊ(IJ)V

    .line 385
    iget-object v0, p0, Lo/ᔦ$ˊ;->oL:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 386
    iget-object v0, p0, Lo/ᔦ$ˊ;->oM:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 387
    return-void
.end method

.method public ᓻ()I
    .locals 7

    .line 371
    iget-wide v0, p0, Lo/ᔦ$ˊ;->oJ:J

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lo/ɤ;->ˋ(IJ)I

    move-result v3

    .line 372
    iget-wide v0, p0, Lo/ᔦ$ˊ;->oK:J

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lo/ɤ;->ˋ(IJ)I

    move-result v4

    .line 373
    iget-object v0, p0, Lo/ᔦ$ˊ;->oL:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v5

    .line 375
    iget-object v0, p0, Lo/ᔦ$ˊ;->oM:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v6

    .line 378
    add-int v0, v5, v3

    add-int/2addr v0, v4

    add-int/2addr v0, v6

    return v0
.end method
