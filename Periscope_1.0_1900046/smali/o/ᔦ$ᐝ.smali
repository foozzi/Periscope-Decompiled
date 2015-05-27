.class final Lo/ᔦ$ᐝ;
.super Lo/ᔦ$ʻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᔦ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u141d"
.end annotation


# instance fields
.field private final importance:I

.field private final oO:J

.field private final oP:Ljava/lang/String;

.field private final oQ:Ljava/lang/String;

.field private final oR:J


# direct methods
.method public constructor <init>(Lo/Ÿ$if;)V
    .locals 2

    .line 287
    const/4 v0, 0x0

    new-array v0, v0, [Lo/ᔦ$ʻ;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lo/ᔦ$ʻ;-><init>(I[Lo/ᔦ$ʻ;)V

    .line 288
    iget-wide v0, p1, Lo/Ÿ$if;->oO:J

    iput-wide v0, p0, Lo/ᔦ$ᐝ;->oO:J

    .line 289
    iget-object v0, p1, Lo/Ÿ$if;->oP:Ljava/lang/String;

    iput-object v0, p0, Lo/ᔦ$ᐝ;->oP:Ljava/lang/String;

    .line 290
    iget-object v0, p1, Lo/Ÿ$if;->oQ:Ljava/lang/String;

    iput-object v0, p0, Lo/ᔦ$ᐝ;->oQ:Ljava/lang/String;

    .line 291
    iget-wide v0, p1, Lo/Ÿ$if;->oR:J

    iput-wide v0, p0, Lo/ᔦ$ᐝ;->oR:J

    .line 292
    iget v0, p1, Lo/Ÿ$if;->importance:I

    iput v0, p0, Lo/ᔦ$ᐝ;->importance:I

    .line 293
    return-void
.end method


# virtual methods
.method public ˊ(Lo/ɤ;)V
    .locals 3

    .line 307
    iget-wide v0, p0, Lo/ᔦ$ᐝ;->oO:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lo/ɤ;->ˊ(IJ)V

    .line 308
    iget-object v0, p0, Lo/ᔦ$ᐝ;->oP:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 309
    iget-object v0, p0, Lo/ᔦ$ᐝ;->oQ:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 310
    iget-wide v0, p0, Lo/ᔦ$ᐝ;->oR:J

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lo/ɤ;->ˊ(IJ)V

    .line 311
    iget v0, p0, Lo/ᔦ$ᐝ;->importance:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ᵗ(II)V

    .line 312
    return-void
.end method

.method public ᓻ()I
    .locals 4

    .line 297
    iget-wide v0, p0, Lo/ᔦ$ᐝ;->oO:J

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lo/ɤ;->ˋ(IJ)I

    move-result v3

    .line 298
    iget-object v0, p0, Lo/ᔦ$ᐝ;->oP:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v3, v0

    .line 299
    iget-object v0, p0, Lo/ᔦ$ᐝ;->oQ:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v3, v0

    .line 300
    iget-wide v0, p0, Lo/ᔦ$ᐝ;->oR:J

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 301
    iget v0, p0, Lo/ᔦ$ᐝ;->importance:I

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lo/ɤ;->ʲ(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 302
    return v3
.end method
